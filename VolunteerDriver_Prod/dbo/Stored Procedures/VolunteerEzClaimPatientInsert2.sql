
CREATE procedure [dbo].[VolunteerEzClaimPatientInsert2] (@InsuranceID int,@StartDate datetime, @EndDate datetime)
as

set nocount on

IF OBJECT_ID('tempdb.dbo.#EZPatientAnalyze', 'U') IS NOT NULL
  DROP TABLE #EZPatientAnalyze
--drop table #EZPatientAnalyze

----------------------------------------------------------------------------------------------------------------------------------------------------------------
----***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS
----------------------------------------------------------------------------------------------------------------------------------------------------------------
declare 
        @MaxDeadHeadTrue int, @UnloadedMilesTrue int, @AllowMealsTrue int,
        @NoNoShowsTrue int, @insurance varchar(50),@TripFeesTrue int,@UnloadFedTrue int

----****Comment out 4 lines of code when not testing         
--, @Insuranceid int, @StartDate datetime, @EndDate datetime
--set @Insuranceid = 2
--set @StartDate = '2017-09-01'
--set @EndDate = '2017-09-30'

declare @username varchar(50)
select @username = SUSER_NAME() 

Set @EndDate = @EndDate + cast('23:59:59.997' as time)
---------------------------------------------------------------------------------
----***values related to EZClaim that live in the tblInsurance - 1 to 1 relationship between EZClaim and VDDB per insurance
declare @PayerFKey as integer --this is one value that indicates Insurance
set @PayerFKey = (select i.EzClaimPayerID from tblInsurance i where i.InsuranceID = @insuranceid)

declare @DiagnosisCode as varchar(10) --this is the value that retrieves the procedure code - not all insurances are the same
set @DiagnosisCode = (select i.ezclaimdiagnosiscode from tblInsurance i where i.InsuranceID = @Insuranceid)

declare @EzContractID as integer --this is another value unique to an insurance - but it lives in a different table in EZClaim
set @EzContractID = (select i.EZClaimContractID from tblInsurance i where i.InsuranceID = @Insuranceid)

declare @CurrentRate float

Set @CurrentRate = (select rateamount
from tblRate
where ((BegDate)<=@startdate) AND ((EndDate) Is Null Or (EndDate)>=@enddate) AND InsuranceProviderID = @insuranceid)

--truncate table tblEZClaimPatient
delete from tblEzClaimPatient
where username = @username
--delete from tblEzClaimPatient
--dbcc checkident('tblEzClaimPatient', RESEED, 0) with no_infomsgs


/**********************************************************************************
Check if RideID can be linked to the ClientID, AddressID, and InsuranceID in 
EZPatientClientLink2.  Update tblride with EzLinkID if true otherwise add an entry into
EZPatientClientLink2 and update tblride
Since the address in the ride is used this is required
***********************************************************************************/


select @insurance = insurance,
       @MaxDeadHeadTrue = isnull([10],0),
       @UnloadedMilesTrue = isnull([2],0),
       @AllowMealsTrue = isnull([1],0),
       @NoNoShowsTrue = ISNULL([7],0),
       @TripFeesTrue = isnull([11],0),
       @UnloadFedTrue = isnull([12],0)
from (
		select distinct i.insurance,  isnull(irq.RuleID,0) as RuleID, i.InsuranceID, 1 as truth
		from tblInsurance i
		left join
			(
			select ir.ruleid, InsuranceProviderID
			from tblInsuranceRules ir
			where (
			((IR.BegDate)<=@startdate) AND ((IR.EndDate) Is Null Or (IR.EndDate)>=@enddate) AND
			(((IR.RuleID)=1 Or (Ir.RuleID)=2 Or (Ir.RuleID)=7 or (Ir.RuleID) = 10 or (ir.ruleid) = 11 or (Ir.RuleID) = 12)))
			)
		as IRQ
		on i.InsuranceID = IRQ.InsuranceProviderID
	)sourcetable
	pivot
	(
      max(truth)
      for ruleid in ([1],[2],[7],[10],[11],[12])
	)rulemax
where Insuranceid = @insuranceid



----***Analyze Client Address vs Trip Address***Analyze Client Address vs Trip Address***Analyze Client Address vs Trip Address***Analyze Client Address vs Trip Address
-----------------------------------------------------------------------------------------------------------------------

