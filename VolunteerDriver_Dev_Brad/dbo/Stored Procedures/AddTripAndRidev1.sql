-- =============================================
-- Author:		Mikkail Montgomery
-- Modified by: 	Angie VanDeHey for new purpose (copied CreateDupTripAndRide)
-- Create date: 3/4/2015
-- Description:	Create a new trip record and related ride
-- =============================================
CREATE PROCEDURE [dbo].[AddTripAndRidev1]--(@newtripid int OUTPUT)
as
--Declare Varible to capture new trip id.
Declare @idtable table(ID int)
Declare @tripididentity int

--create the new trip store the new id in a table varible
insert into tbltrip (DateReqRec,triptypeID,driverRate,driverrateid,TripDriverpersonalMiles,TripDriverMeals,TripDriverMisc,UnloadedReasonID)
output inserted.TripID into @idtable(ID)
--values (GETDATE(),'2', '.54', '41','0','0','0',5)
values (GETDATE(),'2', '.535', '61','0','0','0',5)

--Because TripID is the primary key it will be unique.  Since it is unique only one value will be 
--stored in our temp table.  Assign the one value to a variable.
select @tripididentity = ID from @idtable

--assign the new tripid to the return value.
--select @newtripid = @tripididentity


--insert a single ride(trip leg) from the referenced trip and relate to the new trip.
insert into tblRide(TripID, SeqNo, rPickupState,rDropOffState)
values (@tripididentity, 1,'MN', 'MN')


--select ID from @idtable




--print @tripididentity
