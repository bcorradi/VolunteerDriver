



--execute EZClaimBilling '2016-06-01','2016-06-30',2

CREATE procedure [dbo].STLCMilesRPT
(@startdate datetime, @enddate datetime, @insuranceid int)
as

set nocount on

--declare 
--,@startdate datetime, @enddate datetime, @insuranceid int        
--set @startdate = '2019-1-01'
--set @enddate = '2019-2-25'
--set @insuranceid = 20

create table ##STLCMilesRPT
(
ridedate datetime
,clfn varchar(99)
,clln varchar (99)
,loadedmiles int
,unloadedmiles int
,totalmiles int
)

insert into ##STLCmilesRPT
(
ridedate
,clfn
,clln
,loadedmiles
,unloadedmiles
,totalmiles
)


------------------------------------------------------------------------------------------
SELECT DISTINCT tblRide.RideDate
, tblClient.ClFN
, tblClient.ClLN
, tblRide.loadedmiles
, tblRide.unloadedmiles
, [loadedmiles]+[unloadedmiles] AS totalmiles
FROM (tblRide 
INNER JOIN tblTrip 
ON tblRide.TripID = tblTrip.TripID) 
INNER JOIN tblClient 
ON tblRide.ClientID = tblClient.ClientID
WHERE ((tblRide.RideDate) Between @startdate and @enddate 
AND (tblRide.insuranceid)=@insuranceid)
;