create table #EZPatientAnalyze
(
client varchar(50), ClientLN varchar(50), ClientFN varchar(50), clientid int, clientinsuranceid int, insuranceid int, clientaddressid int, ezlinkid int, patientid int, userCreated varchar(50), DateCreated datetime
,duplicate int, primarypayerFKey int, PatientMI varchar(5), PatientBirthDate datetime, PatientZipCode varchar(20), PatientState varchar(10), PatientSex int, PatientPhoneNo varchar(25),
Warning Varchar(max), Address varchar(100), City varchar(40), EZContractID int, MemberID varchar(50), GroupNo varchar(50), PatientSigOnFile int, InsuranceType int,
InsuredName varchar(50),
InsuredStreetAddress varchar(50),
InsuredCity varchar(50),
InsuredState varchar(20),
InsuredZipCode varchar(20),
InsuredDOB datetime,
InsuredSex int, --1-M  2-F
InsuredPhoneNo varchar(25),
InsuredSigOnFile int,
OtherSex int, --1-M  2-F
PatientRel int, --1-Self  2-Spouse  3-Child 4-Other
PatientMarriedStatus int, --1-Single 2-Married 3-Other
PatientEmploymentStatus int, --1-Employed  2-Full-Time Student  3-Part-Time Student
AnotherPlan int, --1-Yes 2-No
RelatedTo int, --1-Emp  2-Auto  3-Other
OutsideLab int, --1-Yes 2-No
PhysicianSigOnFile int,
Diagnosis1 varchar(20),
AcceptAssignment int, --1-Yes 2-No
SSNOrEIN int,
DefaultPlace varchar(5),
DefaultDiagnosisCode varchar(15),
DefaultCharge money,
DefaultDays int,
DefaultAmountPaid money,
Active int, 
Summarize int, 
PrintSigDate int,
ServiceDateFormat varchar(15),
CurrencyFormat varchar(10),
DateFormat varchar(10),
DefaultfDays int,
bPhysicianPrintDate int,
bBlankZeroAmounts2930 int,
bBlankBox30 int,
bPhysicianPhoneOnBottom int,
SecondaryPayerFKey int,
bIncludeNotes int,
bBlankAllZeroAmounts int,
ContractID int,
bResponseInd int,
PrintHCFAForm int,
ChangeDate varchar(10),
ChangeTime varchar(15), 
CodeLibraryName varchar(50), 
ReferringProviderFID int, 
FacilityFID int, 
DefaultProcedure varchar(10),
BillingProviderFID int, 
RenderingProviderFID int,bLockRecord int,
DefaultClaimTemplate varchar(255),
OtherPatientRel int

)
---------------------------------------------------------------------------------------------------------------------

insert into #EZPatientAnalyze
(
client, 
ClientLN,
ClientFN,
clientid, 
clientinsuranceid, 
insuranceid, 
clientaddressid, 
ezlinkid, 
patientid, 
UserCreated,
DateCreated, 
duplicate, 
primarypayerfkey,
PatientMI, 
PatientZipCode, 
PatientState, 
PatientBirthDate, 
PatientPhoneNo,
PatientSex, 
--Warning, 
Address, 
City,
EZContractID,
MemberID,
GroupNo,
PatientSigOnFile,
InsuranceType,
InsuredName,
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
RenderingProviderFID,bLockRecord,
DefaultClaimTemplate,
OtherPatientRel

)
-----------------------------------------------------------------------------------------------------------------------
----***this outer query grabs the info unique to a client/address/insurance and adds values required to create a patient record in EZClaim
-----------------------------------------------------------------------------------------------------------------------

select 
a.client, 
a.ClLN,
a.clfn,
a.clientid, 
a.ClientInsuranceID, 
a.iid as InsuranceID, 
(a.addressmatchid)as ClientAddressID, 
max(e.EZLinkid) as EZLinkID, 
max(e.Patientid) as PatientID, 
SUSER_SNAME() as UserCreated, 
GETDATE() as DateCreated, 
max(cast(isnull(e.Duplicate,0) as int)) as Duplicate, 
@PayerFKey as PrimaryPayerFKey,
isnull(ClMI,'') as PatientMI, 
a.Zip, 
a.State,
ClDOB as PatientBirthDate, 
ClPhone as PatientPhoneNo, 
Gender as PatientSex, 
--Min(AddressMatch) as Warning,
a.Address, 
a.City,
a.EZClaimContractID,
Isnull(a.MemberID,'') as InsuredIDNo,
Isnull(a.GroupNo,'') as InsuredGroupNo,
1 as PatientSigOnFile,
0 as InsuranceType,
a.client as InsuredName,
a.address as InsuredStreetAddress,
a.City as InsuredCity,
a.State as InsuredState,
a.zip as InsuredZipCode,
a.ClDOB as  InsuredDOB,
a.Gender InsuredSex,
a.ClPhone as InsuredPhoneNo,
0 as InsuredSigOnFile,
0 as OtherSex,
1 as PatientRel,
0 as PatientMarriedStatus,
0 as PatientEmploymentStatus,
2 as AnotherPlan,
0 as RelatedTo,
0 as OutsideLab,
1 as PhysicianSigOnFile,
@DiagnosisCode as Diagnosis1,
1 as AcceptAssignment,
0 as SSNOrEIN,
99 as DefaultPlace,
'A' as DefaultDiagnosisCode,
@CurrentRate as DefaultCharge, --1 as DefaultCharge, -- **Default charge had been hardcoded to 1 - should be current insurance rate
1 as DefaultDays,
0 as DefaultAmountPaid,
1 as Active, 
0 as Summarize, 
0 as PrintSigDate,
'MMDDYYYY'ServiceDateFormat,
'DD CC'CurrencyFormat,
'MMDDYYYY'DateFormat,
1 as DefaultfDays,
0 as bPhysicianPrintDate,
0 as bBlankZeroAmounts2930,
Case when @EzContractID IN(10,11) then 1 else 0 end as bBlankBox30,--If insurance templates change - review this case statement
0 as bPhysicianPhoneOnBottom,
0 as SecondaryPayerFKey,
0 as bIncludeNotes,
0 as bBlankAllZeroAmounts,
@EzContractID as ContractID,
0 as bResponseInd,
1 as PrintHCFAForm,
CONVERT(varchar(8), GETDATE(), 112) AS ChangeDate, 
CONVERT(varchar, GETDATE(), 108) + ':00' AS ChangeTime, 
'Default' AS CodeLibraryName, 
0 AS ReferringProviderFID, 
0 AS FacilityFID,
'A0080' AS DefaultProcedure,
case when @insuranceid = 2 then 2028
   when @insuranceid = 5 then 169
   when @insuranceid = 29 then 3833
   when @insuranceid = 4 then 1995
