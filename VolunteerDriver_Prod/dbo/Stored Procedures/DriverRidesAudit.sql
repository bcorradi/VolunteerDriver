CREATE procedure DriverRidesAudit(@startdate datetime,@enddate datetime)
as
set nocount on
--declare @startdate datetime,
--        @enddate datetime
--set @startdate = '2016/03/01'
--set @enddate = '2016/03/31'

select DriverID,
LNFN as DriverName, County, SUM(isnull(TripAmount,0)) as Reimbursement,
isnull(sum(Case when TripCanceled = 0 then 1 else 0 end),0) as CompletedRideCount,
isnull(sum(Case when TripCanceled = 1 then 1 else 0 end),0) as CancelCount,
sum(isnull(TripMilesTotal,0)) as TripMilesTotal,COUNT(distinct Clientid) as DistinctClientCount,
MIN(ridedate) as MinRideDate,MAX(ridedate) as MaxRideDate
from (
select  distinct 
DriverID,TripID,
LNFN,County,
([tripendodometer]-[tripbegodometer]-ISNull([tripdriverpersonalmiles],0))*[DriverRate]+[TripDriverMeals]+[TripDriverMisc] as TripAmount,
TripCanceled,ridedate,(ISNULL(TripEndOdometer,0) - isnull(TripBegOdometer,0)) as TripMilesTotal,clientID
from (
SELECT     dbo.tblDriver.LNFN, dbo.tblTrip.TripDriverMeals, dbo.tblTrip.TripDriverMisc, dbo.tblTrip.TripID, dbo.tblTrip.DriverRate, dbo.tblRide.SeqNo, dbo.tblRide.RStartTime, 
                      dbo.tblRide.RideDate, dbo.ltblCounty.County, dbo.tblDriverAddress.Active, dbo.tblDriverAddress.DrCity, dbo.tblTrip.DateReceived, dbo.tblTrip.TripDriverMilesPayable, 
                      dbo.tblTrip.TripCanceled, dbo.tblTrip.TripBegOdometer, dbo.tblTrip.TripEndOdometer, dbo.tblTrip.TripMilesTotal, dbo.tblTrip.TripDriverPersonalMiles, 
                      dbo.tblDriver.DriverID,tblRide.ClientID
FROM         dbo.tblDriverAddress (NOLOCK) RIGHT OUTER JOIN
                      dbo.ltblCounty (NOLOCK) RIGHT OUTER JOIN
                      dbo.tblRide (NOLOCK) INNER JOIN
                      dbo.tblTrip (NOLOCK) INNER JOIN
                      dbo.tblDriver (NOLOCK) ON dbo.tblTrip.DriverID = dbo.tblDriver.DriverID ON dbo.tblRide.TripID = dbo.tblTrip.TripID 
                      ON dbo.ltblCounty.CountyID = dbo.tblTrip.BillingCounty ON 
                      dbo.tblDriverAddress.DriverAddressID = dbo.tblTrip.DriverAddressID
)a
where RideDate between @startdate and @enddate)a
--where DateReceived between '2016-03-01' and '2016-03-31')a
--where LNFN = 'Moore, Rickey' 
group by County, LNFN,DriverID

order by 5 desc,7 desc

--select  distinct tripid,LNFN,County,
--([tripendodometer]-[tripbegodometer]-ISNull([tripdriverpersonalmiles],0))*[DriverRate]+[TripDriverMeals]+[TripDriverMisc] as TripAmount,
--TripCanceled,ridedate
--from vDriverReimburse1TripInfo
--where ridedate between '2016-03-01' and '2016-03-31'
--and LNFN = 'Preston, John'
--order by 4

--select count (distinct tripid) from (
--select  distinct tripid,LNFN,County,
--([tripendodometer]-[tripbegodometer]-ISNull([tripdriverpersonalmiles],0))*[DriverRate]+[TripDriverMeals]+[TripDriverMisc] as TripAmount,
--TripCanceled,ridedate
--from vDriverReimburse1TripInfo
--where ridedate between '2016-03-01' and '2016-03-31'
--and LNFN = 'Preston, John')a
--