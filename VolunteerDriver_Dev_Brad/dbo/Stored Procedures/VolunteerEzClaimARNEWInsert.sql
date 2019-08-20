

CREATE procedure [dbo].[VolunteerEzClaimARNEWInsert]  (@insuranceid int, @startdate datetime, @enddate datetime)
as
set nocount on

IF OBJECT_ID('tempdb.dbo.#ClaimFormTable', 'U') IS NOT NULL
  DROP TABLE #ClaimFormTable
------------------------------------------------------------------------------------------
declare 
        @MaxDeadHeadTrue int, @UnloadedMilesTrue int, @AllowMealsTrue int,
        @NoNoShowsTrue int, @insurance varchar(50),@TripFeesTrue int,@UnloadFedTrue int

----****Comment out 4 lines before when NOT Testing***-------------------------------------		
--,@startdate datetime, @enddate datetime, @insuranceid int   
--set @startdate = '2018-07-01'
--set @enddate = '2018-07-31'
--set @insuranceid = 5

-------------------------------------------------------------------------------------------


declare @ConusRate float

-------------------------------------------------------------------------------------------
set @ConusRate =(select rateamount 
from tblrate 
where 
((BegDate)<=@startdate) AND ((EndDate) Is Null Or (EndDate)>=@enddate) AND InsuranceProviderID = 14)
-----------------------------------------------------------------------------------------
----****Identify the EZClaim PK contractID that is stored in VDDB Insurance table
declare @ContractID int
set @ContractID = (select ezclaimContractID from tblInsurance where InsuranceID = @insuranceid)
-----------------------------------------------------------------------------------------

declare @CurrentRate float

Set @CurrentRate = (select rateamount
from tblRate
where ((BegDate)<=@startdate) AND ((EndDate) Is Null Or (EndDate)>=@enddate) AND InsuranceProviderID = @insuranceid)
------------------------------------------------------------------------------------------
Declare @Diagnosis varchar(10)
Set @Diagnosis = (select ezclaimdiagnosiscode from tblInsurance where InsuranceID = @insuranceid)
----------------------------------------------------
declare @RenderPhyID as integer
set @RenderPhyID = (select ezRenderPhyID from tblInsurance where InsuranceID = @insuranceid)
-------------------------------------------------------

declare @username varchar(50)

select @username = SUSER_NAME()

Set @EndDate = @EndDate + cast('23:59:59.997' as time)
-----------------------------------------------------------------------------------------
delete from tblEzClaimAddressRptNew
where username = @username
-------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--***Insurance Rules - when adding, add new variable in declare statement above and in select statement below (with RuleID)
--***,then add RuleID to filter in where statement and ruleID in max statement
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

----------------------------------------------------------------------------------------
--/*********Code Below can be uncommented to display in SSMS the insurance rules for testing date range and insurance rules****/
--select distinct  i.InsuranceID, isnull(irq.RuleID,0) as RuleID, IRQ.RuleName, @CurrentRate as ReimburseRate
--from tblInsurance i
--left join
--(
--	select ir.ruleid, InsuranceProviderID, r.RuleName
--	from tblInsuranceRules ir
--	inner join ltblRules r 
--	on ir.RuleID=r.RuleID
--	where (
--	((IR.BegDate)<=@startdate) AND ((IR.EndDate) Is Null Or (IR.EndDate)>=@enddate) )
--) as IRQ
--on i.InsuranceID = IRQ.InsuranceProviderID
--where 
--i.Insuranceid = @insuranceid
-------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
----***To improve performance, create a temp table of the data in the EZClaim database, claim form table.

create table #ClaimFormTable
(ClaimID int, PatientID int, TotalCharge money, BalanceDue money, ContractID int, dtmFirstClaimDate datetime, PriorAuthorizationNo varchar(50),
Diagnosis1 varchar(20), RenderingPhyFID int, FacilityClaimFID int, ClaimStatus varchar(20), ClaimReserved19 varchar(75),ClaimFormDateTimeCreated datetime,
ClaimFormDateTimeModified datetime, BillingItemId int)

Insert Into #ClaimFormTable
(ClaimID, PatientID, TotalCharge, BalanceDue, ContractID, dtmFirstClaimDate, PriorAuthorizationNo,
Diagnosis1, RenderingPhyFID, FacilityClaimFID, ClaimStatus, ClaimReserved19,ClaimFormDateTimeCreated,
ClaimFormDateTimeModified, BillingItemId)


select c.ClaimID, c.PatientID, TotalCharge, BalanceDue, ContractID, dtmFirstClaimDate, PriorAuthorizationNo,
Diagnosis1, RenderingPhyFID, FacilityClaimFID, ClaimStatus, ClaimReserved19,ClaimFormDateTimeCreated,
ClaimFormDateTimeModified, b.billingitemID
from [ezclaim]...[Claim Form Table] c
left join [ezclaim]...[billing Item Table] b
on c.claimid = b.claimid
where contractid = @contractid
and dtmfirstclaimdate between @StartDate and @EndDate

----***Now update the records that previously had an EZClaim ClaimID to nullify the value, because it doesn't exist and needs to be re-exported!

