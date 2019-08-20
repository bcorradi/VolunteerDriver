
--exec VolunteerEzClaimPhysicianInsert2 2, '2016-06-01', '2016-06-30'

CREATE procedure [dbo].[VolunteerEzClaimPhysicianInsert2] (@InsuranceID int, @StartDate datetime, @EndDate datetime)
as


set nocount on

----------------------------------------------------------------------------------------------------------------------------------------------------------------
----***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS
----------------------------------------------------------------------------------------------------------------------------------------------------------------

----****Comment out 4 lines of code when not testing  
--declare @InsuranceID int, @StartDate datetime, @EndDate datetime
--set @InsuranceID = 2
--set @StartDate = '2017-03-01'
--set @EndDate = '2017-03-31'

--truncate table tblEzClaimPhysician
declare @username varchar(50)

select @username = SUSER_NAME()

delete from tblEzClaimPhysician
where username = @username


--dbcc checkident('tblEzClaimPhysician', RESEED, 0) with no_infomsgs


set @EndDate = @EndDate + cast('23:59:59.997' as time)

----------------------------------------------------------------------------------------------------------------------------------------------------------------
----***Create a temp table from EZClaim Physician library table to be referenced multiple times and improve performance.
----------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE #EZPhysician
(PhyRecID int, PhyName varchar(50), PhyEntityType varchar(1), PhyLastName varchar(35), PhyAddress1 varchar(55), PhyAddress2 varchar(55), PhyCity varchar(30), 
PhyState varchar(2), PhyZip varchar(15), PhyTelephone varchar(80), PhyType varchar(50), PhysicianDateTimeCreated datetime, PhysicianDateTimeModified datetime, PhyInactive int)

INSERT INTO #EZPhysician
(PhyRecID, PhyName, PhyEntityType, PhyLastName, PhyAddress1, PhyAddress2, PhyCity, PhyState, PhyZip, PhyTelephone, PhyType, PhysicianDateTimeCreated, 
PhysicianDateTimeModified, PhyInactive)

SELECT 
PhyRecID, PhyName, PhyEntityType, PhyLastName, PhyAddress1, PhyAddress2, PhyCity, PhyState, PhyZip, PhyTelephone, PhyType, PhysicianDateTimeCreated, PhysicianDateTimeModified, PhyInactive
FROM ezclaim...[Physician Library Table]
WHERE PhyType='Facility' AND PhyInactive = 0
order by phyrecid

--select * from #EZPhysician




