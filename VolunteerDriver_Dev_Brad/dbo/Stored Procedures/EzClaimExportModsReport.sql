
CREATE procedure EzClaimExportModsReport (@insuranceid int, @startdate datetime, @enddate datetime)
as

set nocount on


--declare @insuranceid int, @StartDate datetime, @EndDate datetime

--set @StartDate = '2016-08-01'
--set @EndDate = '2016-08-31'
--set @insuranceid = 5

declare @username varchar(50)

select @username = SUSER_NAME()

delete from tblEzClaimExportMods
where username = @username

set @EndDate = @EndDate + cast('23:59:59.997' as time)

--create table tblEzClaimExportMods
--(
--EzExportID int identity(1,1),
--Client varchar(55),
--RideDate datetime,
--TripID int,
--Insurance varchar(25),
--Mod1 varchar(8),
--Mod2 varchar(8),
--Mod3 varchar(8),
--Mod4 varchar(8),
--Mod5 varchar(8),
--Mod6 varchar(8),
--Mod7 varchar(8),
--Mod8 varchar(8),
--UserName varchar(50)
--)
--alter table tblEzClaimExportMods add ClaimID int
--alter table tblEzClaimExportMods add PatientID int
--alter table tblEzClaimExportMods add ClientID int

insert into tblEzClaimExportMods
(Client, RideDate, TripID, Insurance,
ClaimID, PatientID, ClientID,
Mod1, Mod2, Mod3,
Mod4, Mod5, Mod6, Mod7, Mod8, UserName)
select CLLN + ' ' + CLFN as Client, cast(RideDate as DATE) as RideDate, 
e.Tripid, i.Insurance,
 e.Claimid,  --e.InsuranceID,
l.Patientid as PatientID, l.clientid as ClientID, 
Mod1,Mod2,Mod3,Mod4,Mod5,Mod6,Mod7,Mod8,@username as UserName
from ezclaimtriplink e
inner join ezpatientclientlink2 l
on e.EzLinkID = l.EZLinkid
inner join tblClient c
on l.Clientid = c.ClientID
inner join tblInsurance i
on e.InsuranceID = i.InsuranceID
inner join (
select ClaimID,
isnull([1],'') as Mod1,
isnull([2],'') as Mod2,
isnull([3],'') as Mod3,
isnull([4],'') as Mod4,
isnull([5],'') as Mod5,
isnull([6],'') as Mod6,
isnull([7],'') as Mod7,
isnull([8],'') as Mod8
from (
select ClaimID,Modifier,--BillingItemID,
RANK() over (partition by b.claimid order by BillingItemID,b.modifier) as Rankit
from ezclaim...[Billing Item Table] b
)a
pivot
(
 max(modifier)
 for Rankit in ([1],[2],[3],[4],[5],[6],[7],[8])
)modmax)mods
on e.Claimid = mods.claimid
inner join ( 
select tripid,MAX(ridedate) as ridedate
from tblRide r
where r.Canceled = 0
group by tripid) r
on e.Tripid = r.TripID
where FacilityMatch = 1
and e.Claimid is not null
and ridedate between @StartDate and @EndDate
and e.InsuranceID = @insuranceid--in (2,4,5,29)
order by 1,2,4