--update EzClaimTripLink
--set ezclaimtriplink.Claimid = null
--from
--	(
--	select distinct Claimid from EzClaimTripLink e
--	inner join tblRide r
--	on e.Tripid = r.TripID
--	where e.Claimid is not null
--	and e.Claimid  not in (select claimid from #ClaimFormTable)
--	and e.insuranceid = @insuranceid 
--	and RideDate between @StartDate and @EndDate
--	)Claim
--where EzClaimTripLink.Claimid = Claim.Claimid

--update EzClaimTripLink
--set ezclaimtriplink.Claimid = null
--from
--	(
--	select distinct claimid from EzClaimTripLink e
--	inner join tblRide r
--	on e.Tripid = r.TripID
--	where (e.Claimid is not null
--	and e.Claimid  in (select claimid from #ClaimFormTable where billingitemid is null)
--	and e.insuranceid = @insuranceid) 
--	and RideDate between @StartDate and @EndDate
--	)Claim2
--where EzClaimTripLink.Claimid = Claim2.Claimid

----***The two below updates would clear out the claimID value that lives in the Seqno field in the ezclaim history table. Not necessary? Not looked at by other code.

--update tblezclaimhistory
--set tblEZClaimHistory.SeqNo = null
--from
--	(
--	select distinct  e.SeqNo from [tblEzClaimHistory] e
--	inner join tblRide r
--	on e.Tripid = r.TripID
--	where e.SeqNo is not null
--	and e.SeqNo  not in (select claimid from #ClaimFormTable)
--	and e.insuranceid = @insuranceid 
--	and e.RideDate between @StartDate and @EndDate
--	and e.SeqNo <> 1
--	)CH
--where tblezclaimhistory.SeqNo = CH.SeqNo

--update tblezclaimhistory
--set tblEZClaimHistory.SeqNo = null
--from
--	(
--	select distinct e.SeqNo from [tblEzClaimHistory] e
--	inner join tblRide r
--	on e.Tripid = r.TripID
--	where (e.seqno is not null
--	and e.SeqNo  in (select claimid from #ClaimFormTable where billingitemid is null)
--	and e.insuranceid = @insuranceid) 
--	and e.RideDate between @StartDate and @EndDate
--	and e.SeqNo <> 1
--	)CH2
--where tblezclaimhistory.SeqNo = CH2.SeqNo

--select * from #ClaimFormTable
------------------------------------------------------------------------------------------
insert into tblEzClaimAddressRptNew
(
TripID,InsuranceID,Insurance,ClientID,Client,RideDate,TripType,LegCountNotCanceled,
Fee,
LegNoShowCount,Diagnosis1,RenderingPHYFID,FacilityAddressID,
FacilityName,CountFacility,AuthCode,RepID,MemberID,ReimburseRate,
UnloadedReimburseRate,SumOfLoadedMiles,SumOfUnloadedMiles,
DeadHeadAuth,PaidUnloadedMiles,TotalTripMiles,PaidMiles,
--UnpaidMiles,
MealsMisc,BillingAmount,EzClaimPhysicianID,PatientID,
--SeqNo,
EzLinkID,
--SplitLoadedMiles, SplitUnloadedMiles,
Warning,SelectRecord,
UserName
)

----------------------------------------------------------------------------------------------------
--***NOT SPLIT TRIPS FIRST

Select 
tripid,@InsuranceID as InsuranceID,@insurance as Insurance,rides.ClientID,client, minofridedate AS RideDate,
triptype,
--TripTypeId, --Get code description
Legs, 
case when @tripfeesTrue <> 0 then(case when legs = 1 then 10.00 else 20.00 end) else 0 end as TripFee,
--nslc.legnoshowcount as LegNoShowCount,
NoShow AS legNoShowCount, --Fix this - used for what?
@Diagnosis as Diagnosis1,
@RenderPhyID as RenderingPhyID,
FacilityAddressID,
rides.FacilityName,
CountFacility,
authcode,
RepID,
memberid,
@CurrentRate as ReimburseRate,
@ConusRate as UnloadedReimburseRate,
sum(sumofLoadedMiles)as SumOfLoadedMiles,
SUM(sumofunloadedmiles) as SumOfUnloadedMiles,
isnull(maxreimburse,0) as DeadHeadAuth,

/***Need to modify the code with the MaxReimburse to match updated insurance rpt 7.20.17 ***/
sum(case when @MaxDeadHeadTrue<>0 and isnull(MaxReimburse,0)=0 then 0 
	when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 then
		case when ISNULL(maxreimburse,0)> SumOfunLoadedMiles then SumOfunLoadedMiles
			when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then MaxReimburse 
		end
	when @UnloadedMilesTrue = 0 then 0
	else sumofUnloadedmiles end) AS PaidUnloadedMiles,
	 
SUM(sumofunloadedmiles) + SUM(SUMofloadedmiles) as TotalTripMiles,

sum(sumofLoadedMiles)+ case when @MaxDeadHeadTrue<>0 and isnull(MaxReimburse,0)=0 then 0 
	when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 then
		case when ISNULL(maxreimburse,0)> SumOfunLoadedMiles then SumOfunLoadedMiles
			when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then MaxReimburse
		end
	when @UnloadedMilesTrue = 0 then 0
	else sumofUnloadedmiles end  as PaidMiles,
	
drivermeals+ drivermisc as MealsMisc,
	-------------------------------------------------------------------------------------------------------------
	--sum(cast(round(
	--case when loadedmilesbill = 0 then 0 
	--else ISNULL(case when @tripfeesTrue <> 0 then (case when legs = 1 then 10.00 else 20.00 end) else 0 end,0)
	--end + --Trip Fee Billed
	--case when @AllowMealsTrue <>0 then DriverMeals+DriverMisc else 0 end + --meals and misc added in
	--		  LoadedMilesBill + 
	--			case 
	--			when @MaxDeadHeadTrue<>0 and isnull(MaxReimburse,0)=0 then 0 
	--			when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 then
	--				case when ISNULL(maxreimburse,0)>= SumOfunLoadedMiles then UnloadedTripAmount 
	--					 when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then MaxReimburse * @ConusRate
	--				end
	--			else 
	--				UnloadedTripAmount 
	--			end
	--		--end
	--	,2)as money)
	--)as BillingAmount, --V2***combines trip fees with total for trip based on miles and insurance rules
	
	cast(round(sum	(case when loadedmilesbill = 0 then 0 
	else ISNULL(case when @tripfeesTrue <> 0 then (case when legs = 1 then 10.00 else 20.00 end) else 0 end,0)
	end + --Trip Fee Billed
	case when @AllowMealsTrue <>0 then DriverMeals+DriverMisc else 0 end + --meals and misc added in 
				LoadedMilesBill + 
					case when @MaxDeadHeadTrue<>0 and isnull(MaxReimburse,0)=0 then 0 
					when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0  and @UnloadFedTrue <> 0 then
						case when ISNULL(maxreimburse,0)>= SumOfunLoadedMiles then UnloadedTripAmount 
							 when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then MaxReimburse * @ConusRate
						end
					when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0  and @UnloadedMilesTrue =0 then
						case when ISNULL(maxreimburse,0)>= SumOfunLoadedMiles then UnloadedTripAmount 
							 when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then MaxReimburse * @CurrentRate
						end
					when @UnloadedMilesTrue = 0 then 0
					else 
						UnloadedTripAmount 
					end
	),2)as money)as TotalBilled, ---testing updated code to match insurance billing report
	---------------------------------------------------------------------------------------------------------
	tblAddress.EZClaimPhysicianID, 
	ez.Patientid,
	max(EZ.EzLinkID)as EZLinkID,
	(
		case when PendingPaperwork = 'S' then 'Split Trip. ' else '' end + 
		case when SharedTripIndicator = 1 then 'Shared Trip. ' else '' end +
		case when CountFacility > 1 then 'Multiple Facilities. ' else '' end + 
		case when FacilityAddressID = 0 then 'Verify Address Type(s) on Trip. ' else '' end +
		case when tblAddress.EZClaimPhysicianID is null then 'FACILITY NOT IN EZCLAIM - MATCH OR ADD; ' else '' end +
		case when ez.PatientID is null then 'PATIENT NOT IN EZCLAIM - MATCH OR ADD; ' else '' end  +
		--case when ez.EZLinkid is null then 'VERIFY PICKUP ADDRESS IS IN ADDRESS TABLE; ' else '' end  +
		case when @insuranceID=2 And ((cast(MemberID as varchar(25)) Not Like 'XZG80_______') and (cast(MemberID as varchar(25)) Not Like 'XZS80_______')) then 'Verify Insurance ID Number. ' else '' end +
		case when @insuranceID=2 And CAST(RepID as varchar(25)) Not Like 'PP___-__' then 'Verify BCBS Group Number. ' else '' end +
		case when @insuranceID=2 And RepID Is Null then 'Group Number Required for BCBS. ' else '' end +
		case when @insuranceid=5 And cast(MemberID as varchar(25)) Not Like '00_______00' then 'Verify UCare Insurance ID Number. ' else '' end +
		case when @insuranceid=5 And (cast(AuthCode as varchar(25)) Not Like 'HR%' OR len(cast(AuthCode as varchar(25)))<> 9) then 'Verify UCare Auth Code. ' else '' end +
		--case when @insuranceid=5 And len(cast(AuthCode as varchar(25)))<> 9 then 'Verify UCare Auth Code. ' else '' end +
		case when @insuranceid=4 And cast(MemberID as varchar(25)) Not Like '_____-_________-00' then 'Verify Medica Insurance ID Number. ' else '' end +
		case when @insuranceid=4 And cast(AuthCode as varchar(25)) Like 'H%' then 'Verify Medica Auth Code. ' else '' end +
		case when @insuranceid=4 And cast(AuthCode as varchar(25)) Not Like '_________' then 'Verify Medica Auth Code. ' else '' end +
		case when @insuranceid<>29 And len(CAST(RepID as varchar(25))) < 5 then 'Verify RepID. ' else '' end +
		case when @insuranceid=29 and NoShow = 1 then 'No Show on this claim. ' else '' end +
		case when @insuranceid=29 And len(CAST(AuthCode as varchar(25))) <> 6 then 'Verify Health Partners Auth Code' else '' end
	) as Warning,
0 as SelectRecord, --set default to unselected
@username as UserName

--,PendingPaperwork

from 
( --***Below code does calculations based on individual legs for the trips - to be combined by above select statement and below group by


	SELECT  
	tt.TripType,
	case when t.unloadedreasonid = 9 then 1 else 0 end as SharedTripIndicator,
	max(isnull(ez.EzLinkID,0)) as EzLinkID,
	FacNS.FacilityAddressID,
	FacNS.FacilityName,
	FacCountNS.CountFacility,
	[clln] + ', ' + [clfn] AS Client, 
	r.ClientID,
	CASE	
			WHEN ISNULL(datereceived,'') + 2 <= GETDATE() --THIS IS THE FILTER FOR THE DATE RECEIVED BEING 8 DAYS PAST TO ALLOW FOR EDITS BEFORE BILLING
				then '' --***Paperwork is received - don't display a Notice
			WHEN ISNULL(datereceived,'')='' 
				then 'P' --***Paperwork NOT Received - Display Flag on Report
			WHEN isnull(TripIdNewSplit,'')<>'' OR ISNULL(t.tripdidorgsplit,'')<>''
				then 'S'
			ELSE '' end as PendingPaperwork,
	max(isnull(t.maxreimburse,0)) as MaxReimburse,
	Case
		when @insuranceid = 2 then 10
		else 0 end As Fee,
	COUNT(r.rideid) as Legs,
	cast(round(sum(case when isnull( LoadedMiles,0) * @CurrentRate like '%.__5' then isnull( LoadedMiles,0) * @CurrentRate + .005
	else isnull( LoadedMiles,0) * @CurrentRate end),2) as money) as LoadedMilesBill,
	-------------------------------------------------------------------------------------------------------------------------------------------
	------***Unloaded Miles are affected by MaxDeadHead, Allow Unloaded @ contract, and unloaded @ fed rates.-----------------------------------------

	
		case when @MaxDeadHeadTrue<>0 and max(isnull(t.MaxReimburse,0))=0 then 0 
			 when @MaxDeadHeadTrue<>0 and max(ISNULL(t.maxreimburse,0)) <> 0 then
				case when max(ISNULL(t.MaxReimburse,0))>= sum(r.UnloadedMiles) then SUM(r.unloadedmiles) * @ConusRate 
					 when max(ISNULL(t.MaxReimburse,0))< SUM(r.unloadedmiles) then max(isnull(t.MaxReimburse,0)) * @ConusRate
				end
			 when @MaxDeadHeadTrue <> 0 and max(ISNULL(t.MaxReimburse,0)) <> 0  and @UnloadedMilesTrue =0 then
				case when max(ISNULL(t.MaxReimburse,0))>= SUM(r.unloadedmiles) then SUM(r.unloadedmiles) * @CurrentRate 
					 when max(ISNULL(t.MaxReimburse,0))< SUM(r.unloadedmiles) then max(isnull(t.MaxReimburse,0)) * @CurrentRate
				end
			 when @UnloadedMilesTrue = 0 then 0
			 else SUM(r.unloadedmiles) * @CurrentRate  
		end
		AS UnloadedTripAmount,
		-------------------------------------------------------------------------------------------------------------------------------------------
	t.TripID,
	Min(r.RideDate) AS MinOfRideDate,  
	Case when  @AllowMealsTrue = 0 then 0 else t.TripDriverMeals end as DriverMeals, 
	Case when  @AllowMealsTrue = 0 then 0 else t.TripDriverMisc end as DriverMisc, 
	r.InsuranceID, 
	Sum(isnull(r.LoadedMiles,0)) AS SumOfLoadedMiles, 
	Sum(isnull(r.UnloadedMiles,0)) AS SumOfUnloadedMiles, 
	isnull(r.AuthCode,'') as AuthCode, 
	isnull(r.MemberID,'') as MemberID, 
	Sum(isnull([loadedmiles],0)+isnull([unloadedmiles],0)) AS AllMiles, 
	r.NoShow, 
	t.TripTypeId, 
	i.Insurance, 
	t.TripdIdOrgSplit, 
	t.tripidnewsplit,
	isnull(r.RepID,'') as RepID,
	c.ClDOB

	FROM tblRide r INNER JOIN tblTrip t ON r.TripID = t.TripID
	INNER JOIN tblClient c ON r.ClientID = c.ClientID
	INNER JOIN tblInsurance i ON r.InsuranceID = i.InsuranceID
	Inner join ltblTripType tt on tt.TripTypeID = t.TripTypeId
	inner join tblClientInsurance ci on r.ClientInsuranceID = ci.ClientInsuranceID 
	--------
	inner join
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
			 else isnull(ca.ClientAddressID,88888) --the 88888 is to flag that there is no match to a client address id and it is facility to facility
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
		)a
 on a.tripID = t.tripID
	--------
	inner join
		(
			Select distinct
			t6.tripid,
			case when DOAddressTypeID <> 2 then DOAddressID
				 when DOAddressTypeID = 2 and PUAddressTypeID<> 2 then PUAddressID
				 when DOAddressTypeID <> 2 and PUAddressTypeID <> 2 then 9999999
				 else 0
				 end
			as FacilityAddressID,
			case when DOAddressTypeID<> 2 then FacilityName
				 when PUAddressTypeID <> 2 then (Select FacilityName from tblAddress where AddressID = r6.PUAddressID)
				 else 'No Facility on this Trip.'
				 end
			as FacilityName
			from tblRide r6
			inner join tblTrip t6
			on r6.TripID = t6.TripID
			where ((r6.RideDate Between @startdate And @enddate AND r6.InsuranceID=@insuranceid and isnull(t6.TripIdNewSplit,0)=0)
			and isnull(t6.TripdIdOrgSplit,0)=0) and Canceled = 0  --and PaymentMadeDate <= GETDATE()
			and SeqNo in (Select MIN(seqno)from tblRide where TripID=t6.tripid and Canceled=0)
		)FacNS
	on FacNS.tripid = t.tripid

	inner join
		(
		Select facCount.TripID as tripid, COUNT(faccount.facilityaddressid)as CountFacility from
			(Select distinct
				t6.tripid, 
				case when DOAddressTypeID <> 2 then DOAddressID
					 when DOAddressTypeID = 2 and PUAddressTypeID<> 2 then PUAddressID
					 when DOAddressTypeID <> 2 and PUAddressTypeID <> 2 then 9999999
					 else 0
					 end
				as FacilityAddressID,
				case when DOAddressTypeID<> 2 then FacilityName
					 when PUAddressTypeID <> 2 then (Select FacilityName from tblAddress where AddressID = r6.PUAddressID)
					 else 'No Facility on this Trip.'
					 end
				as FacilityName  
				from tblRide r6
				inner join tblTrip t6
				on r6.TripID = t6.TripID
				where ((r6.RideDate Between @startdate And @enddate AND r6.InsuranceID=@insuranceid and isnull(t6.TripIdNewSplit,0)=0)
				and isnull(t6.TripdIdOrgSplit,0)=0) and Canceled = 0  
				)facCount
			group by
			facCount.TripID
		)FacCountNS
	on FacCountNS.TripID = t.TripID
	
	left join 
		(
			select COUNT(r20.rideid) as LegNoShowCount
			,r20.TripID as TripID
			from tblRide r20 
			inner join tblTrip t20
			on r20.TripID = t20.TripID
			where r20.NoShow=1 and r20.Canceled=0 and (r20.RideDate Between @startdate And @enddate) AND r20.InsuranceID=@insuranceid and isnull(t20.TripIdNewSplit,0)=0
			group by r20.TripID
		)nslc --No Show Leg Count
	on	nslc.TripID = t.TripID
----THIS CODE DOUBLED MILES--- EVIL
	right join EzPatientClientLink2 ez on ez.clientid = c.ClientID
	and ez.clientinsuranceID = ci.ClientInsuranceID
	and ez.addressID = a.TripPatientAddressID
	inner join tblClientInsurance ca on ca.ClientInsuranceID = r.clientinsuranceid

	
	
	WHERE 
	(
	(r.NoShow = (case when @NoNoShowsTrue = 1 then 0 else 0 end) or 
	r.NoShow = (case when @NoNoShowsTrue = 1 then 0 else 1 end))
	and
	r.Canceled=0 AND 
	isnull(t.MIPOnly,0)=0  
	and t.DateReceived is not null
	and t.DateReceived + 2 <= GETDATE()
	and t.triptypeid<>6 
	) 

	GROUP BY 
	tt.TripType,
	case when t.unloadedreasonid = 9 then 1 else 0 end,
	FacNS.FacilityName, FacNS.FacilityAddressID, 
	FacCountNS.CountFacility,
	[clln] + ', ' + [clfn], 
	r.ClientID,
	CASE	
			WHEN ISNULL(datereceived,'') + 2 <= GETDATE()
				then '' --***Paperwork is received - don't display a Notice
			WHEN ISNULL(datereceived,'')='' 
				then 'P' --***Paperwork NOT Received - Display Flag on Report
			WHEN isnull(TripIdNewSplit,'')<>'' OR ISNULL(t.tripdidorgsplit,'')<>''
				then 'S' --This should never display, as split trips are filtered out, but just in case...
			ELSE '' end,
	t.TripID, 
	Case when  @AllowMealsTrue = 0 then 0 else t.TripDriverMeals end, 
	Case when  @AllowMealsTrue = 0 then 0 else t.TripDriverMisc end, 
	r.InsuranceID, 
	isnull(r.AuthCode,''), 
	isnull(r.MemberID,''),
	r.NoShow, 
	t.TripTypeId, 
	i.Insurance, 
	t.TripdIdOrgSplit, 
	t.tripidnewsplit,
	isnull(r.RepID,''),
	c.ClDOB
	HAVING 
	(Min(r.RideDate)Between @startdate And @enddate AND r.InsuranceID=@insuranceid and t.TripIdNewSplit is  null and t.TripdIdOrgSplit is  null)


	--order by [clln] + ', ' + [clfn], minofridedate--, r.authcode

) Rides

	left join EzPatientClientLink2 ez
	on rides.EzLinkID = ez.EZLinkid
	left join tblAddress  --get the ezclaim physicianid
	on Rides.FacilityAddressID = tblAddress.AddressID

where PendingPaperwork = '' 
and (TripTypeId<>6)
and TripID not in (
	select TripID from EzClaimTripLink
	where Claimid is not null
)

group by 
TripType,
tblAddress.EZClaimPhysicianID,
rides.SharedTripIndicator, 
ez.Patientid,
ez.EZLinkid,
FacilityAddressID,
rides.FacilityName,
CountFacility,
Client, 
rides.ClientID,
TripTypeId,
legs,
PendingPaperwork,
maxreimburse,
case when @MaxDeadHeadTrue<>0 and isnull(MaxReimburse,0)=0 then 0 
	when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 then
		case when ISNULL(maxreimburse,0)> SumOfunLoadedMiles then SumOfunLoadedMiles
			when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then MaxReimburse
		end
	when @UnloadedMilesTrue = 0 then 0	
	else sumofUnloadedmiles end,
case
	when @MaxDeadHeadTrue<>0 and  isnull(MaxReimburse,0)<>0 then SumOfUnloadedMiles
end,
tripid,
minofridedate,
drivermeals,
drivermisc,
rides.InsuranceID,
authcode,
memberid,
case when @MaxDeadHeadTrue<>0 and isnull(MaxReimburse,0)=0 then 0 
	when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 then
		case when ISNULL(maxreimburse,0)> SumOfunLoadedMiles then SumOfunLoadedMiles 
			when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then MaxReimburse 
		end
	else sumofUnloadedmiles end,
noshow,
--triptypeID,
insurance,
case when @tripfeesTrue <> 0 then(case when legs = 1 then 10.00 else 20.00 end) else 0 end,
RepID,
ClDOB

order by Client, MinOfRideDate, AuthCode


--***THEN SPLIT TRIPS
--SPLIT TRIP--SPLIT TRIP--SPLIT TRIP--SPLIT TRIP--SPLIT TRIP--SPLIT TRIP--SPLIT TRIP--SPLIT TRIP--SPLIT TRIP--SPLIT TRIP--SPLIT TRIP--SPLIT TRIP--SPLIT TRIP--
-------------------------------------------------------------------------
insert into tblEzClaimAddressRptNew
(
TripID,InsuranceID,Insurance,ClientID,Client,RideDate,TripType,LegCountNotCanceled,
Fee,
LegNoShowCount,Diagnosis1,RenderingPHYFID,FacilityAddressID,
FacilityName,
CountFacility,
AuthCode,RepID,MemberID,ReimburseRate,
UnloadedReimburseRate,SumOfLoadedMiles,SumOfUnloadedMiles,
DeadHeadAuth,PaidUnloadedMiles,TotalTripMiles,PaidMiles,
--UnpaidMiles,
MealsMisc,BillingAmount,EzClaimPhysicianID,PatientID,
EzLinkID,
Warning,SelectRecord,
UserName

)

----------------------------------------------------------------------------------------------------
----***get Total Miles and Billing Total

Select 
totals.CombinedTripID as TripID,
@insuranceid as InsuranceID,
@insurance as Insurance,
totals.ClientID,
Client,
r.[RideDate],
'Split' as Triptype,
sum(Legs) as Legs,
max(TripFee) as TripFee,
r.noshow as LegNoShowCount, --FIX THIS - 
@Diagnosis as Diagnosis1,
@RenderPhyID as RenderingPhyID,
FacilityAddressID,
fac.FacilityName, 
faccount.CountFacility,    
r.authcode,
r.repid,
r.memberid,
@CurrentRate as ReimburseRate,
@ConusRate as UnloadedReimburseRate,
sum([TotalLoadedMiles]) as SumOfLoadedMiles,
sum(sumofUnloadedMiles) as TotalUnloadedMiles,
isnull(maxreimburse,0) as DeadHeadAuth,
sum(
	case when @MaxDeadHeadTrue<>0 and isnull(MaxReimburse,0)=0 then 0 
		 when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 then
			case when ISNULL(maxreimburse,0)>TotalUnloadedMiles then 
					case when totalunloadedmiles * @Conusrate like '%.__5' then cast(round(TotalUnloadedMiles * @ConusRate + .005,2) AS money)
					else cast(round(TotalUnloadedMiles * @ConusRate,2) AS money)end
				 when ISNULL(maxreimburse,0)< TotalUnloadedMiles then 
					case when maxreimburse * @conusrate like '%.__5' then cast(round(MaxReimburse * @ConusRate + .005, 2) AS money)
					else cast(round(MaxReimburse * @ConusRate, 2) AS money) end
			end
		 when @UnloadedMilesTrue = 0 then 0
		 else case when totalunloadedmiles * @CurrentRate like '%.__5' then cast(round(TotalUnloadedMiles * @CurrentRate + .005, 2) as money)  --unloaded miles total billed
					else cast(round(TotalUnloadedMiles * @CurrentRate,2) as money) end
	end) as PaidUnloadedMiles,
SUM(TotalUnloadedMiles) + SUM(TotalLoadedMiles) as TotalTripMiles,
sum(r.[TotalMiles]) as PaidMiles,
[Meals]+ [Misc] as MealsMisc,
--sum((case when TotalLoadedMiles*@CurrentRate like '%.__5' then cast(round(TotalLoadedMiles*@CurrentRate + .005,2) as money)
--	else cast(round(TotalLoadedMiles*@CurrentRate,2) as money)end) + --loaded miles total billed
--	case when @MaxDeadHeadTrue<>0 and isnull(MaxReimburse,0)=0 then 0 
--		 when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 then
--			case when ISNULL(maxreimburse,0)>TotalUnloadedMiles then 
--					case when totalunloadedmiles * @Conusrate like '%.__5' then cast(round(TotalUnloadedMiles * @ConusRate + .005,2) AS money)
--					else cast(round(TotalUnloadedMiles * @ConusRate,2) AS money)end
--				 when ISNULL(maxreimburse,0)< TotalUnloadedMiles then 
--					case when maxreimburse * @conusrate like '%.__5' then cast(round(MaxReimburse * @ConusRate + .005, 2) AS money)
--					else cast(round(MaxReimburse * @ConusRate, 2) AS money) end
--			end
--		 else case when totalunloadedmiles * @CurrentRate like '%.__5' then cast(round(TotalUnloadedMiles * @CurrentRate + .005, 2) as money)  --unloaded miles total billed
--					else cast(round(TotalUnloadedMiles * @CurrentRate,2) as money) end
--	end) as TotalMileageExpense,
	

	case 
		when  sum(isnull(LoadedMilesBilled,0)) = 0 then 0 
		else ISNULL(
			case 
				when @tripfeesTrue <> 0 then 
					(case 
						when max(TripFee) >=20 then 20
						else max(TripFee)
						--when sum(legs) = 1 then 10.00 
						--else 20.00 
					 end) 
				else 0 
			end,0)
	end
	+ sum(cast(round(ISNULL(LoadedMilesBilled,0)+ isnull(UnloadedTripAmount,0),2) + meals + misc
as money))as BillingAmount, --***combines trip fees with total for trip based on miles and insurance rules
		
tblAddress.ezclaimphysicianid,
max(patientid) as PatientID,
max(totals.EzLinkID) as EZLinkID,
max(	(
		case when PendPaperwork = 'S' or pendpaperwork ='SP'   then 'Split Trip. ' else '' end + 
		case when MultipleSplitIndicator = 1 or Tripcount >=3 then 'Multiple Split Trips. ' else '' end + 
		case when SharedTripIndicator = 1 then 'Shared Trip. ' else '' end +
		case when CountFacility > 1 then 'Multiple Facilities. ' else '' end + 
		case when FacilityAddressID = 0 then 'Verify Address Type(s) on Trip. ' else '' end +
		case when tblAddress.EZClaimPhysicianID is null then 'FACILITY NOT IN EZCLAIM - MATCH OR ADD; ' else '' end +
		case when ez.PatientID is null then 'PATIENT NOT IN EZCLAIM - MATCH OR ADD; ' else '' end  +
		case when ez.EZLinkid is null then 'VERIFY PICKUP ADDRESS IS IN ADDRESS TABLE; ' else '' end  +
		case when @insuranceID=2 And ((cast(r.MemberID as varchar(25)) Not Like 'XZG80_______') and (cast(r.MemberID as varchar(25)) Not Like 'XZS80_______')) then 'Verify Insurance ID Number. ' else '' end +
		case when @insuranceID=2 And CAST(r.RepID as varchar(25)) Not Like 'PP___-__' then 'Verify BCBS Group Number. ' else '' end +
		case when @insuranceID=2 And r.RepID Is Null then 'Group Number Required for BCBS. ' else '' end +
		case when @insuranceid=5 And cast(r.MemberID as varchar(25)) Not Like '00_______00' then 'Verify UCare Insurance ID Number. ' else '' end +
		case when @insuranceid=5 And (cast(r.AuthCode as varchar(25)) Not Like 'HR%' or len(cast(r.AuthCode as varchar(25)))<> 9) then 'Verify UCare Auth Code. ' else '' end +
		--case when @insuranceid=5 And len(cast(AuthCode as varchar(25)))<> 9 then 'Verify UCare Auth Code. ' else '' end +
		case when @insuranceid=4 And cast(r.MemberID as varchar(25)) Not Like '_____-_________-00' then 'Verify Medica Insurance ID Number. ' else '' end +
		case when @insuranceid=4 And cast(r.AuthCode as varchar(25)) Like 'H%' then 'Verify Medica Auth Code. ' else '' end +
		case when @insuranceid=4 And cast(r.AuthCode as varchar(25)) Not Like '_________' then 'Verify Medica Auth Code. ' else '' end +
		case when @insuranceid<>29 And len(CAST(r.RepID as varchar(25))) < 5 then 'Verify RepID. ' else '' end +
		case when @insuranceid=29 and r.NoShow = 1 then 'No Show on this claim. ' else '' end +
		case when @insuranceid=29 And len(CAST(r.AuthCode as varchar(25))) <> 6 then 'Verify Auth Code' else '' end
	) )as Warning,
0 as SelectRecord,


@username
--,
--MAX(pendpaperwork) as PendDrPaperwork
 
from
	(

--		----*** TOTALS - groups totals based on CombinedTripID
		Select 
		Count(Distinct TripID) as TripCount,
		CombinedTripID,
		SharedTripIndicator,
		insuranceid,
		minofridedate as 'RideDate',
		client, 
		clientID,
		sum(Legs) as Legs,
		noshow,
		authcode,
		memberid,
		sum(sumofLoadedMiles)as 'TotalLoadedMiles',
		sum(case when @MaxDeadHeadTrue<>0 and isnull(MaxReimburse,0)=0 then 0 
			when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 then
				case when ISNULL(maxreimburse,0)> SumOfunLoadedMiles then SumOfunLoadedMiles
					when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then MaxReimburse
				end
			when @UnloadedMilesTrue =0 then 0
			else sumofUnloadedmiles end) as 'TotalUnloadedMiles',
		sum(sumofLoadedMiles+ case when @MaxDeadHeadTrue<>0 and isnull(MaxReimburse,0)=0 then 0 
			when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 then
				case when ISNULL(maxreimburse,0)> SumOfunLoadedMiles then SumOfunLoadedMiles
					when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then MaxReimburse
				end
				when @UnloadedMilesTrue =0 then 0
			else sumofUnloadedmiles end)  as 'TotalMiles',
		sum(sumofunloadedmiles) as SumOfUnloadedMiles,
		max(drivermeals) as 'Meals',
		max(drivermisc) as 'Misc',
		@UnloadedMilesTrue as UnloadedMilesTrue,
		@AllowMealsTrue as AllowMealsTrue,
		(case when @TripFeesTrue <>0 then (case when sum(legs) = 1 then 10.00 else 20.00 end)else 0 end) as 'TripFee',
		
		sum(cast(round(isnull(fee,0)+ isnull(loadedmilesbill,0) + 
			case when isnull(UnloadedTripAmount,0) * @CurrentRate like '%.__5' then
				 isnull(UnloadedTripAmount,0) * @CurrentRate + .005 
				 else isnull(UnloadedTripAmount,0) * @CurrentRate 
			end, 2) as money)) as 'TotalMileageExpense',
		ezlinkid,
		@username as UserName,
		RepID,
		maxreimburse,
		max(PendingPaperwork)as PendPaperwork,
		sum(LoadedMilesBill) as LoadedMilesBilled,
		sum(unloadedtripamount) as UnloadedTripAmount,
		--SumOfUnloadedMiles as ActualUnloadedMiles,
		Sum(fee) as Fee
		--Fac.facilityAddressID, Fac.facilityname
		,max(MultipleSplitIndicator) as MultipleSplitIndicator
		--,tripidnewsplit
		--,TripdIdOrgSplit

		from 

	( 
	
	--*** ST - SPLIT TRIPS Below code does calculations based on individual legs for the trips - to be combined by above select statement and below group by

		SELECT --DISTINCT 
		t.TripID,
		Min(r.RideDate) AS MinOfRideDate,
		case when t.unloadedreasonid = 9 then 1 else 0 end as SharedTripIndicator,
		case when t.TripdIdOrgSplit IS not null and t.TripIdNewSplit IS not null then 1 else 0 end as MultipleSplitIndicator,
		[clln] + ', ' + [clfn] AS Client, 
		r.ClientID,
	
		CASE	
				--1st when statement is looking at if the current trip was original. it looks at the current trip record and the new split trip record
				--to see if either trips are NOT pending paperwork. Need to filter out CANCELED split trips on the OTHER trip.
				WHEN(isnull([TripdIdOrgSplit],'')<>'' And 
					(select distinct t7.tripcanceled from tblTrip t7 where t7.TripID = ISNULL(t.[TripdIdOrgSplit],0))=0 and 
					ISNULL(t.datereceived,'')<>'' and
					isnull((Select distinct t1.datereceived from tblTrip t1 where t1.tripcanceled = 0 and t1.TripID = isnull(t.[TripdIdOrgSplit],'')),'')<>'')
					Or (isnull([TripIdNewSplit],'')<>'' And 
					(select distinct t8.tripcanceled from tblTrip t8 where t8.TripID = ISNULL(t.[TripIdNewSplit],0)) = 0 and
					ISNULL(t.datereceived,'')<>'' and
					isnull((Select distinct t2.datereceived from tblTrip t2 where t2.tripcanceled = 0 and t2.TripID = isnull(t.[TripIdNewSplit],'')),'')<>'')
					then 'S' --*** Both Trips paperwork Received - just indicate that it is a Split

				WHEN (ISNULL([tripdidorgsplit],0)<>0 and (select distinct t7.tripcanceled from tblTrip t7 where t7.TripID = ISNULL(t.[TripdIdOrgSplit],0))<>0) 
					or (ISNULL([tripdidorgsplit],0)<>0 and (select distinct r7.canceled from tblRide r7 where r7.TripID = ISNULL(t.[TripdIdOrgSplit],0))<>0)then 'S'
				WHEN (ISNULL([TripIdNewSplit],0)<>0 and (select distinct t8.tripcanceled from tblTrip t8 where t8.TripID = ISNULL(t.[TripIdNewSplit],0))<>0) 
					or (ISNULL([TripIdNewSplit],0)<>0 and (select distinct r8.canceled from tblRide r8 where r8.TripID = ISNULL(t.[TripIdNewSplit],0))<>0)then 'S'
				WHEN (isnull([TripdIdOrgSplit],'')<>'' And 
					(select distinct t7.tripcanceled from tblTrip t7 where t7.TripID = ISNULL(t.[TripdIdOrgSplit],0))=0 and 
					ISNULL(t.datereceived,'')='' or
					isnull((Select distinct t3.datereceived from tblTrip t3 where t3.tripcanceled = 0 and t3.TripID = isnull(t.[TripdIdOrgSplit],'')),'')='')
					Or (isnull([TripIdNewSplit],'') <> '' And 
					(select distinct t8.tripcanceled from tblTrip t8 where t8.TripID = ISNULL(t.[TripIdNewSplit],0)) = 0 and
					ISNULL(t.datereceived,'')='' or
					isnull((Select distinct t4.datereceived from tblTrip t4 where t4.tripcanceled=0 and t4.TripID = isnull(t.[TripIdNewSplit],'')),'')='')	
					then 'SP' --***Pending Paperwork on one of the trips - indicate a split and missing info
				WHEN (ISNULL([tripdidorgsplit],0)<>0 and (select distinct t7.tripcanceled from tblTrip t7 where t7.TripID = ISNULL(t.[TripdIdOrgSplit],0))<>0) 
					or (ISNULL([tripdidorgsplit],0)<>0 and (select distinct max(cast(r7.canceled as int)) from tblRide r7 where r7.TripID = ISNULL(t.[TripdIdOrgSplit],0))<>0)then 'S'
				WHEN (ISNULL([TripIdNewSplit],0)<>0 and (select distinct t8.tripcanceled from tblTrip t8 where t8.TripID = ISNULL(t.[TripIdNewSplit],0))<>0) 
					or (ISNULL([TripIdNewSplit],0)<>0 and (select distinct max(cast(r8.canceled as int)) from tblRide r8 where r8.TripID = ISNULL(t.[TripIdNewSplit],0))<>0)then 'S'

				ELSE '' 
			end as PendingPaperwork,
		(Select t5.datereceived from tblTrip t5 where t5.TripID = isnull(t.[TripdIdOrgSplit],0)) as OrigSplitDateRec,
		(Select t6.datereceived from tblTrip t6 where t6.TripID = isnull(t.[TripIdNewSplit],0)) as NewsplitDateRec,
		(select t7.tripcanceled from tblTrip t7 where t7.TripID = ISNULL(t.[TripdIdOrgSplit],0)) as OrigSplitTripCancel,
		(select t8.tripcanceled from tblTrip t8 where t8.TripID = ISNULL(t.[TripIdNewSplit],0)) as NewSplitTripCancel,
		max(t.TripdIdOrgSplit) as TripdIdOrgSplit, 
		max(t.tripidnewsplit) as tripidnewsplit,
		--t.DateReceived,
		isnull(t.MaxReimburse,0)as MaxReimburse,

		Case
			when @TripFeesTrue <> 0 then 10
			else 0 end As Fee,


		case 
			when isnull(t.TripdIdOrgSplit,'')<>'' then t.TripdIdOrgSplit
			else  t.TripID
		end as CombinedTripID, 
		--t.tripid,
		 
	
		Case when  @AllowMealsTrue = 0 then 0 else t.TripDriverMeals end as DriverMeals, 
		Case when  @AllowMealsTrue = 0 then 0 else t.TripDriverMisc end as DriverMisc, 
		r.InsuranceID, 
		Sum(isnull(LoadedMiles,0)) AS SumOfLoadedMiles, 
		Sum(isnull(UnloadedMiles,0)) AS SumOfUnloadedMiles, 
		isnull(r.AuthCode,'') as AuthCode, 
		r.MemberID, 
		Sum(isnull([loadedmiles],0)+isnull([unloadedmiles],0)) AS AllMiles, 
		r.NoShow, 
		i.Insurance, 
		COUNT(r.rideid) as Legs,

		cast(round(sum(case when (isnull( LoadedMiles,0) * @CurrentRate) like '%.__5' then (isnull( LoadedMiles,0) * @CurrentRate +.005)
							else (isnull( LoadedMiles,0) * @CurrentRate) end),2) as money)as LoadedMilesBill,


		sum(case 
			when @MaxDeadHeadTrue<>0 and isnull(t.MaxReimburse,0)=0 then 0
			when @UnloadFedTrue<>0 then cast(round(case when ISNULL(r.UnloadedMiles,0)* @ConusRate like '%.__5' then ISNULL(r.UnloadedMiles,0)* @ConusRate + .005
			else ISNULL(r.UnloadedMiles,0)* @ConusRate end,2)AS money)

			when @UnloadedMilesTrue = 0 then 0 
			else cast(round( case when isnull(r.UnloadedMiles,0)* @CurrentRate like '%.__5' then isnull(r.UnloadedMiles,0)* @CurrentRate +.005
			else isnull(r.UnloadedMiles,0)* @CurrentRate end,2) as money)
		end) AS UnloadedTripAmount, 

		Case when  @AllowMealsTrue <> 0 then
			cast(round(isnull(t.[TripDriverMeals],0)+isnull(t.[TripDriverMisc],0),2) AS money)else 0 end AS MealsMisc,

		isnull(r.RepID,'') as RepID,
		ez.EzLinkID

		FROM tblRide r INNER JOIN tblTrip t ON r.TripID = t.TripID
		INNER JOIN tblClient c ON r.ClientID = c.ClientID
		INNER JOIN tblInsurance i ON r.InsuranceID = i.InsuranceID
		INNER JOIN tblclientinsurance ci on r.ClientInsuranceID = ci.ClientInsuranceID
inner join
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
			 else isnull(ca.ClientAddressID,88888) --the 88888 is to flag that there is no match to a client address id and it is facility to facility
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
		)a  on a.tripID = t.tripID
	right join EzPatientClientLink2 ez on ez.clientid = c.ClientID
	and ez.clientinsuranceID = ci.ClientInsuranceID
	and ez.addressID = a.TripPatientAddressID
	
	
		--**--**--**

		WHERE (
		(r.NoShow = (case when @NoNoShowsTrue = 1 then 0 else 0 end) or 
		r.NoShow = (case when @NoNoShowsTrue = 1 then 0 else 1 end))and
		r.Canceled=0 
		and isnull(t.datereceived,'') + 2 <= getdate()
		AND isnull(t.MIPOnly,0)=0 
		and t.TripTypeId<>6
		and case when t.TripdIdOrgSplit IS not null then t.TripdIdOrgSplit else t.TripID end not in (
			select TripID from EzClaimTripLink
			where Claimid is not null)
		) 
		GROUP BY 
		[clln] + ', ' + [clfn], 
		r.ClientID,
		isnull(t.MaxReimburse,0),
		case when isnull(t.TripdIdOrgSplit,'')<>'' then t.TripdIdOrgSplit else t.TripID end, 
		t.TripID,
		t.TripDriverMeals, 
		t.TripDriverMisc, 
		t.DateReceived, 
		r.InsuranceID,  
		case when t.unloadedreasonid = 9 then 1 else 0 end,
		isnull(r.AuthCode,''), 
		r.MemberID, 
		r.NoShow, 
		i.Insurance, 
		t.TripdIdOrgSplit, 
		t.tripidnewsplit,
		isnull(r.RepID,''),
		ez.EzLinkID

		
		
		HAVING 
		(Min(r.RideDate)Between @startdate And @enddate AND r.InsuranceID=@insuranceid and t.TripIdNewSplit is not null)
		OR (Min(r.RideDate) Between @startdate And @enddate and r.InsuranceID = @insuranceid and t.TripdIdOrgSplit is not null) 

	--	--order by [clln] + ', ' + [clfn], minofridedate, r.authcode

		) ST --split trips

	
	GROUP BY
	minofridedate,
	client, 
	ClientID,
	NoShow,
	authcode,
	memberid,
	maxreimburse,
	CombinedTripID,
	insuranceid,
	RepID,
	ezlinkid,
	SharedTripIndicator
	--,tripidnewsplit
	--,TripdIdOrgSplit



--	--order by Client, MinOfRideDate, AuthCode

	) Totals

			inner join
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
			 else isnull(ca.ClientAddressID,88888) --the 88888 is to flag that there is no match to a client address id and it is facility to facility
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
		)a
 on a.tripID = CombinedTripID
	--------
	left join 
		(
			select COUNT(r20.rideid) as LegNoShowCount
			,r20.TripID as TripID
			from tblRide r20 
			inner join tblTrip t20
			on r20.TripID = t20.TripID
			where r20.NoShow=1 and r20.Canceled=0 and (r20.RideDate Between @startdate And @enddate) AND r20.InsuranceID=@insuranceid and isnull(t20.TripIdNewSplit,0)=0
			group by r20.TripID
		)nslc --No Show Leg Count
	on	nslc.TripID = CombinedTripID
----THIS CODE DOUBLED MILES--- EVIL
	join tblride r on r.tripID =CombinedTripID
	inner join tblclient c on c.ClientID = r.ClientID  
	inner join tblClientInsurance ci on r.ClientInsuranceID = ci.ClientInsuranceID 
	--right join EzPatientClientLink2 ez on ez.clientid = c.ClientID
	--and ez.clientinsuranceID = ci.ClientInsuranceID
	--and ez.addressID = a.TripPatientAddressID

inner join
			(
			Select xx.facilityname, xx.FacilityAddressID, xx.combinedtripid,sequence
			from
			(
			
				Select distinct
					CASE WHEN PUAddressTypeID<>2 then (Select facilityname from tblAddress where AddressID = r5.PUAddressID)
						 WHEN DOAddressTypeID<>2 then FacilityName
						 end
				as FacilityName,
					CASE WHEN PUAddressTypeID<>2 then r5.PUAddressID
						 WHEN DOAddressTypeID<>2 then DOAddressID
						 end as FacilityAddressID,
					case when isnull(t5.TripdIdOrgSplit,'')<>'' then t5.TripdIdOrgSplit else t5.TripID end as CombinedTripID,
				rank() over (partition by case when isnull(t5.TripdIdOrgSplit,'')<>'' then t5.TripdIdOrgSplit else t5.TripID end order by 
				CASE WHEN PUAddressTypeID<>2 then r5.PUAddressID
						 WHEN DOAddresstypeID<>2 then DOAddressID
						 end) as sequence
				from tblRide r5
				inner join tblTrip t5
				on r5.TripID = t5.TripID
				where r5.RideDate Between @startdate And @enddate AND r5.InsuranceID=@insuranceid and r5.Canceled=0 
				and(t5.TripIdNewSplit is not null or t5.TripdIdOrgSplit is not null)
				and SeqNo in (Select MIN(seqno)from tblRide where canceled = 0 )--and (t5.TripdIdOrgSplit=RideID or t5.TripIdNewSplit = RideID))
				--order by case when isnull(t5.TripdIdOrgSplit,'')<>'' then t5.TripdIdOrgSplit else t5.TripID end
				
				) xx
				where sequence = 1--Select distinct
			)Fac
		on Fac.CombinedTripID = totals.CombinedTripID

			inner join
			(
				Select a.CombinedTripID, COUNT(a.FacilityAddressID)as CountFacility
				From
				(	Select distinct
					case when isnull(t5.TripdIdOrgSplit,'')<>'' then t5.TripdIdOrgSplit else t5.TripID end as CombinedTripID,
					--COUNT(t5.tripid) as CountFacility, 				
					CASE WHEN PUAddressTypeID<>2 then r5.PUAddressID
						 WHEN DOAddressID<>2 then DOAddressID
						 end as FacilityAddressID 
					from tblRide r5
					inner join tblTrip t5
					on r5.TripID = t5.TripID
					where ((r5.RideDate Between @startdate And @enddate AND r5.InsuranceID=@insuranceid and t5.TripIdNewSplit is not null)
					OR ((r5.RideDate) Between @startdate And @enddate and r5.InsuranceID = @insuranceid and t5.TripdIdOrgSplit is not null)) and 
					Canceled = 0 
				)a
				group by 
				a.CombinedTripID
			) FacCount
			on FacCount.CombinedTripID = totals.CombinedTripID

	left join tblAddress  --get the ezclaim physicianid
	on Fac.FacilityAddressID = tblAddress.AddressID


