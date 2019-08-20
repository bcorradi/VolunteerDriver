
CREATE procedure ClientInsuranceRideUpdate (@ClientInsuranceID int,@StartDate datetime, @EndDate datetime)
as

set nocount on

--declare @ClientInsuranceID int,@StartDate datetime, @EndDate datetime

declare @Trips int, @insuranceID int , @ClientID int

select @insuranceID = InsuranceID, @ClientID = ClientID
from tblClientInsurance
where ClientInsuranceID = @ClientInsuranceID

--set @ClientInsuranceID = 4406
--set @ClientID = 3671
--set @StartDate = '2016-08-01'
--set @EndDate = '2999-12-31'

set @EndDate = @EndDate + cast('23:59:59.997' as time)

--create table tblClientInsuranceChange
--( ClientInsuranceChangeID int identity(1,1),
--TripID int,
--Client varchar(255),
--RideDate datetime,
--Insurance varchar(50),
--OriginalInsurance varchar(50),
--MemberID varchar(30),
--OriginalMemberID varchar(30),
--InsuranceCheck varchar(20),
--MemberIDCheck varchar(20),
--DateMassUpdated datetime)

--check if the insuranceid or memberid has changed and hold for audit on EzClaim Integration
insert into tblClientInsuranceChange
(TripID, Client, RideDate, OriginalInsurance, Insurance,
 OriginalMemberID, MemberID, InsuranceCheck, MemberIDCheck, DateMassUpdated)
select h.tripid,h.Client,h.ridedate as RideDate,h.insurance as OriginalInsurance, i.insurance, h.MemberID as 'OriginalMemberID', ci.MemberID,
isnull(case when ci.insuranceid <> h.insuranceid then 'Insurance Changed' end,'') as InsuranceCheck,
isnull(case when ci.MemberID <> h.MemberID then 'MemberID Changed' end,'') as MemberIDCheck,GETDATE() as DateMassUpdated
from tblClientInsurance ci
inner join EzPatientClientLink2 pc
on ci.ClientInsuranceID = pc.ClientInsuranceid
inner join EzClaimTripLink tl
on pc.EZLinkid = tl.EzLinkID
inner join tblEzClaimHistory h
on tl.Tripid = h.TripID
inner join tblInsurance i
on ci.InsuranceID = i.InsuranceID
where ci.ClientID = @ClientID
and ci.ClientInsuranceID = @ClientInsuranceID
and ( ci.MemberID <> h.MemberID
    or ci.InsuranceID <> h.Insuranceid)
      
  --create table tblClientInsuranceRideUpdateAudit
  --(
  --CLRide_id int identity(1,1),
  --TripID int,
  --ClientInsuranceID int,
  --ClientID int,
  --InsuranceID int,
  --MemberID nchar(30),
  --ReimburseRateID int,
  --ReimburseRate money,
  --RequireAuthCode bit default(0), 
  --RequireIDandAuth bit default(0),
  --UserName varchar(255),
  --DateUpdated datetime
  --)
  
  insert into tblClientInsuranceRideUpdateAudit
  ( TripID, ClientInsuranceID, ClientID, InsuranceID, MemberID,
  ReimburseRateID, ReimburseRate, RequireAuthCode, RequireIDandAuth, UserName, DateUpdated)
  --audit trail for Insurance Updates
  select TripID, ClientInsuranceID, ClientID, InsuranceID, MemberID,
  ReimburseRateID, ReimburseRate, RequireAuthCode, RequireIDandAuth,
  SUSER_NAME() as UserName, GETDATE() as DateUpdated
  from tblride
  where ClientID = @ClientID
  and RideDate between @StartDate and @EndDate
  and InsuranceID = @insuranceID
  
  update tblRide
  set ClientInsuranceID = a.ClientInsuranceID,
      InsuranceID = a.InsuranceID,
      MemberID = a.MemberID,
      ReimburseRateID = a.ReimburseRateID,
      ReimburseRate = a.ReimburseRate,
      RequireAuthCode = a.RequireAuthCode,
      RequireIDandAuth = a.RequireIDandAuth,
      UserUpdated =  a.UserName,
      DateUpdated = a.DateUpdated
  from (
  select distinct CI.ClientInsuranceID,CI.ClientID,CI.InsuranceID,CI.MemberID,--CI.GroupID,
  rt.RateID as ReimburseRateID,Rt.RateAmount as ReimburseRate,SUSER_NAME() as UserName, GETDATE() as DateUpdated,
  ISNULL(IR5.Active,0) as RequireAuthCode,ISNULL(IR4.Active,0) as RequireIDandAuth
  from tblClientInsurance CI
  inner join tblRate rt
  on CI.InsuranceID = rt.InsuranceProviderID
  and rt.Active = 1
  left join tblInsuranceRules IR5
  on CI.InsuranceID = IR5.InsuranceProviderID
  and IR5.Active = 1
  and IR5.RuleID = 5
  left join tblInsuranceRules IR4
  on CI.InsuranceID = IR4.InsuranceProviderID
  and IR4.Active = 1
  and IR4.RuleID = 4
  where CI.ClientInsuranceID = @ClientInsuranceID )a
  where tblRide.RideDate between @StartDate and @EndDate
  and tblRide.ClientID = @ClientID
  and tblRide.ClientID = a.ClientID
  --and tblRide.InsuranceID = @insuranceID
  and tblRide.ClientInsuranceID = @ClientInsuranceID
  
select @Trips = count(distinct(TripID))
from tblRide 
where RideDate between @StartDate and @EndDate
and ClientID = @ClientID
and InsuranceID = @insuranceID

select @Trips
return
  
  --only update rides with same client insurance?
  --list rides that will be updated?

  
 
  