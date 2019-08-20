
-- =============================================
-- Author:		Angie VanDeHey
-- Create date: 4/8/2015
-- Description:	Create a new trip record and change tripID from selected rides to the new tripID
-- =============================================
CREATE PROCEDURE [dbo].[SplitTripAndRide](@orgtripid bigint,@NewDriverID int, @oldDriverID int, @NewDriverAddressID int)
as
--Declare Varibles to capture new trip id.
Declare @idtable table(ID bigint)
--declare @OriginalTripID int
Declare @tripididentity bigint --new trip id value
--declare @RideIDidentity int

--create the new trip store the new id in a table varible
insert into tbltrip (TripNotes,DriverRateID,DriverRate,TripTypeId,AllowMeals,AllowUnloadedMiles,TripdIdOrgSplit, DriverID,DateReqRec, TripIdOrgDup, DriverAddressID, 
BillingCounty, MaxReimburse)
output inserted.TripID into @idtable
SELECT     TripNotes
, DriverRateID
, DriverRate
, 7 --TripTypeId
, AllowMeals
, AllowUnloadedMiles
,@orgtripid
,@NewDriverID
,DateReqRec
,TripIdOrgDup
,@NewDriverAddressID
,BillingCounty
,MaxReimburse
from tblTrip
where TripID = @orgtripid

--Because TripID is the primary key it will be unique.  Since it is unique only one value will be 
--stored in our temp table.  Assign the one value to a variable.
select @tripididentity = ID from @idtable

--update existing trip record to identify that trip has been split
update tblTrip
set TripIdNewSplit=@tripididentity, TripTypeId = 7, DriverID= @oldDriverID
--select tripid, 
--from tblTrip
where TripID = @orgtripid 

update tblRide
set TripID=@tripididentity, DriverID=@NewDriverID, SeqNo = rankit
from (
select rideid, RANK() over (partition by tripid order by rideid) as rankit 
from tblRide
where SelectCheck <> 0
and TripID = @orgtripid)a
where TripID = @orgtripid 
and tblRide.RideID = a.RideID
AND SelectCheck <>0

--modify each selected ride(trip leg)record from the referenced trip and relate them to the new trip.
--update tblRide
--set TripID=@tripididentity, DriverID=@NewDriverID
----(TripID, DriverID)
----select @tripididentity, @NewDriverID,
----from tblride 
--where TripID = @orgtripid 
--AND SelectCheck <>0


--reset SelectCheck to false
update tblRide
set SelectCheck=0
where TripID= @orgtripid and SelectCheck<>0 or TripID=@tripididentity and SelectCheck<>0
--assign the new tripid to the return value.
--select @newtripid = @tripididentity

--also return a recordset
--select @newtripid
select @tripididentity as 'NewTripID'

--end of stored proc
return

