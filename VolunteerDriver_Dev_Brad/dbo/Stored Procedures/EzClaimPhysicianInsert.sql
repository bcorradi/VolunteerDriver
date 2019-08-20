
CREATE procedure [dbo].[EzClaimPhysicianInsert](@insuranceID int)
as

set nocount on

/******************************************************************************************

Inserts records into a history table and then inserts a record into the physician table in ezclaim.

Update inserted records with physicianid into tblAddress

*******************************************************************************************/

declare @count int, @physicianid int, @recordcounter int

--declare @insuranceid int
--set @insuranceid = 2
declare @username varchar(50)

select @username = SUSER_NAME()

insert into tblEzClaimPhysicianHistory
(
Zip4Check,
InsuranceID,
PhyLastName,
PhyName,
PhyAddress1,
PhyCity,
PhyState,
PhyZip,
PhyType,
AddTypeDesc,
Modifier,
Canceled,
EnteredDate,
PhyRecID,
PhyEntityType,
PhysicianDateTimeCreated,
PhysicianDateTimeModified,
PhyInactive,
AddressID,
ExportedDateTime,
ExportedUserName
)
select 
	Zip4Check,
	InsuranceID,
	upper(PhyLastName),
	upper(PhyName),
	upper(PhyAddress1),
	upper(PhyCity),
	Upper(PhyState),
	PhyZip,
	PhyType,
	AddTypeDesc,
	Modifier,
	Canceled,
	EnteredDate,
	PhyRecID,
	PhyEntityType,
	PhysicianDateTimeCreated,
	PhysicianDateTimeModified,
	PhyInactive,
	AddressID,
	GETDATE(),
	SUSER_SNAME() 
from tblEzClaimPhysician
where SelectRecord = 1 and
InsuranceID = @insuranceid and
UserName = @username

create table #links
(EzPhysician_id int,AddressID int,recordnum int)

insert into #links
(EzPhysician_id,AddressID,recordnum)
select EzPhysician_id,AddressID, RANK() over (order by EzPhysician_id) as Recordnum
from tblEzClaimPhysician
where SelectRecord = 1
and InsuranceID = @insuranceid
and Addressid is not null 
and UserName = @username

--select * from #links

select @count = COUNT(1) 
from #links

set @recordcounter = 1

while @recordcounter <= @count
Begin

insert into [ezclaim]...[Physician Library Table]
(
PhyLastName,
PhyName,
PhyAddress1,
PhyCity,
PhyState,
PhyZip,
PhyType,
PhyEntityType,
PhysicianDateTimeCreated,
PhysicianDateTimeModified,
PhyInactive)

select 
	upper(PhyLastName),
	upper(PhyName),
	upper(PhyAddress1),
	upper(PhyCity),
	upper(PhyState),
	PhyZip,
	'Facility' as PhyType,
	PhyEntityType,
	PhysicianDateTimeCreated,
	PhysicianDateTimeModified,
	PhyInactive
from tblEzClaimPhysician
where SelectRecord = 1 and
InsuranceID = @insuranceid and
EzPhysician_id = (Select EzPhysician_id from #links where recordnum = @recordcounter)


  
select @physicianid = MAX(phyrecid) from [ezclaim]...[Physician Library Table]


update tblAddress
set EzClaimPhysicianID = @physicianid
where tblAddress.Addressid =
(Select Addressid from #links where recordnum = @recordcounter)

update tblEzClaimPhysicianHistory
set PhyRecID = @physicianid
where tblEzClaimPhysicianHistory.AddressID = 
(select Addressid from #links where recordnum = @recordcounter)

set @recordcounter = @recordcounter + 1
End


drop table #links