

CREATE procedure [dbo].[UpdateAddressInRides] (@AddressID int, @StartDate datetime, @EndDate datetime)
as

set nocount on

Set @EndDate = @EndDate + cast('23:59:59.997' as time)

declare @records int, @Trips int

Update tblRide
set tblRide.RPickUpAddress  = a.Address,
    tblRide.RPickupCity = a.City,
    tblRide.rPickupState = a.State,
    tblRide.RPickupZip = a.Zip,
    tblRide.RPickupZip4 = a.Zip4
from tblAddress a
where tblRide.puaddressid = @AddressID
and tblRide.puaddressid = a.AddressID
and tblRide.RideDate between @StartDate and @EndDate
set @records = @@ROWCOUNT

Update tblRide
set tblRide.RDropOffAddress  = a.Address,
    tblRide.RDropOffCity = a.City,
    tblRide.RDropOffState = a.State,
    tblRide.RDropOffZip = a.Zip,
    tblRide.RDropOffZip4 = a.Zip4
from tblAddress a
where tblRide.doaddressid = @AddressID
and tblRide.doaddressid = a.AddressID
and tblRide.RideDate between @StartDate and @EndDate
set @records = @records + @@ROWCOUNT

select @Trips = count(distinct(TripID))
from tblRide 
where RideDate between @StartDate and @EndDate
and (puaddressid = @AddressID or doaddressid = @AddressID)

select @records,@Trips
return

