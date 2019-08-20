

--exec EzClaimPatientInsert 2
CREATE procedure [dbo].[EzClaimPatientInsert] (@insuranceid int)
as

set nocount on
/******************************************************************************************

Inserts records into a history table and then inserts a record into the patient table in ezclaim.

Update inserted records with patientid into EzPatientClientLink2

*******************************************************************************************/
declare @count int, @patientid int, @patientidprevious int, @recordcounter int

--declare @insuranceid int
--set @insuranceid = 2

declare @username varchar(50)

select @username = SUSER_NAME()


INSERT INTO [Volunteer_DriversSQL].[dbo].[tblEzClaimPatientHistory]
           ([ClientID]
           ,[ClientInsuranceID]
           ,[PatientFirstName]
           ,[PatientLastName]
           ,[PatientMI]
           ,[PatientBirthDate]
           ,[PatientStreetAddress]
           ,[PatientCity]
           ,[PatientState]
           ,[PatientZipCode]
           ,[PatientSex]
           ,[PatientPhoneNo]
           ,[PatientSigOnFile]
           ,[InsuranceType]
           ,[InsuredName]
           ,[InsuredIDNo]
           ,[InsuredGroupNo]
           ,[InsuredStreetAddress]
           ,[InsuredCity]
           ,[InsuredState]
           ,[InsuredZipCode]
           ,[InsuredDOB]
           ,[InsuredSex]
           ,[InsuredPhoneNo]
           ,[InsuredSigOnFile]
           ,[OtherSex]
           ,[PatientRel]
           ,[PatientMarriedStatus]
           ,[PatientEmploymentStatus]
           ,[AnotherPlan]
           ,[RelatedTo]
           ,[OutsideLab]
           ,[PhysicianSigOnFile]
           ,[Diagnosis1]
           ,[AcceptAssignment]
           ,[SSNOrEIN]
           ,[DefaultPlace]
           ,[DefaultDiagnosisCode]
           ,[DefaultCharge]
           ,[DefaultDays]
           ,[DefaultAmountPaid]
           ,[Active]
           ,[Summarize]
           ,[PrintSigDate]
           ,[ServiceDateFormat]
           ,[CurrencyFormat]
           ,[DateFormat]
           ,[DefaultfDays]
           ,[bPhysicianPrintDate]
           ,[bBlankZeroAmounts2930]
           ,[bBlankBox30]
           ,[bPhysicianPhoneOnBottom]
           ,[PrimaryPayerFKey]
           ,[SecondaryPayerFKey]
           ,[bIncludeNotes]
           ,[bBlankAllZeroAmounts]
           ,[ContractID]
           ,[bResponseInd]
           ,[PrintHCFAForm]
           ,[ChangeDate]
           ,[ChangeTime]
           ,[CodeLibraryName]
           ,[ReferringProviderFID]
           ,[FacilityFID]
           ,[DefaultProcedure]
           ,[BillingProviderFID]
           ,[RenderingProviderFID]
           ,[bLockRecord]
           ,[DefaultClaimTemplate]
           ,[OtherPatientRel]
           ,[InsuranceID]
           --,[EZClaimID]
           ,[WarningResults]
           ,[BCBSInsuredMemberIDPattern]
           ,[BCBSInsuredGroupPattern]
           ,[ValidDOB]
           ,[BCBSInsuredGroup]
           ,[UcareIDPattern]
           ,[MedicaIDPattern]
           ,[PUAddressID]
           ,[ExportedDateTime]
           ,[ExportedUserName])
           
