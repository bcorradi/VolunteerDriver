-- =============================================
-- Author:		Mikkail Montgomery
-- Create date: 10/29/2014
-- Description:	Create a duplicate trip and rides from a tripID
-- =============================================
CREATE PROCEDURE [dbo].[CreateDupTripAndRide](@orgtripid int,@NewDate datetime,@NewAuthID varchar(20),@NewRepID varchar(20),@NewDateReqRec datetime)--, @newtripid int OUTPUT)
as
--Declare Varibles to capture new trip id.
Declare @idtable table(ID int)
Declare @tripididentity int
declare @driverrateid int, @driverrate money, @reimburserate money, @reimburserateid int

--update driver rates to current rates
 select @driverrateid = RateID, @driverrate = RateAmount 
 from tblRate
 where RateType = 'Driver Reimburse'
 and Active = 1
 
--update insurance rates to current rates
select @reimburserateid = RateID, @reimburserate = RateAmount 
from tblRate
where InsuranceProviderID = (select max(insuranceid) from tblRide where TripID = @orgtripid)
and Active = 1

 

--create the new trip store the new id in a table varible
insert into tbltrip (TripNotes,DriverRateID,DriverRate,TripTypeId,AllowMeals,AllowUnloadedMiles,DateReqRec
--,DateReceived removed 1-16-2015 not a proper field to update
-- added allowmeals and allow unloaded miles  on 3/13/15 av
,TripIdOrgDup, BillingCounty
,ElderlyWaiver
,Overnight
,SeniorFitness
,MARide
,Waver
,ChildFamNoWaver
,AdultServiceNoWaiver
,PublicHealthNoWaver
,ACClientMedical
,OnGoing
,NewForRides 
,RoundTrip
,OneWay
,Worker)
output inserted.TripID into @idtable
SELECT   ''--  TripNotes
, @driverrateid
, @driverrate
,case when TripTypeId = 7 then 2 else TripTypeID end as TripTypeId --reset to the default type since split trip etc were being duplicated
, AllowMeals
, AllowUnloadedMiles
--,GETDATE() removed 1-16-2015 not a proper field to update
, @NewDateReqRec
,@orgtripid
, BillingCounty
,ElderlyWaiver
,Overnight
,SeniorFitness
,MARide
,Waver
,ChildFamNoWaver
,AdultServiceNoWaiver
,PublicHealthNoWaver
,ACClientMedical
,OnGoing
,NewForRides 
,RoundTrip
,OneWay
,Worker
from tblTrip
where TripID = @orgtripid

--Because TripID is the primary key it will be unique.  Since it is unique only one value will be 
--stored in our temp table.  Assign the one value to a variable.
select @tripididentity = ID from @idtable

----------------------------------------------------------------------------------------
--Set audit trail of duplicate for Trip Log View
declare @username varchar(50), @OrgAuthID varchar(20), @OrgRepID varchar(20), @OrgRideDate datetime, @OrgDateReqRec datetime

select @username = SUSER_NAME()

select @OrgDateReqRec = DateReqRec 
from tblTrip 
where TripID = @orgTripID

select top 1 @OrgAuthID = AuthCode, @OrgRepID = RepID, @OrgRideDate = RideDate 
from tblRide 
where TripID = @orgtripid

--added a second on timestamp for order by in log
insert into tblAuditTrail ([DateTime],UserName,FormName,RecordID,FieldName,OldValue,NewValue)
values(GETDATE(), @username, 'frmRideEntry', @tripididentity, 'Duplicated', @orgTripID, @tripididentity)

insert into tblAuditTrail ([DateTime],UserName,FormName,RecordID,FieldName,OldValue,NewValue)
values(DATEADD(s,1,getdate()), @username, 'frmRideEntry', @tripididentity, '[DateReqRec]', @OrgDateReqRec, @NewDateReqRec)

insert into tblAuditTrail ([DateTime],UserName,FormName,RecordID,FieldName,OldValue,NewValue)
values(DATEADD(s,2,getdate()), @username, 'frmRideEntry', @tripididentity, '[RideDate]', @OrgRideDate, @NewDate)

insert into tblAuditTrail ([DateTime],UserName,FormName,RecordID,FieldName,OldValue,NewValue)
values(DATEADD(s,3,getdate()), @username, 'frmRideEntry', @tripididentity, '[Authorization Number]', @OrgAuthID, @NewAuthID)

insert into tblAuditTrail ([DateTime],UserName,FormName,RecordID,FieldName,OldValue,NewValue)
values(DATEADD(s,4,getdate()), @username, 'frmRideEntry', @tripididentity, '[RepID]', @OrgRepID, @NewRepID)
----------------------------------------------------------------------------------------


--insert each ride(trip leg) from the referenced trip as new rides and relate them to the new trip.
--av 3/13/15 took out trip purpose, repid  and MNDot allow. Added RequireAuthCode
--added seqno and clientInsuranceID 4/1/15

insert into tblRide(
ClientID, 
RPickUpAddress, 
RPickupCity, 
RPickupZip, 
County, 
--TripPurposeID
RideDate, 
RDropoffAddress, 
RDropoffCity, 
RDropoffZip, 
RDropoffCounty, 
--LoadedMiles, 
--MNDOTAllow
AuthCode, 
RepID, 
PickupFee, 
NoShowFee, 
TripID, 
InsuranceID, 
Rate, 
RideNotes, 
SchedulePickupTime, 
ScheduleApptTime, 
ReimburseRate, 
ReimburseRateID,
RequireIDandAuth, 
MemberID, 
RequireAuthCode, 
SeqNo,
ClientInsuranceID, 
FacilityName, 
RPickupZip4, 
RDropOffZip4,
rDropOffState,
rPickupState,
PUAddressID,
DOAddressID,
PUAddressTypeID, 
DOAddressTypeID)
select ClientID, RPickUpAddress, RPickupCity, RPickupZip, County, --TripPurposeID
 @NewDate, RDropoffAddress, 
RDropoffCity, RDropoffZip, RDropoffCounty, --LoadedMiles, --MNDOTAllow
@NewAuthID, @NewRepID, --RepID, 
PickupFee, NoShowFee, @tripididentity, InsuranceID, Rate, RideNotes, 
SchedulePickupTime, 
ScheduleApptTime, @reimburserate, @reimburserateid,RequireIDandAuth, MemberID, RequireAuthCode, SeqNo,ClientInsuranceID, FacilityName, RPickupZip4, RDropOffZip4, 
rDropOffState, rPickupState, PUAddressID,DOAddressID, PUAddressTypeID, DOAddressTypeID
from tblride 
where tripid = @orgtripid

--assign the new tripid to the return value.
--select @newtripid = @tripididentity

--also return a recordset
--select @newtripid
select @tripididentity as 'NewTripID'

--end of stored proc
return
