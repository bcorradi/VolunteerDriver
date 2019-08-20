

CREATE procedure [dbo].[InsuranceBillingPending] (@startdate datetime, @enddate datetime, @MIPOnly bit = 0)
as

set nocount on

--declare @startdate datetime, @enddate datetime
        
--set @startdate = '2016-8-01'
--set @enddate = '2016-10-31'


declare @username varchar(50), @records int

select @username = SUSER_NAME()

Set @EndDate = @EndDate + cast('23:59:59.997' as time)

delete from tblInsuranceBillingRptPending
where username = @username

set @records = 0


create table #insuranceRules
(Insurance varchar(50),
 insuranceid int,
 NoNoShowTrue int)
insert into #insuranceRules
(Insurance,insuranceid,NoNoShowTrue)
select Insurance,InsuranceID,ISNULL([7],0) as NoNoShowTrue
from (
SELECT Insurance,isnull(r.RuleID,0) as RuleID, tblInsurance.InsuranceID,1 as truth
FROM (tblInsuranceRules IR INNER JOIN tblInsurance 
ON IR.InsuranceProviderID = tblInsurance.InsuranceID) 
INNER JOIN ltblRules r
ON IR.RuleID = r.RuleID
WHERE (((IR.Active)=1) AND 
((IR.BegDate)<=@startdate) AND ((IR.EndDate) Is Null Or (IR.EndDate)>=@enddate) AND 
((r.RuleID)=1 Or (r.RuleID)=2 Or (r.RuleID)=7 or (r.RuleID) = 10)) 
)sourcetable
pivot
(
	max(truth)
	for ruleid in ([1],[2],[7],[10])
)rulemax
where Insuranceid <> 22

--select * from #insuranceRules