else 0 end AS BillingProviderFID, 

---use variable to retrieve from tblInsurance
case when @insuranceid = 2 then 0--17
   when @insuranceid = 5 then 182
   when @insuranceid = 29 then 3836
   when @insuranceid = 4 then 17--619
else 0 end AS RenderingProviderFID, 
0 AS bLockRecord, 
'<Use Initial Charge Values>' AS DefaultClaimTemplate, 
0 AS OtherPatientRel



from
( --****This inner query takes the values from the trips, identifies the client address, and filters records by EZClaim filtering rules
	Select (c.clln + ', ' + c.clfn + ' ' + isnull(c.clmi,'')) as Client, 
	c.ClFN,
	c.ClLN,
	case when @Insuranceid = 2 then ISNULL(repid,'') else '' end as GroupNo,
	r.ClientInsuranceID,
	t.TripID, 
	r.ClientID, 
	i.EZClaimContractID,
	r.MemberID,
	r.RepID,
	c.ClMI, c.ClDOB, c.ClPhone, c.Gender,
	--puaddressid as PUAID, doaddressid as DOAID, 
	--puaddresstypeid, doaddresstypeid, 
	r.InsuranceID as IID,
	x.TripPatientAddressID as AddressMatchID,
	x.Address,
	x.City,
	x.State,
	x.Zip
	--ca.ClientAddressID as CAID, --r.ridedate, ca.startdate, ca.enddate,
	--case when r.RideDate
	-- RANK() over (partition by r.tripid order by r.rstarttime) as rankit,
	--case when PUAddressID = ClientAddressID then '' -- 'Client Address Pickup ID'
	--	 when DOAddressID = ClientAddressID then '' --'Client Address Dropoff ID'
	--	 when r.RPickUpAddress = ca.ClAddress and r.RPickupCity = CA.ClCity then '' --'Client Address Pickup'
	--	 when r.RDropoffAddress = ca.ClAddress and r.RDropoffCity = CA.ClCity then '' --'Client Address Dropoff'
	--	 when isnull(PUAddressTypeID,2) = 2 then 'Residence Pickup/Dropoff Address'
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) = 2 then 'Residence Pickup/Dropoff Address'
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) <> 2 then 'No Residence - Pickup Facility Address'
	--	 else 'Not a matching Address by ID or Street and City'
	--end as AddressMatch,
	--case when PUAddressID = ClientAddressID then ClientAddressID
	--	 when DOAddressID = ClientAddressID then ClientAddressID
	--	 when r.RPickUpAddress = ca.ClAddress and r.RPickupCity = CA.ClCity then PUAddressID
	--	 when r.RDropoffAddress = ca.ClAddress and r.RDropoffCity = CA.ClCity then DOAddressID
	--	 when isnull(PUAddressTypeID,2) = 2 then PUAddressID
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) = 2 then DOAddressID
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) <> 2 then isnull(PUAddressID,0)
	--	 else 0
	--end as AddressMatchID,	
	--UPPER(case when PUAddressID = ClientAddressID then ca.ClAddress
	--	 when DOAddressID = ClientAddressID then ca.ClAddress
	--	 when r.RPickUpAddress = ca.ClAddress and r.RPickupCity = CA.ClCity then RPickUpAddress
	--	 when r.RDropoffAddress = ca.ClAddress and r.RDropoffCity = CA.ClCity then RDropoffAddress
	--	 when isnull(PUAddressTypeID,2) = 2 then r.RPickUpAddress
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) = 2 then r.RDropoffAddress
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) <> 2 then r.RPickUpAddress
	--	 else 'No Client Address'
	--end) as Address,	
	--upper(case when PUAddressID = ClientAddressID then ca.ClCity
	--	 when DOAddressID = ClientAddressID then ca.ClCity
	--	 when r.RPickUpAddress = ca.ClAddress and r.RPickupCity = CA.ClCity then RPickupCity
	--	 when r.RDropoffAddress = ca.ClAddress and r.RDropoffCity = CA.ClCity then RDropoffCity
	--	 when isnull(PUAddressTypeID,2) = 2 then r.RPickupCity
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) = 2 then r.RDropoffCity
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) <> 2 then r.RPickupCity
	--	 else 'No Client City'
	--end) as City,
	--case when PUAddressID = ClientAddressID then ca.ClZip
	--	 when DOAddressID = ClientAddressID then ca.ClZip
	--	 when r.RPickUpAddress = ca.ClAddress and r.RPickupCity = CA.ClCity then RPickupzip
	--	 when r.RDropoffAddress = ca.ClAddress and r.RDropoffCity = CA.ClCity then RDropoffZip
	--	 when isnull(PUAddressTypeID,2) = 2 then r.RPickupZip
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) = 2 then r.RDropOffZip
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) <> 2 then r.RPickupZip
	--	 else 'No Client Zip'
	--end as Zip,
	--upper(case when PUAddressID = ClientAddressID then ca.ClState
	--	 when DOAddressID = ClientAddressID then ca.ClState
	--	 when r.RPickUpAddress = ca.ClAddress and r.RPickupCity = CA.ClCity then rPickupState
	--	 when r.RDropoffAddress = ca.ClAddress and r.RDropoffCity = CA.ClCity then rDropOffState
	--	 when isnull(PUAddressTypeID,2) = 2 then r.rPickupState
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) = 2 then r.rDropOffState
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) <> 2 then r.rPickupState
	--	 else 'No Client State'
	--end) as State				 

	from tblTrip t
	inner join tblRide r
	on t.TripID = r.tripID
	inner join tblClientAddress CA
	on r.ClientID = ca.ClientID
	inner join tblclient c
	on c.ClientID = r.ClientID
	inner join tblInsurance i
	on i.InsuranceID = r.InsuranceID
	
	inner join
