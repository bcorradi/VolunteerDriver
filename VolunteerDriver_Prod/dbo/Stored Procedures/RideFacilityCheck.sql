CREATE procedure RideFacilityCheck (@TripID int)
as

set nocount on

declare @RideFacility varchar(255), @AddressFacility varchar(255), 
        @Match int, @Leg int, @Records int
set @Match = 0
set @RideFacility = '' 
set @AddressFacility = ''
set @Records = 0
set @Leg = 0


select @AddressFacility = a.facilityname,
@RideFacility = r.FacilityName,@Leg = seqno
from tblRide r
inner join tblAddress a
on a.AddressID = r.DOAddressID
and r.FacilityName <> a.FacilityName
where TripID = @TripID
and Canceled = 0
set @records = @@ROWCOUNT

if @Records > 0
Begin
	set @Match = 1
End
Else 
Begin
	set @Match = 0
End

select @AddressFacility, @RideFacility, @Leg, @Match
return