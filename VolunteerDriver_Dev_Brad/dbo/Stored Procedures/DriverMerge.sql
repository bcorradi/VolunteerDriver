create procedure DriverMerge (@DriverOldID int, @DriverNewID int)
as

set nocount on


Insert into tblMergeDriverAudit
(DriverOldID, DriverNewID, IDAltered, TableIDName, AlteredTable)
select @DriverOldID, @DriverNewID, RideID, 'RideID', 'tblRide'
from tblRide
where DriverID = @DriverOldID

update tblRide
set DriverID = @DriverNewID
where DriverID = @DriverOldID

Insert into tblMergeDriverAudit
(DriverOldID, DriverNewID, IDAltered, TableIDName, AlteredTable)
select @DriverOldID, @DriverNewID, TripID, 'TripID', 'tblTrip'
from tblTrip
where DriverID = @DriverOldID

update tblTrip
set DriverID = @DriverNewID
where DriverID = @DriverOldID

Insert into tblMergeDriverAudit
(DriverOldID, DriverNewID, IDAltered, TableIDName, AlteredTable)
select @DriverOldID, @DriverNewID, VehicleID, 'VehicleID', 'tblVehicle'
from tblVehicle
where DriverID = @DriverOldID

update tblVehicle
set DriverID = @DriverNewID
where DriverID = @DriverOldID

Insert into tblMergeDriverAudit
(DriverOldID, DriverNewID, IDAltered, TableIDName, AlteredTable)
select @DriverOldID, @DriverNewID, DriverTrainingID, 'DriverTrainingID', 'tblDriverTrainingLink'
from tblDriverTrainingLink
where DriverID = @DriverOldID

update tblDriverTrainingLink
set DriverID = @DriverNewID
where DriverID = @DriverOldID

Insert into tblMergeDriverAudit
(DriverOldID, DriverNewID, IDAltered, TableIDName, AlteredTable)
select @DriverOldID, @DriverNewID, ClientDriverID, 'ClientDriverID', 'tblClientDriverDistance'
from tblClientDriverDistance
where DriverID = @DriverOldID

update tblClientDriverDistance
set DriverID = @DriverNewID
where DriverID = @DriverOldID


Insert into tblMergeDriverAudit
(DriverOldID, DriverNewID, IDAltered, TableIDName, AlteredTable)
select @DriverOldID, @DriverNewID, DriverAddressID, 'DriverAddressID', 'tblDriverAddress'
from tblDriverAddress
where DriverID = @DriverOldID

update tblDriverAddress
set DriverID = @DriverNewID
where DriverID = @DriverOldID

Insert into tblMergeDriverAudit
(DriverOldID, DriverNewID, IDAltered, TableIDName, AlteredTable)
select @DriverOldID, @DriverNewID, TripID, 'TripID', 'tblArchiveTrip'
from tblArchiveTrip
where DriverID = @DriverOldID

update tblArchiveTrip
set DriverID = @DriverNewID
where DriverID = @DriverOldID


INSERT INTO [Volunteer_DriversSQL].[dbo].[tblMergeDriver]
           ([DriverID]
           ,[Active]
           ,[EntryDate]
           ,[DrFirstName]
           ,[DrLastName]
           ,[DrDOB]
           ,[DrStreetAddress]
           ,[DrMailAddress]
           ,[DrCity]
           ,[DrState]
           ,[DrZip]
           ,[DrPhone1]
           ,[DrPhoneAlt]
           ,[DrInsuranceProvider]
           ,[DrInsurancePolicyNO]
           ,[DrInsPolicyExp]
           ,[DrLicenseNo]
           ,[FMPDriverID]
           ,[DrNotes]
           ,[LNFN]
           ,[Email]
           ,[DrMI]
           ,[RRMed]
           ,[DrLicenseExpires]
           ,[MDRCheck]
           ,[BackgroundCheck]
           ,[DirectDeposit]
           ,[Vehicle]
           ,[Plate]
           ,[VIN]
           ,[HandicappedNumber]
           ,[HandicapExp]
           ,[HandicapIssued]
           ,[UserCreate]
           ,[UserUpdated]
           ,[DateUpdated]
           ,[BuddyList]
           ,[CountyID]
           ,[DuluthOnly]
           ,[BuddyAdvocate]
           ,[LicenseExpires]
           ,[DrMDRCheck]
           ,[BGCheck]
           ,[EmergencyContactName]
           ,[EmergencyContactPhone]
           ,[TrainingDate]
           ,[Deleted])

select      [DriverID]
           ,[Active]
           ,[EntryDate]
           ,[DrFirstName]
           ,[DrLastName]
           ,[DrDOB]
           ,[DrStreetAddress]
           ,[DrMailAddress]
           ,[DrCity]
           ,[DrState]
           ,[DrZip]
           ,[DrPhone1]
           ,[DrPhoneAlt]
           ,[DrInsuranceProvider]
           ,[DrInsurancePolicyNO]
           ,[DrInsPolicyExp]
           ,[DrLicenseNo]
           ,[FMPDriverID]
           ,[DrNotes]
           ,[LNFN]
           ,[Email]
           ,[DrMI]
           ,[RRMed]
           ,[DrLicenseExpires]
           ,[MDRCheck]
           ,[BackgroundCheck]
           ,[DirectDeposit]
           ,[Vehicle]
           ,[Plate]
           ,[VIN]
           ,[HandicappedNumber]
           ,[HandicapExp]
           ,[HandicapIssued]
           ,[UserCreate]
           ,[UserUpdated]
           ,[DateUpdated]
           ,[BuddyList]
           ,[CountyID]
           ,[DuluthOnly]
           ,[BuddyAdvocate]
           ,[LicenseExpires]
           ,[DrMDRCheck]
           ,[BGCheck]
           ,[EmergencyContactName]
           ,[EmergencyContactPhone]
           ,[TrainingDate]
           ,[Deleted]
from tblDriver
where DriverID = @DriverOldID

delete from tblDriver
where DriverID = @DriverOldID