(
	select * from
	(
	Select
	z.Tripid,
	case when z.rankit = 1 and z.addressmatch ='' then z.addressmatchid
		when z.rankit = 2 and z.addressmatch ='' then z.addressmatchid
		when z.rankit = 3 and z.addressmatch ='' then z.addressmatchid
		when z.rankit = 4 and z.addressmatch ='' then z.addressmatchid
		when z.rankit = 5 and z.addressmatch ='' then z.addressmatchid
		else 99999
	end as TripPatientAddressID

	from
	(
	select
	r.tripid,
	r.puaddressid,
	r.rpickupaddress,
	r.doaddressid,
	r.rdropoffaddress,
	ca.claddressid,
	ca.claddress,


		 RANK() over (partition by r.tripid order by r.rstarttime) as rankit,
		case when PUAddressID = ClientAddressID then '' -- 'Client Address Pickup ID'
			 when DOAddressID = ClientAddressID then '' --'Client Address Dropoff ID'
			 when r.RPickUpAddress = ca.ClAddress and r.RPickupCity = CA.ClCity then '' --'Client Address Pickup'
			 when r.RDropoffAddress = ca.ClAddress and r.RDropoffCity = CA.ClCity then '' --'Client Address Dropoff'
			 when isnull(PUAddressTypeID,2) = 2 then 'Residence Pickup/Dropoff Address'
			 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) = 2 then 'Residence Pickup/Dropoff Address'
			 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) <> 2 then 'No Residence - Pickup Facility Address'
			 else 'Not a matching Address by ID or Street and City'
		end as AddressMatch,
		case when PUAddressID = ClientAddressID then ClientAddressID
			 when DOAddressID = ClientAddressID then ClientAddressID
			 when r.RPickUpAddress = ca.ClAddress and r.RPickupCity = CA.ClCity then PUAddressID
			 when r.RDropoffAddress = ca.ClAddress and r.RDropoffCity = CA.ClCity then DOAddressID
			 when isnull(PUAddressTypeID,2) = 2 then PUAddressID
			 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) = 2 then DOAddressID
			 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) <> 2 then isnull(PUAddressID,0)
			 else isnull(ClientAddressID,88888) --the 88888 is to flag that there is no match to a client address id and it is facility to facility
		end as AddressMatchId
		
		from tblTrip t
			inner join tblRide r
			on t.TripID = r.tripID
			inner join tblClientAddress CA
			on r.ClientID = ca.ClientID
			inner join tblclient c
			on c.ClientID = r.ClientID
			inner join tblInsurance i
			on i.InsuranceID = r.InsuranceID
			
			where RideDate between @StartDate and @EndDate
			and (ca.StartDate <= r.ridedate and((ca.EndDate) Is Null Or (ca.EndDate)>=r.RideDate))
			and r.InsuranceID = @Insuranceid
			and t.DateReceived + 2 <= GETDATE()
			and r.Canceled = 0
			and	((Noshow = case when @NoNoShowsTrue = 1 then 0 else 0 end) or 
				 (Noshow = case when @NoNoShowsTrue = 1 then 0 else 1 end))
			--and r.TripID = 121896
			)z
			
			
			
			where 
			case when z.rankit = 1 and z.addressmatch ='' then z.addressmatchid
			when z.rankit = 2 and z.addressmatch ='' then z.addressmatchid
			when z.rankit = 3 and z.addressmatch ='' then z.addressmatchid
			when z.rankit = 4 and z.addressmatch ='' then z.addressmatchid
			when z.rankit = 5 and z.addressmatch ='' then z.addressmatchid
			else 99999 end <> 99999
			
			group by 
			TripID,
			case when z.rankit = 1 and z.addressmatch ='' then z.addressmatchid
			when z.rankit = 2 and z.addressmatch ='' then z.addressmatchid
			when z.rankit = 3 and z.addressmatch ='' then z.addressmatchid
			when z.rankit = 4 and z.addressmatch ='' then z.addressmatchid
			when z.rankit = 5 and z.addressmatch ='' then z.addressmatchid
			else 99999
		end
		--order by tripid desc
		)y
	inner join 
	tblAddress a
	on y.TripPatientAddressID = a.AddressID
	)x --This select statement isolates the client's address ID on the trip
	on x.tripid = r.tripid


	
	where RideDate between @StartDate and @EndDate
	and (ca.StartDate <= r.ridedate and((ca.EndDate) Is Null Or (ca.EndDate)>=r.RideDate))
	and r.InsuranceID = @Insuranceid
	and t.DateReceived + 2 <= GETDATE()
	and r.Canceled = 0
	and	((Noshow = case when @NoNoShowsTrue = 1 then 0 else 0 end) or 
		 (Noshow = case when @NoNoShowsTrue = 1 then 0 else 1 end))
		 --and r.ClientID = 6425
	--order by TripID desc, ClientID, ClientAddressID, StartDate desc
	--order by Client
 ) a