----------------------------------------------------------------------------------------------------------------------------------------------------------------
--update tblAddress when someone deletes a facility from EzClaim
update tblAddress
set EZClaimPhysicianID = null
where EZClaimPhysicianID is not null
and  ezclaimphysicianid not in (select phyrecid from #EZPhysician) -- eztest...[Physician Library Table])

----------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into tblEzClaimPhysician
(
Warning,
ModCheck,
Zip4Check,
InsuranceID,
PhyLastName,
PhyName,
PhyAddress1,
PhyCity,
PhyState,
PhyZip,
PhyType,
--RideID,
AddTypeDesc,
Modifier,
Canceled,
EnteredDate,
--PhyRecID,
PhyEntityType,
----PhyAddress2,
PhysicianDateTimeCreated,
PhysicianDateTimeModified,
PhyInactive,
SelectRecord,
AddressID,
TripID,
UserName
)
----------------------------------------------------------------------------------------------------------------------------------------------------------------

Select 
	case when FacilityAddressType= 1 then 'Verify Correct Address Type. ' else '' end +
    case when FacilityZip Not Like '_____-____' then 'Verify Zip plus 4 is correct.' else '' end as Warning,
    case when FacilityAddressType = 1 then 'Verify Correct Address Type. ' else '' end AS ModCheck, 
    case when FacilityZip Not Like '_____-____' then 'Verify Zip plus 4 is correct.' else '' end AS Zip4Check,
	insuranceid, 
	--PhyLastName is set to 35 characters in EzData database
	rtrim(ltrim(case when charindex('-',FacilityName)=0 then case when len(FacilityName) > 35 then LEFT(FacilityName,35) else FacilityName end 
     else case when len(Substring(FacilityName, 1, charindex('-',FacilityName)-1)) > 35 
          then LEFT(Substring(FacilityName, 1, charindex('-',FacilityName)-1),35)
          else Substring(FacilityName, 1, charindex('-',FacilityName)-1) end 
     end))  AS PhyLastName,
	facilityname as PhyName,
	facilityaddress as PhyAddress1, facilitycity as PhyCity, facilitystate as PhyState, facilityzip as PhyZip,
	a.AddTypeDesc,
	facilityaddresstype,
	modifier,
	0 as Canceled,
	GETDATE() as EnteredDate,
	--0 as PhyRecID,
    2 AS PhyEntityType,
    GETDATE() AS PhysicianDateTimeCreated, GETDATE() AS PhysicianDateTimeModified, 0 AS PhyInactive ,
     0 as SelectRecord,
     facilityaddressid,
	min(tripid) as TripID,      
	@username
from(

	select 
	InsuranceID,
	t.tripid,
			case when isnull(DOAddressTypeID,2) <> 2 then DOAddressID
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) <> 2 then PUAddressID
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) = 2 then isnull(DOAddressID,0)
			else DOAddressID end as FacilityAddressID,
	(Select FacilityName from tblAddress where AddressID = (		
			case when isnull(DOAddressTypeID,2) <> 2 then DOAddressID
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) <> 2 then PUAddressID
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) = 2 then isnull(DOAddressID,0)
			else DOAddressID end )) as FacilityName,
			case when isnull(DOAddressTypeID,2) <> 2 then r.rdropoffAddress
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) <> 2 then r.RPickUpAddress
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) = 2 then isnull(r.rdropoffaddress,0)
			else r.RDropoffAddress end  as FacilityAddress,
			case when isnull(DOAddressTypeID,2) <> 2 then r.RDropoffCity
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) <> 2 then r.RPickupCity
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) = 2 then isnull(r.RDropoffCity,0)
			else r.RDropoffCity end  as FacilityCity,
			case when isnull(DOAddressTypeID,2) <> 2 then r.rDropOffState
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) <> 2 then r.rPickupState
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) = 2 then isnull(r.rDropOffState,0)
			else r.rDropOffState end  as FacilityState,
			case when isnull(DOAddressTypeID,2) <> 2 then cast(RDropOffZip as varchar(15)) + '-' + isnull(cast(RDropOffZip4 as varchar(15)),'')
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) <> 2 then cast(RPickupZip as varchar(15)) + '-' + isnull(cast(RPickupZip4 as varchar(15)),'')
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) = 2 then cast(RDropOffZip as varchar(15)) + '-' + isnull(cast(RDropOffZip4 as varchar(15)),'')
			else cast(RDropOffZip as varchar(15)) + '-' + isnull(cast(RDropOffZip4 as varchar(15)),'') end  as FacilityZip,
			case when isnull(DOAddressTypeID,2) <> 2 then DOAddressTypeID
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) <> 2 then PUAddressTypeID
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) = 2 then DOAddressTypeID
			else DOAddressTypeID end  as FacilityAddressType,
			at.Modifier, at.AddTypeDesc,
			a.EZClaimPhysicianID
	from tblRide r
	inner join tblTrip t
	on r.TripID = t.TripID
	left join tblAddress A
	on A.AddressID = case when isnull(r.DOAddressTypeID,2) <> 2 then r.DOAddressID
				 when isnull(r.DOAddressTypeID,2) = 2 
				  and isnull(r.PUAddressTypeID,2) <> 2 then r.PUAddressID
				 when isnull(r.DOAddressTypeID,2) = 2 
				  and isnull(r.PUAddressTypeID,2) = 2 then isnull(r.DOAddressID,0)
			else r.DOAddressID end
	left join tblAddressType AT 
	on 			case when isnull(DOAddressTypeID,2) <> 2 then isnull(DOAddressTypeID,0)
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) <> 2 then isnull(PUAddressTypeID,0)
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) = 2 then isnull(DOAddressTypeID,0)
			else isnull(DOAddressTypeID,0) end = AT.AddressTypeID
			and case when isnull(DOAddressTypeID,2) <> 2 then isnull(DOAddressTypeID,0)
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) <> 2 then isnull(PUAddressTypeID,0)
				 when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) = 2 then isnull(DOAddressTypeID,0)
			else isnull(DOAddressTypeID,0) end <> 2
	and t.DateReceived is not null
	and t.DateReceived + 8 <= GETDATE() 
	where Canceled = 0
	and a.ezclaimphysicianid is null
	and RideDate between @startdate and @enddate
	and InsuranceID = @insuranceid
	and at.Modifier is not null
	--and r.TripID not in ( Select TripID from #Split )
	--and r.TripID in (Select TripID from tblEzClaim) --useless - table isn't populated yet.
	and r.TripID not in 
		(
		select TripID from EzClaimTripLink
		where Claimid is not null
		)
	)a
	group by insuranceid, FacilityAddressID, FacilityName, FacilityAddress, FacilityCity, FacilityState, FacilityZip, FacilityAddressType, Modifier, AddTypeDesc


drop table #EZPhysician