left join EzPatientClientLink2 ez
on totals.EzLinkID = ez.EZLinkid
WHERE PendPaperwork = 'S'


Group by

totals.combinedTripID,
r.[RideDate],
client, 
totals.ClientID,
--Legs,
r.NoShow,
FacilityAddressID,
fac.FacilityName,
r.authcode,
r.RepID,
r.MemberID,
MaxReimburse,
[Meals],
[Misc],
UnloadedMilesTrue,
AllowMealsTrue,
--[TripFee],
--[TotalMileageExpense],
--@username,
faccount.CountFacility,
tblAddress.ezclaimphysicianid
--,
--Patientid
--,
--totals.EzLinkID,
	--(
	--	case when PendPaperwork = 'S' or pendpaperwork ='SP'   then 'Split Trip. ' else '' end +  
	--	case when MultipleSplitIndicator = 1 or Tripcount >=3 then 'Multiple Split Trips. ' else '' end + 
	--	case when SharedTripIndicator = 1 then 'Shared Trip. ' else '' end +
	--	case when CountFacility > 1 then 'Multiple Facilities. ' else '' end + 
	--	case when FacilityAddressID = 0 then 'Verify Address Type(s) on Trip. ' else '' end +
	--	case when tblAddress.EZClaimPhysicianID is null then 'FACILITY NOT IN EZCLAIM - MATCH OR ADD; ' else '' end +
	--	case when ez.PatientID is null then 'PATIENT NOT IN EZCLAIM - MATCH OR ADD; ' else '' end  +
	--	case when ez.EZLinkid is null then 'VERIFY PICKUP ADDRESS IS IN ADDRESS TABLE; ' else '' end  +
	--	case when @insuranceID=2 And ((cast(MemberID as varchar(25)) Not Like 'XZG80_______') and (cast(MemberID as varchar(25)) Not Like 'XZS80_______')) then 'Verify Insurance ID Number. ' else '' end +
	--	case when @insuranceID=2 And CAST(RepID as varchar(25)) Not Like 'PP___-__' then 'Verify BCBS Group Number. ' else '' end +
	--	case when @insuranceID=2 And RepID Is Null then 'Group Number Required for BCBS. ' else '' end +
	--	case when @insuranceid=5 And cast(MemberID as varchar(25)) Not Like '00_______00' then 'Verify UCare Insurance ID Number. ' else '' end +
	--	case when @insuranceid=5 And (cast(AuthCode as varchar(25)) Not Like 'HR%' or len(cast(AuthCode as varchar(25)))<> 9) then 'Verify UCare Auth Code. ' else '' end +
	--	--case when @insuranceid=5 And len(cast(AuthCode as varchar(25)))<> 9 then 'Verify UCare Auth Code. ' else '' end +
	--	case when @insuranceid=4 And cast(MemberID as varchar(25)) Not Like '_____-_________-00' then 'Verify Medica Insurance ID Number. ' else '' end +
	--	case when @insuranceid=4 And cast(AuthCode as varchar(25)) Like 'H%' then 'Verify Medica Auth Code. ' else '' end +
	--	case when @insuranceid=4 And cast(AuthCode as varchar(25)) Not Like '_________' then 'Verify Medica Auth Code. ' else '' end +
	--	case when @insuranceid<>29 And len(CAST(RepID as varchar(25))) < 5 then 'Verify RepID. ' else '' end +
	--	case when @insuranceid=29 and NoShow = 1 then 'No Show on this claim. ' else '' end +
	--	case when @insuranceid=29 And len(CAST(AuthCode as varchar(25))) <> 6 then 'Verify Auth Code' else '' end
	--)