left join EzPatientClientLink2 e
on a.clientid = e.clientid
and a.iid = e.insuranceid
and a.ClientInsuranceID = e.ClientInsuranceid
and a.AddressMatchID = e.addressid

left JOIN
tblAddress tblA
on a.AddressMatchID = tblA.AddressID

LEFT join
EzClaimTripLink ETL
on a.TripID = etl.Tripid
and etl.Claimid is null



Group by a.client, a.clientid, a.iid, a.ClientInsuranceID,ClMI, ClDOB, ClPhone, Gender, MemberID
,a.AddressMatchID--, a.tripid
,a.Address, a.City, a.Zip, a.State, a.clfn, a.ClLN, a.EZClaimContractID, a.GroupNo



/************************************************************************************************
Need to filter out records marked as duplicates

Need to find where they are being marked as dups - I see dup records but there is no dup indicator when there should be

is code checking for matches in EZClaim?
************************************************************************************************/
----***This record count is the number of PATIENTS involved with the claims to be exported to EZClaim

--select * from #EZPatientAnalyze

-----------------------------------------------------------------------------------------------------
----***These records need to be inserted into the EZCLaim PatientLInk2 table to retain value for Patient ID once matched or exported

insert into ezpatientclientlink2 (timestamp, Patientid, Clientid, Addressid, ClientInsuranceid, UserName, InsuranceID, PrimaryPayerFKey)

select getdate() as timestamp, patientid, clientid, clientaddressid, clientinsuranceid, SUSER_NAME() as username, insuranceid, primarypayerfkey  
from #EZPatientAnalyze
where ezlinkid is null and clientaddressid <>0 
--and clientid = 6396
order by clientid

-----------------------------------------------------------------------------------------------------
----***Write an update statement to the temp ezpatientanalyze table to update the records that we just created with EZLinkIDs
update #EZPatientAnalyze 
set ezlinkID = m.ezlinkid , DateCreated= GETDATE() 
from(
	select l.EZLinkid, l.clientid, l.ClientInsuranceid, l.Addressid 
	from ezpatientclientlink2 L
	inner join #EZPatientAnalyze A
	on a.clientid = l.Clientid
	and a.clientaddressid = l.Addressid
	and a.clientinsuranceid = l.ClientInsuranceid
	and a.insuranceid = l.InsuranceID
	where a.ezlinkid is null
	--and a.clientid = 6396
	)M
	where m.clientid = #EZPatientAnalyze.clientid 
	and m.ClientInsuranceid = #EZPatientAnalyze.clientinsuranceid 
	and m.Addressid = #EZPatientAnalyze.clientaddressid
	and patientid is null