SELECT [ClientID]
      ,[ClientInsuranceID]
      ,[PatientFirstName]
      ,[PatientLastName]
      ,[PatientMI]
      ,[PatientBirthDate]
      ,[PatientStreetAddress]
      ,[PatientCity]
      ,[PatientState]
      ,[PatientZipCode]
      ,[PatientSex]
      ,[PatientPhoneNo]
      ,[PatientSigOnFile]
      ,[InsuranceType]
      ,[InsuredName]
      ,[InsuredIDNo]
      ,[InsuredGroupNo]
      ,[InsuredStreetAddress]
      ,[InsuredCity]
      ,[InsuredState]
      ,[InsuredZipCode]
      ,[InsuredDOB]
      ,[InsuredSex]
      ,[InsuredPhoneNo]
      ,[InsuredSigOnFile]
      ,[OtherSex]
      ,[PatientRel]
      ,[PatientMarriedStatus]
      ,[PatientEmploymentStatus]
      ,[AnotherPlan]
      ,[RelatedTo]
      ,[OutsideLab]
      ,[PhysicianSigOnFile]
      ,[Diagnosis1]
      ,[AcceptAssignment]
      ,[SSNOrEIN]
      ,[DefaultPlace]
      ,[DefaultDiagnosisCode]
      ,[DefaultCharge]
      ,[DefaultDays]
      ,[DefaultAmountPaid]
      ,[Active]
      ,[Summarize]
      ,[PrintSigDate]
      ,[ServiceDateFormat]
      ,[CurrencyFormat]
      ,[DateFormat]
      ,[DefaultfDays]
      ,[bPhysicianPrintDate]
      ,[bBlankZeroAmounts2930]
      ,[bBlankBox30]
      ,[bPhysicianPhoneOnBottom]
      ,[PrimaryPayerFKey]
      ,[SecondaryPayerFKey]
      ,[bIncludeNotes]
      ,[bBlankAllZeroAmounts]
      ,[ContractID]
      ,[bResponseInd]
      ,[PrintHCFAForm]
      ,[ChangeDate]
      ,[ChangeTime]
      ,[CodeLibraryName]
      ,[ReferringProviderFID]
      ,[FacilityFID]
      ,[DefaultProcedure]
      ,[BillingProviderFID]
      ,[RenderingProviderFID]
      ,[bLockRecord]
      ,[DefaultClaimTemplate]
      ,[OtherPatientRel]
      ,[InsuranceID]
      ,[WarningResults]
      ,[BCBSInsuredMemberIDPattern]
      ,[BCBSInsuredGroupPattern]
      ,[ValidDOB]
      ,[BCBSInsuredGroup]
      ,[UcareIDPattern]
      ,[MedicaIDPattern]
      ,[PUAddressID]
      ,GETDATE()
      ,SUSER_SNAME() 
  FROM [Volunteer_DriversSQL].[dbo].[tblEzClaimPatient]
  where SelectRecord = 1
  and InsuranceID = @insuranceid
  and UserName = @username
  

create table #links
(ezlinkid int,recordnum int)

insert into #links
(ezlinkid,recordnum)
select ezlinkid,RANK() over (order by ezlinkid) as Recordnum
from tblEzClaimPatient
where SelectRecord = 1
and InsuranceID = @insuranceid
and UserName = @username

--select * from #links

select @count = COUNT(1) 
from #links

set @recordcounter = 1

while @recordcounter <= @count
Begin