--order by Client,RideDate
----order by Client,MinOfRideDate

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----check if the claim was entered manually
----remove it from being entered again
----Facility Match in EzClaim
----***This code appears to be looking at the EZClaim database for the date range of the records being analyzed.
----***If the record in VD has a matched patientID and PhysicianID, it compares that info with the rest of the trip info to get a claimID, if it already exists in EZClaim.
----***Facility Match value is set to 1 - at this point in the code the facilityID has not been matched to EZClaim Physician - this is a flag that runs code later on.



--update EzClaimTripLink
--set claimid = d.claimid,
--    FacilityMatch = 1
----Select claimid
----,
----    FacilityMatch = 1
--from 
--(
--	select ClaimID,b.TripID
--	from (
--		select 
--		PatientID,
--		FacilityClaimFID as EZClaimPhysicianID,
--		ContractID,
--		case when ContractID = 1 then 2
--			 when ContractID  = 9 then 5
--			 when ContractID  = 11 then 29
--			 when ContractID  = 10 then 4
--			 else 0 end as InsuranceID,
--		DTMFirstClaimDate as Ridedate,
--		TotalCharge as BillingAmount,
--		PriorAuthorizationNO as AuthCode,ClaimID
--		from #ClaimFormTable--eztest...[Claim Form Table]
--		where dtmfirstclaimdate between @startdate and @enddate
--	--and patientid = 18444
--	--where patientid = 13401
--		)a
--			inner join 
--			(
--			select pc.patientid,EzClaimPhysicianID, Insuranceid, RideDate, BillingAmount , AuthCode,
--			c.clientid,c.TripID,tblEZClaim_ID
--			from tblezclaim c
--				inner join 
--				(
--				select EzlinkID,patientid from EzPatientClientLink2
--				where Patientid is not null
--				)	 pc
--			on c.EzLinkID = pc.EZLinkid
--			and c.UserName = @username
--			)b 
--	on a.patientid = b.Patientid
--	and a.EZClaimPhysicianID = b.EzClaimPhysicianID 
--	and a.InsuranceID = b.Insuranceid
--	and a.Ridedate = b.RideDate
--	and a.BillingAmount = b.BillingAmount
--	and a.AuthCode = b.AuthCode
--)d
--where EzClaimTripLink.tripid = d.TripID