-----------------------------------------------------------------------------------------------------

--select * from #EZPatientAnalyze
--where ezlinkid is null

--select top 100 * from ezpatientclientlink2
--order by timestamp desc
-----------------------------------------------------------------------------------------------------
----****Test inner join between patient analyze where patientID is null and temp ezclaim patient table to see if there are any matching records****
Create Table #EZPatients 
(PatientID int, PatientLastName varchar(50), PatientFirstName varchar(50), PatientMI varchar(5), PatientBirthdate datetime, PatientStreetAddress varchar(50),PatientCity varchar(50),
PatientSex int, PatientPhoneNo varchar(25), Diagnosis1 varchar(20), DefaultCharge money, Active int, PrimaryPayerFKey int, ContractID int, DefaultProcedure varchar(48),
BillingProviderFID int, RenderingProviderFID int, PatientDateTimeCreated Datetime, InsuredIDNo varchar(25))

Insert into #EZPatients
(PatientID, PatientLastName, PatientFirstName, PatientMI, PatientBirthdate, PatientStreetAddress,PatientCity,
PatientSex,PatientPhoneNo, Diagnosis1, DefaultCharge, Active, PrimaryPayerFKey, ContractID, DefaultProcedure,
BillingProviderFID, RenderingProviderFID, PatientDateTimeCreated, InsuredIDNo)

select distinct PatientID, PatientLastName, PatientFirstName, PatientMI, cast(PatientBirthdate as datetime) as PatientBirthDate, PatientStreetAddress,PatientCity,
PatientSex,PatientPhoneNo, Diagnosis1, DefaultCharge, Active, PrimaryPayerFKey, ContractID, DefaultProcedure,
BillingProviderFID, RenderingProviderFID, PatientDateTimeCreated, InsuredIDNo
 from ezclaim...[Patient Table]
 where active = 1 
 and contractid <> 0
 and patientlastname is not null
 and billingproviderfid <> 0
 and @PayerFKey = primarypayerfkey
 order by patientlastname, patientfirstname
 
 
 Update #EZPatientAnalyze
 set patientid = yy.patientid
 from
 (
	Select 
	p.PatientID, ea.clientid, ea.MemberID, ea.Address 
	from #EZPatientAnalyze EA inner join
	 #EZPatients P
	 on p.PatientBirthdate = ea.PatientBirthDate
	 and p.PatientStreetAddress = ea.Address
	 and ea.ClientFN = p.PatientFirstName
	 and ea.ClientLN = p.PatientLastName
	 and ea.EZContractID = p.ContractID
	 and ea.MemberID = p.InsuredIDNo
	 where ea.patientid is null
	 and ea.ezlinkid is not null
	 --and p.patientid = 20190
	 --order by client
 ) yy
 where yy.clientid = #EZPatientAnalyze.clientid
 and yy.MemberID = #EZPatientAnalyze.MemberID
 and yy.Address = #EZPatientAnalyze.Address
 
 Select 
	*
	--p.PatientID 
	from #EZPatientAnalyze EA inner join
	 #EZPatients P
	 on p.PatientBirthdate = ea.PatientBirthDate
	 and p.PatientStreetAddress = ea.Address
	 and ea.ClientFN = p.PatientFirstName
	 and ea.ClientLN = p.PatientLastName
	 and ea.EZContractID = p.ContractID
	 and ea.MemberID = p.InsuredIDNo
	 where ea.patientid is null
	 and ea.ezlinkid is not null
	 --and p.patientid = 20167
	 --and ea.clientid = 6396
	 order by client
	 
	--  Select 
	--*
	----p.PatientID 
	--from #EZPatientAnalyze EA inner join
	-- #EZPatients P
	-- on p.PatientBirthdate = ea.PatientBirthDate
	-- and p.PatientStreetAddress = ea.Address
	-- and ea.ClientFN = p.PatientFirstName
	-- and ea.ClientLN = p.PatientLastName
	-- and ea.EZContractID = p.ContractID
	-- and ea.MemberID = p.InsuredIDNo
	-- where ea.patientid is not null
	-- and ea.ezlinkid is not null
	-- --and p.patientid = 20167
	-- --and ea.clientid = 6396
	-- order by client

drop table #EZPatients

-----------------------------------------------------------------------------------------------------
----***These records need to be updated in the EzPatientClientLink2 after getting updated from EZClaim matching query (updated temp table first, then actual table)