insert into ezclaim...[Patient Table]
(PatientFirstName,PatientLastName,
PatientMI,
PatientBirthDate,
PatientStreetAddress,PatientCity,PatientState,PatientZipCode,
PatientSex,
PatientPhoneNo,
PatientSigOnFile, 
InsuranceType,
InsuredName,
InsuredIDNo,
InsuredGroupNo,
InsuredStreetAddress,
InsuredCity,
InsuredState,
InsuredZipCode,
InsuredDOB,
InsuredSex,
InsuredPhoneNo,
InsuredSigOnFile,
OtherSex,
PatientRel,
PatientMarriedStatus,
PatientEmploymentStatus,
AnotherPlan,
RelatedTo,
OutsideLab,
PhysicianSigOnFile,
Diagnosis1,
AcceptAssignment,
SSNOrEIN,
DefaultPlace,
DefaultDiagnosisCode,
DefaultCharge,
DefaultDays,
DefaultAmountPaid,
Active, 
Summarize, 
PrintSigDate,
ServiceDateFormat,
CurrencyFormat,
DateFormat,
DefaultfDays,
bPhysicianPrintDate,
bBlankZeroAmounts2930,
bBlankBox30,
bPhysicianPhoneOnBottom,
PrimaryPayerFKey,
SecondaryPayerFKey,
bIncludeNotes,
bBlankAllZeroAmounts,
ContractID,
bResponseInd,
PrintHCFAForm,
ChangeDate,
ChangeTime,
CodeLibraryName, 
ReferringProviderFID, 
FacilityFID, 
DefaultProcedure,
BillingProviderFID, 
RenderingProviderFID,
bLockRecord,
DefaultClaimTemplate,
OtherPatientRel--,
--PatBox9cReserved
)
SELECT 
      upper([PatientFirstName]) as PatientFirstName
      ,upper([PatientLastName]) as PatientLastName
      ,upper([PatientMI]) as PatientMI
      ,[PatientBirthDate]
      ,upper([PatientStreetAddress]) as PatientStreetAddress
      ,upper([PatientCity]) as PatientCity
      ,upper([PatientState]) as PatientState
      ,[PatientZipCode]
      ,[PatientSex]
      ,[PatientPhoneNo]
      ,[PatientSigOnFile]
      ,[InsuranceType]
      ,upper([InsuredName]) as InsuredName
      --,case when isnull([InsuredIDNo],'Fix') = '' then 'Fix' else isnull([InsuredIDNo],'Fix') end
      --,case when isnull([InsuredGroupNo],'Fix') = '' then 'Fix' else isnull([InsuredGroupNo],'Fix') end
      ,case when [InsuredIDNo] = '' then NULL else [InsuredIDNo] end
      ,case when [InsuredGroupNo] = '' then NULL else [InsuredGroupNo] end
      ,upper([InsuredStreetAddress]) as InsuredStreetAddress
      ,upper([InsuredCity]) as InsuredCity
      ,upper([InsuredState]) as InsuredState
      ,[InsuredZipCode]
      ,[InsuredDOB]
      ,[InsuredSex]
      ,[InsuredPhoneNo]
      ,[InsuredSigOnFile]
      ,[OtherSex]
      ,[PatientRel]
      ,[PatientMarriedStatus]
      ,[PatientEmploymentStatus]
      ,[AnotherPlan]
      ,[RelatedTo]
      ,[OutsideLab]
      ,[PhysicianSigOnFile]
      ,[Diagnosis1]
      ,[AcceptAssignment]
      ,[SSNOrEIN]
      ,[DefaultPlace]
      ,[DefaultDiagnosisCode]
      ,[DefaultCharge]
      ,[DefaultDays]
      ,[DefaultAmountPaid]
      ,[Active]
      ,[Summarize]
      ,[PrintSigDate]
      ,[ServiceDateFormat]
      ,[CurrencyFormat]
      ,[DateFormat]
      ,[DefaultfDays]
      ,[bPhysicianPrintDate]
      ,[bBlankZeroAmounts2930]
      ,[bBlankBox30]
      ,[bPhysicianPhoneOnBottom]
      ,[PrimaryPayerFKey]
      ,[SecondaryPayerFKey]
      ,[bIncludeNotes]
      ,[bBlankAllZeroAmounts]
      ,[ContractID]
      ,[bResponseInd]
      ,[PrintHCFAForm]
      ,[ChangeDate]
      ,[ChangeTime]
      ,[CodeLibraryName]
      ,[ReferringProviderFID]
      ,[FacilityFID]
      ,[DefaultProcedure]
      ,[BillingProviderFID]
      ,[RenderingProviderFID]
      ,[bLockRecord]
      ,[DefaultClaimTemplate]
      ,[OtherPatientRel]
      --,Null as PatBox9cReserved
  FROM [Volunteer_DriversSQL].[dbo].[tblEzClaimPatient]
  where InsuranceID = @insuranceid and
  ezlinkid = (Select ezlinkid from #links where recordnum = @recordcounter)
  
select @patientid = MAX(patientid) from [ezclaim]...[Patient Table]

update EzPatientClientLink2
set Patientid = @patientid, UpdatedDate = GETDATE()
where EzPatientClientLink2.EZLinkid =
(Select ezlinkid from #links where recordnum = @recordcounter)

set @recordcounter = @recordcounter + 1
End


drop table #links