---------------------------------------------------------------------------------------------
------check if the claim was entered manually
------remove it from being entered again
------Other Facility in EzClaim then in tblride
------***This update statement is similar to the above looking for existing matches in EZClaim...BUT
------***is making sure that Client Name for sure matches a patient ID AND is not looking for matching Facility/Physician IDs.
------***In the event that a manually entered trip in EZClaim had a different PhysicianID than what might be matched from Volunteer


--delete from tblEzClaim
--where BillingAmount = 0


--update EzClaimTripLink
--set claimid = c.claimid,
--    FacilityMatch = 0,
--    DifferentFacilityID = EZClaimPhysicianID
    
--from (
--	select ClaimID,b.TripID,a.EZClaimPhysicianID
--		from (
--				select 
--				PatientID,
--				FacilityClaimFID as EZClaimPhysicianID,
--				case when ContractID = 1 then 2
--				     when ContractID  = 9 then 5
--				     when ContractID  = 11 then 29
--				     when ContractID  = 10 then 4
--				     else 0 end as InsuranceID,
--				DTMFirstClaimDate as Ridedate,
--				TotalCharge as BillingAmount,
--				PriorAuthorizationNO as AuthCode,ClaimID
--				from #ClaimFormTable --eztest...[Claim Form Table]
--			    where dtmfirstclaimdate between @startdate and @enddate

--				----where patientid = 13401
--				)a
--		inner join 
--			(
--			select pc.patientid,EzClaimPhysicianID, Insuranceid, RideDate, BillingAmount , AuthCode,
--			c.clientid,c.TripID,tblEZClaim_ID
--			from tblezclaim c
--			inner join 
--				(
--				select EzlinkID,patientid from EzPatientClientLink2
--				where Patientid is not null
--				) pc
--			on c.EzLinkID = pc.EZLinkid
--			and c.UserName = @username
--			)b 
--on a.patientid = b.Patientid
----remove manually entered claims where physician id is same address but different name
--and a.EZClaimPhysicianID <> b.EzClaimPhysicianID 
--and a.InsuranceID = b.Insuranceid
--and a.Ridedate = b.RideDate
--and a.BillingAmount = b.BillingAmount
--and a.AuthCode = b.AuthCode
--)c
--where EzClaimTripLink.tripid = c.TripID