update ezpatientclientlink2
set Patientid = pp.patientid,
UpdatedDate = GETDATE(),
updateduser = SUSER_NAME()
from(
	select ea.ezlinkid, EA.patientid 
	from #EZPatientAnalyze EA
	inner join ezpatientclientlink2 PCL
	on ea.ezlinkid = pcl.EZLinkid
	and pcl.Patientid is null
	and ea.patientid is not null
	--and ea.ezlinkid = 2637
	)pp
where ezpatientclientlink2.EZLinkid = pp.ezlinkid


-----------------------------------------------------------------------------------------------------
----***These records need to be inserted into the EZCLaim Patient integration window to be exported or matched to EZClaim
--select * from #EZPatientAnalyze
--where patientid is null and ezlinkid is not null
--order by client
-----------------------------------------------------------------------------------------------------
/***********************************************************************************************
Below code will insert into the loaded patient table for end user analysis
************************************************************************************************/
insert into tblEzClaimPatient
(
WarningResults,
--BCBSInsuredMemberIDPattern,
--BCBSInsuredGroupPattern,
ValidDOB,
--BCBSInsuredGroup,
UcareIDPattern,
MedicaIDPattern,
ClientID,
--RideID, 
ClientInsuranceID, PatientLastName, PatientFirstName,
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
OtherPatientRel,
InsuranceID,
--PUAddressID,
EzLinkID,
PatientID,
SelectRecord,
UserName
)

select Distinct 
--case when av.insuranceID=2 And av.MemberID Not Like 'XZG80_______' and av.MemberID Not Like 'XZS80_______' then 'Verify Insurance ID Number. ' else '' end +
case when ezlinkid IS null then 'An Address on the Trip is missing a Trip ID. Fix Addresses on the trip and reload. ' else '' end +
--case when av.insuranceID=2 And av.groupno Not Like 'PP___-__' then 'Verify Group Number , ' else '' end + 
--case when claddressID Is Null then 'Client address is NOT linked to the address table. , ' else '' end +
case when PatientBirthDate= '9/9/9999' Or patientbirthdate > getdate() Or 
     patientbirthdate< '1/1/1900' then 'Invalid Date of Birth. Please correct and verify before export. , ' else '' end +
--case when insuranceID=2 And GroupNo Is Null then 'Group Number Required for BCBS , ' else '' end +
case when insuranceid=5 And MemberID Not Like '00_______00' then 'Verify UCare Insurance ID Number , ' else '' end +
case when insuranceid=4 And MemberID Not Like '_____-_________-00' then 'Verify Medica Insurance ID Number' else '' end AS WarningResults, 

--case when insuranceID=2 And MemberID Not Like 'XZG80_______' then 'Verify Insurance ID Number' else '' end AS BCBSInsuredMemberIDPattern,

--case when insuranceID=2 And GroupNo Not Like 'PP___-__' then 'Verify Group Number' else '' end AS BCBSInsuredGroupPattern,

--case when claddressID Is Null then 'Client address is NOT linked to the address table.' else '' end AS AddressInTable, 


case when PatientBirthDate ='9/9/9999' Or patientbirthdate > getdate() Or patientbirthdate < '1/1/1900' then
          'Invalid Date of Birth. Please correct and verify before export.' else '' end AS ValidDOB,
     
--case when insuranceID=2 And GroupNo Is Null then 'Group Number Required for BCBS' else '' end AS BCBSInsuredGroup, 

case when insuranceid=5 And MemberID Not Like '00_______00' then 'Verify UCare Insurance ID Number' else '' end AS UcareIDPattern, 

case when insuranceid=4 And MemberID Not Like '_____-_________-00' then 'Verify Medica Insurance ID Number.' else '' end AS MedicaIDPattern, 

ClientID,
ClientInsuranceID, av.ClientLN,ClientFN,
isnull(PatientMI,'') as PatientMI,
PatientBirthDate,
av.Address,av.City,PatientState,PatientZipCode,
PatientSex,
PatientPhoneNo,
PatientSigOnFile, 
InsuranceType,
InsuredName,
Isnull(MemberID,'') as InsuredIDNo,
Isnull(GroupNo,'') as InsuredGroupNo,
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
RenderingProviderFID,bLockRecord,
DefaultClaimTemplate,
OtherPatientRel,
InsuranceID,
EZLinkid,
Patientid,
0 as SelectRecord, --set the default to unselected
@username
from (
	select * 
	from #EZPatientAnalyze
	where patientid is null
	)av

-------------------------------------------------------------------------------------------------
----***After EZPatientClientLink2 is updated - then run update statement to legs on the trips have the EZLinkID
-------------------------------------------------------------------------------------------------

--select * from #EZPatientAnalyze

