create procedure VolunteerEzClaimAddressUpdate (@PhyRecID int, @AddressID int)
as
set nocount on

Update tblAddress
set EZClaimPhysicianID = @PhyRecID
where AddressID = @AddressID