-----------------------------------------------------------------------------------------
------check if we are about to insert a claim that may match a claim already in database
--update tblEzClaim
--set Warning = Warning + 'Trip with same date/patient/auth code already in EZClaim'
--where TripID in (
--select c.TripID
----, c.RideDate, f.claimid, AuthCode 
--from tblEzClaim c
--inner join #ClaimFormTable f  --eztest...[Claim Form Table] f
--on isnull(c.PatientID,-1) = f.patientid
--and c.UserName = @username
--and c.RideDate = f.DTMFirstClaimDate
--and c.AuthCode<> f.PriorAuthorizationNo
--and contractid in (1,9,11,10)
--)

-------------------------------------------------------------------------------------------
--Update tblEzClaim
----set Warning = Warning + 'Trip isnt linked to an addressid ',
--set Warning = left(Warning + 'Trip isnt linked to an addressid ',254),
--    SelectRecord = 0
--where TripID in (
--select distinct r.TripID
--from tblezclaim e
--inner join tblRide r
--on e.TripID = r.tripid
--where (PUAddressID is null or DOAddressID is null)
--and Canceled = 0
--and e.UserName = @username
--)
-----------------------------------------------------------------------------------------------------
--------***Add warning for trips where there is more than one for the same person on the same day
-----------------------------------------------------------------------------------------------------
--Update tblEzClaim
--set Warning = LEFT(Warning + 'Multiple Trips on Same Day',254),
--    SelectRecord = 0
--from
--tblezclaim e
--inner join 
--	(
--	Select count(m.TripID)as TripCount, m.ClientID, m.RideDate
--	from
--		(
--			select distinct
--			case when t.TripdIdOrgSplit IS not null then t.TripdIdOrgSplit else t.TripID end as tripid,
--			--t.TripID,
--			r.ClientID, r.RideDate--, UserName
--			from tblRide r
--			inner join tblTrip t
--			on r.TripID = t.TripID
--			where r.InsuranceID=@insuranceid and r.Canceled=0 
--			and t.DateReceived is not null and PaymentMadeDate <=GETDATE()
--			--and t.TripdIdOrgSplit is null and t.TripIdNewSplit is null 
--			and (r.RideDate Between @startdate And @enddate) 
--		)M
--	group by m.ClientID, m.RideDate
--	having COUNT(m.TripID) > 1
--	)X
--on e.ridedate = X.RideDate
--and e.clientid = x.ClientID 
--and e.UserName = @username
---------------------------------------------------------------------------------------------

--Update tblEzClaim
--set Warning = LEFT(Warning + 'Ride vs Address facility does not match',254),
--    SelectRecord = 0
--from tblRide r
--inner join tblAddress a
--on a.AddressID = r.DOAddressID
--and r.FacilityName <> a.FacilityName
--where r.TripID = tblEzClaim.TripID
--and Canceled = 0
--and tblEzClaim.UserName = @username

--------Insert new records into EZClaimTripLink so we can track trips to claims
--INSERT INTO [EzClaimTripLink]
--           ([timestamp]
--           ,[Claimid]
--           ,[Tripid]
--           ,[UserName]
--           ,[InsuranceID]
--           ,[EzLinkID])
--select distinct GETDATE(),Null as ClaimID,TripID,SUSER_SNAME(),Insuranceid,EzLinkID
--from tblEzClaim
--where TripID not in (Select tripid from EzClaimTripLink) --only insert new records

--select * from #ClaimFormTable
--drop table #ClaimFormTable
--set ansi_warnings on