Update tblride 
set tblride.ezlinkid = ezlink.EZLinkid
from (
	Select (c.clln + ', ' + c.clfn + ' ' + isnull(c.clmi,'')) as Client,
	t.datereceived,
		CASE	
			WHEN t.DateReceived + 2 <= GETDATE() --THIS IS THE FILTER FOR THE DATE RECEIVED BEING 8 DAYS PAST TO ALLOW FOR EDITS BEFORE BILLING
				then '' --***Paperwork is received - don't display a Notice
			WHEN ISNULL(t.DateReceived,'')='' 
				then 'P' --***Paperwork NOT Received - Display Flag on Report
			WHEN isnull(t.TripIdNewSplit,'')<>'' OR ISNULL(t.tripdidorgsplit,'')<>''
				then 'S'
			ELSE 'not working' end as PendingPaperwork,
	r.rideid,
	r.ridedate,
	r.ClientInsuranceID,
	t.TripID, 
	r.ClientID, 
	i.EZClaimContractID,
	r.MemberID,
	r.RepID,
	c.ClMI, c.ClDOB, 
	ez.patientid,
	ez.EZLinkid,
	--c.ClPhone, c.Gender,
	--puaddressid as PUAID, doaddressid as DOAID, 
	--puaddresstypeid, doaddresstypeid, 
	r.InsuranceID as IID,
	a.AddressMatchID
	--ca.ClientAddressID as CAID, --r.ridedate, ca.startdate, ca.enddate,
	--case when PUAddressID = ClientAddressID then ClientAddressID
	--	 when DOAddressID = ClientAddressID then ClientAddressID
	--	 when r.RPickUpAddress = ca.ClAddress and r.RPickupCity = CA.ClCity then PUAddressID
	--	 when r.RDropoffAddress = ca.ClAddress and r.RDropoffCity = CA.ClCity then DOAddressID
	--	 when isnull(PUAddressTypeID,2) = 2 then PUAddressID
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) = 2 then DOAddressID
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) <> 2 then isnull(PUAddressID,0)
	--	 else 0
	--end as AddressMatchID 				 

	from tblTrip t
	inner join tblRide r
	on t.TripID = r.tripID
	inner join a
	on a.tripID = t.tripID
	inner join tblClientAddress CA
	on r.ClientID = ca.ClientID
	inner join tblclient c
	on c.ClientID = r.ClientID
	inner join tblInsurance i
	on i.InsuranceID = r.InsuranceID
	inner join ezpatientclientlink2 ez
	on r.ClientID = ez.Clientid
	and r.ClientInsuranceID = ez.ClientInsuranceid
	and ez.Addressid = a.addressmatchid
	--case when PUAddressID = ClientAddressID then ClientAddressID
	--	 when DOAddressID = ClientAddressID then ClientAddressID
	--	 when r.RPickUpAddress = ca.ClAddress and r.RPickupCity = CA.ClCity then PUAddressID
	--	 when r.RDropoffAddress = ca.ClAddress and r.RDropoffCity = CA.ClCity then DOAddressID
	--	 when isnull(PUAddressTypeID,2) = 2 then PUAddressID
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) = 2 then DOAddressID
	--	 when isnull(PUAddressTypeID,2) <> 2 and isnull(DOAddressTypeID,2) <> 2 then isnull(PUAddressID,0)
	--	 else 0
	--end
	
	
	where RideDate between @StartDate and @EndDate
	and (ca.StartDate <= r.ridedate and((ca.EndDate) Is Null Or (ca.EndDate)>=r.RideDate))
	and r.InsuranceID = @Insuranceid
	and t.DateReceived + 2 <= GETDATE()
	--and t.DateReceived is not null
	and r.Canceled = 0
	and	((Noshow = case when @NoNoShowsTrue = 1 then 0 else 0 end) or 
		 (Noshow = case when @NoNoShowsTrue = 1 then 0 else 1 end))
	and r.EzLinkID is null
	and 		CASE	
			WHEN t.DateReceived + 2 <= GETDATE() --THIS IS THE FILTER FOR THE DATE RECEIVED BEING 8 DAYS PAST TO ALLOW FOR EDITS BEFORE BILLING
				then '' --***Paperwork is received - don't display a Notice
			WHEN ISNULL(t.DateReceived,'')='' 
				then 'P' --***Paperwork NOT Received - Display Flag on Report
			WHEN isnull(t.TripIdNewSplit,'')<>'' OR ISNULL(t.tripdidorgsplit,'')<>''
				then 'S'
			ELSE 'not working' end <> 'P'
		 --and r.ClientID = 6425
	--order by TripID desc, ClientID, ClientAddressID, StartDate desc
	--order by Client
)EZLINK
where ezlink.rideid = tblride.RideID

-----------------------------------------------------------------------------------------------------
--drop table #EZPatientAnalyze
--delete from #EZPatientAnalyze
--where userCreated = SUSER_NAME()

--select * from #EZPatientAnalyze
--select * from tblEzClaimPatient