create table #Split
(tripid int,
TripdIdOrgSplit int)
insert into #Split (tripid,TripdIdOrgSplit)
select distinct t.tripid,TripdIdOrgSplit 
from tblTrip t
inner join tblRide r
on t.TripID = r.tripID
and t.TripdIdOrgSplit is not null
and RideDate between @StartDate and @EndDate
and r.InsuranceID in (Select InsuranceID from #insuranceRules)
and t.DateReceived is not null
--and Canceled = 0

--select * from #split

--need to check if original tripid is canceled or no show but split is not no show?
--trips that need to be removed from claim list because paperwork hasn't been
--received from all split trips
Create table #PaperworkMissing
(tripid int)
insert into #PaperworkMissing
select distinct tripid from (
select distinct t.tripid,Canceled, case when t.datereceived IS null then 0 else 1 end as paperwork
from tblTrip t
inner join tblRide r
on t.TripID = r.tripID
and t.TripdIdOrgSplit is not null
and RideDate between @StartDate and @EndDate
and r.InsuranceID in (Select InsuranceID from #insuranceRules)
and r.Canceled = 0
inner join tblTrip t2
on t.TripdIdOrgSplit = t2.Tripid 
where (t.DateReceived is null or t2.DateReceived is null)
union all
select distinct t.TripdIdOrgSplit as TripID,r2.Canceled,case when t2.datereceived IS null then 0 else 1 end as paperwork
from tblTrip t
inner join tblRide r
on t.TripID = r.tripID
and t.TripdIdOrgSplit is not null
and RideDate between @StartDate and @EndDate
and r.InsuranceID in (Select InsuranceID from #insuranceRules)
and r.Canceled = 0
inner join tblTrip t2
on t.TripdIdOrgSplit = t2.Tripid
inner join tblRide r2
on t2.TripID = r2.tripid 
where (t.DateReceived is null or t2.DateReceived is null)
)a
where Canceled = 0 and paperwork = 0
--select distinct t.tripid
--from tblTrip t
--inner join tblRide r
--on t.TripID = r.tripID
--and t.TripdIdOrgSplit is not null
--and RideDate between @StartDate and @EndDate
--and r.InsuranceID in (Select InsuranceID from #insuranceRules)
--and r.Canceled = 0
--inner join tblTrip t2
--on t.TripdIdOrgSplit = t2.Tripid 
--where (t.DateReceived is null or t2.DateReceived is null)
--union all
--select distinct t.TripdIdOrgSplit as TripID
--from tblTrip t
--inner join tblRide r
--on t.TripID = r.tripID
--and t.TripdIdOrgSplit is not null
--and RideDate between @StartDate and @EndDate
--and r.InsuranceID in (Select InsuranceID from #insuranceRules)
--and r.Canceled = 0
--inner join tblTrip t2
--on t.TripdIdOrgSplit = t2.Tripid 
--where (t.DateReceived is null or t2.DateReceived is null)

--select 'Split Paperwork Missing'
--select * from #PaperworkMissing

--create table tblInsuranceBillingRptPending
--(
--PendingID int identity(1,1),
--TripID int,
--Driver varchar(255),
--DriverPhone varchar(255),
--DriverPhoneAlt varchar(255),
--RideDate datetime,
--Client varchar(255),
--AuthCode varchar(255),
--Insurance varchar(255),
--ClientID int,
--DriverID int,
--PaperWork varchar(50),
--UserName varchar(255)
--)
If @MIPOnly = 1 
Begin
	insert into tblInsuranceBillingRptPending
	(TripID, Driver, DriverPhone, DriverPhoneAlt,
	RideDate, Client, AuthCode, Insurance,
	ClientID, DriverID, PaperWork,UserName,Note,Email)
	select distinct t.tripid,
	DrLastName + ', ' + DrFirstName as Driver,isnull(DrPhone1,'') DriverPhone,isnull(DrPhoneAlt,'') as DriverPhoneAlt,
	RideDate,
	clln + ', ' + ClFN as Client,r.AuthCode,i.Insurance,
	C.ClientID, D.DriverID,case when t.DateReceived IS not null then 'Split Paperwork Received' else '' end as PaperWork,
	@username,pw.Note,d.email
	from tblRide r
	INNER JOIN tblTrip t
	ON r.TripID = t.TripID
	INNER JOIN tblClient c
	ON r.ClientID = c.ClientID
	inner join tblDriver d
	on r.DriverID = d.DriverID
	inner join #insuranceRules i
	on r.InsuranceID = i.insuranceid
	left join tblPendingWorkbookNotes pw
	on t.TripID = pw.tripid
	where canceled = 0 and
		--((Noshow = case when i.NoNoShowTrue = 1 then 0 else 0 end) or 
		--(Noshow = case when i.NoNoShowTrue = 1 then 0 else 1 end)) and
		(RideDate Between @startdate And @enddate) AND 
		(r.InsuranceID in (Select InsuranceID from #insuranceRules)) and
		--(t.TripID in (Select tripid from #paperworkmissing ))
		(t.DateReceived is null or (t.TripID in (Select tripid from #paperworkmissing ))) 
		--and ClientID = 1322
	order by 2
	set @records = @@ROWCOUNT
End
Else
Begin
	insert into tblInsuranceBillingRptPending
	(TripID, Driver, DriverPhone, DriverPhoneAlt,
	RideDate, Client, AuthCode, Insurance,
	ClientID, DriverID, PaperWork,UserName,Note,Email)
	select distinct t.tripid,
	DrLastName + ', ' + DrFirstName as Driver,isnull(DrPhone1,'') DriverPhone,isnull(DrPhoneAlt,'') as DriverPhoneAlt,
	RideDate,
	clln + ', ' + ClFN as Client,r.AuthCode,i.Insurance,
	C.ClientID, D.DriverID,case when t.DateReceived IS not null then 'Split Paperwork Received' else '' end as PaperWork,
	@username,pw.Note, d.Email
	from tblRide r
	INNER JOIN tblTrip t
	ON r.TripID = t.TripID
	INNER JOIN tblClient c
	ON r.ClientID = c.ClientID
	inner join tblDriver d
	on r.DriverID = d.DriverID
	inner join #insuranceRules i
	on r.InsuranceID = i.insuranceid
	left join tblPendingWorkbookNotes pw
	on t.TripID = pw.tripid
	where canceled = 0 and
		((Noshow = case when i.NoNoShowTrue = 1 then 0 else 0 end) or 
		(Noshow = case when i.NoNoShowTrue = 1 then 0 else 1 end)) and
		(RideDate Between @startdate And @enddate) AND 
		(r.InsuranceID in (Select InsuranceID from #insuranceRules)) and
		--(t.TripID in (Select tripid from #paperworkmissing ))
		(t.DateReceived is null or (t.TripID in (Select tripid from #paperworkmissing ))) and
		(MIPOnly is null or MIPOnly = 0)
		--and ClientID = 1322
	order by 2
	set @records = @@ROWCOUNT
End

drop table #Split
drop table #PaperworkMissing
drop table #insuranceRules

--select InsuranceID,NoShow,Canceled,* from tblride where TripID = 75345
--select InsuranceID,NoShow,Canceled,* from tblride where TripID = 74412

--select * from tblInsuranceBillingRptPending

--create table tblPendingWorkbookNotes
--(
--PendingWorkID int identity(1,1),
--TripID int,
--Note varchar(255)
--)

select @records
return