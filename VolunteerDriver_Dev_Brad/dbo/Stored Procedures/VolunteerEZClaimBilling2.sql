
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----***The purpose of this SP is to transform the data from the Rides table and other associated tables to analyze and eventually insert into the EZClaim 
----***billing items table. The following records need to be inserted:
----*+Loaded Miles per leg (and combined with unloaded miles where the allow unloaded miles at contract rate insurance rule exists)
----*Unloaded miles per exceptions covered by insurance rules such as max deadhead miles (as a single record regardless of how many legs have unloaded miles)
----*Trip fees per insurance rule (currently just for BCBS @ $10/leg with a $20 cap per trip, but could be $10 per leg for all legs eventually)
----*(Needs to be added) Bus trips/fees/calculations (similar to calculate as trip fees, but dependant on pickup and dropoff locations)
----***+with handling for split trips
----***(needs to be added?) and handling for multiple trips for same client on same day combined per (need to add) insurance rule.
----------------------------------------------------------------------------------------------------------------------------------------------------------------

------execute VolunteerEZClaimBilling2 2,'2016-06-01','2016-06-30'

CREATE procedure [dbo].[VolunteerEZClaimBilling2] (@insuranceid int, @startdate datetime, @enddate datetime)
as

set nocount on
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS***PARAMETERS
----------------------------------------------------------------------------------------------------------------------------------------------------------------
declare 
        @MaxDeadHeadTrue int, @UnloadedMilesTrue int, @AllowMealsTrue int,
        @NoNoShowsTrue int, @insurance varchar(50),@TripFeesTrue int,@UnloadFedTrue int
        ,@UnloadMilesMod varchar(5)
        

----****Comment out 4 lines of code when not testing        
----stored proc parameters
--,@startdate datetime, @enddate datetime, @insuranceid int
--set @startdate = '2017-08-01'
--set @enddate = '2017-08-31'
--set @insuranceid = 4
-----------------------------
----****This code retrieves the modifier used for unloaded miles (when applicable) for the current insurance
Set @UnloadMilesMod = (select i.ezunloadedmilesmodifier from tblInsurance i where @insuranceid=i.InsuranceID)

-------------------------------------------------------------------------------------------
----****This code retrieves the federal mileage reimbursement rate from the insurance rate table to be used for unloaded mile calculations
declare @ConusRate float

set @ConusRate =(select rateamount 
from tblrate 
where 
((BegDate)<=@startdate) AND ((EndDate) Is Null Or (EndDate)>=@enddate) AND InsuranceProviderID = 14)
-----------------------------------------------------------------------------------------
----****This code retrieve the contract reimbursement rate for loaded miles per the insurance and the time frame of the report and the eligible rate
declare @CurrentRate float

Set @CurrentRate = (select rateamount
from tblRate
where ((BegDate)<=@startdate) AND ((EndDate) Is Null Or (EndDate)>=@enddate) AND InsuranceProviderID = @insuranceid)
------------------------------------------------------------------------------------------
----****The next two sections of code retrieves a value used for EZClaim unique to an insurance for EZClaim usage only
Declare @Diagnosis varchar(10)
Set @Diagnosis = (select ezclaimdiagnosiscode from tblInsurance where InsuranceID = @insuranceid)
----------------------------------------------------
declare @RenderPhyID as integer
set @RenderPhyID = (select ezRenderPhyID from tblInsurance where InsuranceID = @insuranceid)
-------------------------------------------------------
----***retrieves the current username of whomever is logged in and using the program for insert and query criteria purposes throughout code.
declare @username varchar(50)
select @username = SUSER_NAME()

------------------------------------------------------------------------------------------
----****below code transforms the date (stored as date/time) to truly include the end of the end date
Set @EndDate = @EndDate + cast('23:59:59.997' as time)
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----***Clear current user's records from staging table for display in integration window
----------------------------------------------------------------------------------------------------------------------------------------------------------------
--truncate table tblEzClaimBilling2
delete from tblEzClaimBilling2
where UserName = @username
--delete from #tblEzClaimBilling2
--where UserName = @username

--dbcc checkident('tblEzClaimBilling2', RESEED, 0) with no_infomsgs

--------------------------------------------------------------------------------------------------------------------------------
--***Start Brian's code***Start Brian's code***Start Brian's code***Start Brian's code***Start Brian's code***Start Brian's code
--------------------------------------------------------------------------------------------------------------------------------
create table #clienttrip
(
clienttripid int identity(1,1),
ClientID int,
TripID int,
ElderlyWaiver bit,
SeniorFitness bit
)
insert into #clienttrip (ClientID,TripID,ElderlyWaiver,SeniorFitness)
select distinct r.clientid,r.tripid, t.ElderlyWaiver, t.SeniorFitness
from tblTrip t
inner join tblRide r
on t.TripID = r.TripID
and RideDate between @startdate and @enddate
and InsuranceID = @insuranceid
and r.Canceled = 0
and datereceived is not null
-------------------------
--select * from #clienttrip
-------------------------
--and t.TripID in (65037,65389)
--and ClientID = 3789


create table #Split
(tripid int,
TripdIdOrgSplit int)

insert into #Split (tripid,TripdIdOrgSplit)
select distinct t.tripid,TripdIdOrgSplit 
from tblTrip t
inner join tblRide r
on t.TripID = r.tripID
and t.TripdIdOrgSplit is not null
and RideDate between @StartDate and @EndDate
and r.InsuranceID = @Insuranceid
and t.DateReceived is not null
and t.DateReceived + 2 <= GETDATE()
---------------------------
--select * from #Split
-------------------------


update #clienttrip
set TripID = TripdIdOrgSplit
from #Split s
where #clienttrip.TripID = s.tripid
and #clienttrip.TripID not in (select distinct(tripid) from tblRide where Canceled = 1 and InsuranceID = @insuranceid and RideDate between @startdate and @enddate)


	----***COMMENTED OUT REFERENCE TO  delete records from #CLIENTTRIP TABLE - THIS FILTERS OUT SPLIT TRIPS - HAVE TO CHANGE CLIENTID AND TRIP ID REFERENCES IN SELECT STATEMENT AND GROUP BY
	----****TEST ON OTHER INSURANCES BEFORE IMPLEMENTING
--delete from  #clienttrip --This was commented out because it prohibited the unloaded miles for split trips for UCare to not be created.
--from #Split s
--where --#clienttrip.TripID = s.tripid and 
--#clienttrip.TripID in (select tripid from #clienttrip group by TripID having COUNT(1) > 1)

delete from  #clienttrip 
where 
#clienttrip.ClientTripID in (select ClientTripID from ((select tripid, max(ClientTripID) as ClientTripID from #clienttrip where tripid in (select tripid from #clienttrip group by TripID having COUNT(1) > 1) group by tripid))a)

-------------------------
--select * from #clienttrip
--order by TripID
-------------------------
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
-----------------------------------------------------

-------------------------

CREATE TABLE #tblEzClaimBilling2(
	[EzBillingID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NULL,
	[TripID] [int] NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[SeqNo] [int] NULL,
	[EW] [bit] NULL,
	[OverNight] [bit] NULL,
	[Canceled] [bit] NULL,
	[NoShow] [bit] NULL,
	[SF] [bit] NULL,
	[Pickup] [varchar](255) NULL,
	[DropOff] [varchar](255) NULL,
	[Start Time] [datetime] NULL,
	[End Time] [datetime] NULL,
	[Place] [varchar](5) NULL,
	[Diagnosis] [varchar](10) NULL,
	[Charges] [money] NULL,
	[Fdays] [int] NULL,
	LineItemDescription varchar(255) null,
	[LineItemGuid] [uniqueidentifier] NULL,
	[CPT] [varchar](48) NULL,
	[Modifier] [varchar](20) NULL,
	[AllowedAmount] [money] NULL,
	[PayorAmountPaid] [money] NULL,
	[PurSvcCharge] [money] NULL,
	[CurrencyCol1] [money] NULL,
	[CurrencyCol2] [money] NULL,
	[CurrencyCol3] [money] NULL,
	[CurrencyCol4] [money] NULL,
	[CurrencyCol5] [money] NULL,
	[CurrencyCol6] [money] NULL,
	[CurrencyCol7] [money] NULL,
	[CurrencyCol8] [money] NULL,
	[CoPayAmountDue] [money] NULL,
	[ApprovedAmt] [money] NULL,
	[ExportedDateTime] [datetime] NULL,
	[ExportedUserName] [varchar](50) NULL,
	[PUAddressID] [int] NULL,
	[DOAddressID] [int] NULL,
	[InsuranceID] [int] NULL,
	[SplitTripID] [int] NULL)


--need to retrieve the claimid to insert here
----------------------------------------------------------------------------------------------------------------------------------------------------------------
---***LOADED MILES - NOT SPLIT***LOADED MILES - NOT SPLIT***LOADED MILES - NOT SPLIT***LOADED MILES - NOT SPLIT***LOADED MILES - NOT SPLIT***LOADED MILES - NOT SPLIT
----------------------------------------------------------------------------------------------------------------------------------------------------------------
/*********************************************************************************************/
	insert into #tblEzClaimBilling2(
	ClientID,[TripID],[FromDate],[ToDate],[SeqNo],[EW],[OverNight],
	[Canceled],
	[NoShow],[SF]
	--,[InEzClaim]
	,[Pickup],[DropOff],[Start Time],[End Time],PUAddressID,DOAddressID,
	[Place],[Diagnosis],[Charges]
	,[Fdays],[lineItemDescription],[LineItemGuid],
	[CPT],[Modifier],[AllowedAmount],[PayorAmountPaid],[PurSvcCharge]
	,[CurrencyCol1],[CurrencyCol2],[CurrencyCol3],[CurrencyCol4],[CurrencyCol5],[CurrencyCol6]
	,[CurrencyCol7],[CurrencyCol8],[CoPayAmountDue],[ApprovedAmt]
	--, @today
	--, (suser_sname())
	--, @insuranceid
	--,SplitTripID
	)
---------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------
---***This first set of code is worked up to accurately reflect insurance billing rules for NON-SPLIT trips, including max deadhead miles and unloaded miles at
---***at contract rate
----------------------------------------------------------------------------------------------------------------------------------------------------------------
	select --NULL as ClaimID, 
	ct.ClientID,ct.TripID,--PatientID,--ca.EzClaimPatientID as PatientID,
	pt.RideDate as FromDate, pt.RideDate as ToDate, --pt.SeqNo,
	RANK() over (partition by ct.tripid order by [start time]) as SeqNO, 
	EW, Overnight, 
	Canceled, 
	NoShow, SF, --InEzClaim,
	PickUp,DropOff,
	[Start Time],[End Time],PUAddressID,DOAddressID,
	99 as Place, 'A' as Diagnosis,
	cast(round(case when @UnloadedMilesTrue = 1 then UnloadedTripAmount + LoadedBillingTotal else LoadedBillingTotal end,2)as money) as Charges,
	--cast(round(LoadedBillingTotal,2) as money) as Charges, --calculation from loadedmiles and rate
	case when @UnloadedMilesTrue = 1 and @UnloadMilesMod is null then unloadedmiles + LoadedMiles else loadedmiles end as FDays, --case statement combines loaded and unloaded for Medica - but separates for Ucare
	--cast(round(LoadedMiles,0) as int) as Fdays,  --FDays is number of UNITS - so for loaded miles is number of miles. for trip fees would be 1 per trip fee record.
	case when @insuranceid=5 then AuthCode else '' end as LineItemDescription, --only for UCare --hardcoded! Add to an EZClaim insurance rule table?
	NEWID() as LineItemGUID,
	'A0080' as CPT, --this is the standard transportation procedure code representing Volunteer Services Mileage. ***City Bus is A0110.*** Pickup for volunteer is T2003
	Replace((PUModifier + DOModifier),' ','') + case when ct.ElderlyWaiver = 1 then 'UC' else (case when ct.SeniorFitness = 1 then 'SF' else '' end ) end
	as Modifier,--there were blanks
	AllowedAmount = 0.00,
	PayorAmountPaid = 0.00,
	PurSvcCharge = 0.00,
	CurrencyCol1 = 0.00,
	CurrencyCol2 = 0.00,
	CurrencyCol3 = 0.00,
	CurrencyCol4 = 0.00,
	CurrencyCol5 = 0.00,
	CurrencyCol6 = 0.00,
	CurrencyCol7 = 0.00,
	CurrencyCol8 = 0.00,
	CoPayAmountDue = 0.00,
	ApprovedAmt = 0.00
	--,
	--SplitTripID    
	--'DR'
	--pt.PUAddressID,a.EZClaimPhysicianID as FacilityClaimFID,
	--pt.SeqNo 
	--pt.*
    from (
		SELECT r.ClientID, --t.TripID, 
		case when TripdIdOrgSplit is not null then TripdIdOrgSplit else t.TripID end as TripID,
		t.TripdIdOrgSplit, t.TripIdNewSplit,
		(r.RideDate) AS RideDate, 
		r.SeqNo,
		--case when TripdidOrgSplit is not null then r.SeqNo + 1 else r.SeqNo end as SeqNo,
		t.ElderlyWaiver AS EW, R.Overnight, 
		R.Canceled, 
		R.NoShow, t.SeniorFitness AS SF, --R.InEzClaim,
		pua.FacilityName + ' ' + [rpickupaddress] + ', ' + [rpickupcity] + ', ' + [rpickupstate] + '  ' + cast([rpickupzip] AS Varchar(10)) + '-' + cast([rpickupzip4]as Varchar(10)) AS Pickup, 
        --cast(R.RStartTime as Time) AS [Start Time], cast(R.REndTime as Time) AS [End Time],
         R.RStartTime AS [Start Time], R.REndTime AS [End Time],
        PUAddressID,DOAddressID,
        doa.facilityname + ' ' + [rdropoffaddress] + ', ' + [rdropoffcity] + ', ' + [rdropoffstate] + '  ' + cast([rdropoffzip]AS Varchar(10)) + '-' + cast([rdropoffzip4] as varchar(10)) AS DropOff,
		round((isnull([loadedmiles],0))*@CurrentRate,2) AS LoadedBillingTotal,
			Cast(round(
		case 
			when @MaxDeadHeadTrue<>0 and isnull(t.MaxReimburse,0)=0 then 0
			--when @MaxDeadHeadTrue <> 0 and ISNULL(t.maxreimburse,0)<>0 then 0
			when @UnloadFedTrue<>0 then cast(round(case when ISNULL(r.UnloadedMiles,0)* @ConusRate like '%.__5' then ISNULL(r.UnloadedMiles,0)* @ConusRate +.005
														else ISNULL(r.UnloadedMiles,0)* @ConusRate 
														end,2)AS money)
			when @UnloadedMilesTrue <> 0 and isnull(@UnloadMilesMod,0) <> '52' then ISNULL(r.unloadedmiles,0) * @CurrentRate
			--when @UnloadedMilesTrue <> 0 and @maxdeadheadtrue = 0 then 0
			else 0 
		end,2) as money) AS UnloadedTripAmount, 
		r.LoadedMiles,
		r.UnloadedMiles,
		r.AuthCode,
		isnull(atpu.Modifier,'Fix') as PUModifier,ISNULL(atdo.Modifier,'Fix') as DOModifier
		--,
		--case when TripdIdOrgSplit is not null then t.TripId else Null end as SplitTripID
		FROM tblRide r 
		INNER JOIN tblTrip t 
		ON r.TripID = t.TripID 
		and DateReceived is not null
		INNER JOIN tblClient 
		ON r.ClientID = tblClient.ClientID
		left join tblAddressType atpu
		on r.PUAddressTypeID = atpu.AddressTypeID
		left join tblAddressType atdo
		on r.DOAddressTypeID = atdo.AddressTypeID
	    left join tblAddress pua
		on r.PUAddressID = pua.AddressID
		left join tblAddress doa
		on r.DOAddressID = doa.AddressID
		WHERE (r.Canceled=0) and
		r.ClientID is not null and
		t.TripdIdOrgSplit is null and t.TripIdNewSplit is null and
		(r.RideDate Between @startdate And @enddate) AND 
		(r.InsuranceID=@insuranceid) AND (t.TripTypeId<>6) and
		datereceived is not null and
		datereceived + 2 <= getdate() and
		--t.PaymentMadeDate <= getdate() and
		--if NoNoShow rule is true then only show records with noshow = 0
		--otherwise show records that have 0 or 1
		(r.NoShow = (case when @NoNoShowsTrue = 1 then 0 else 0 end) or 
		r.NoShow = (case when @NoNoShowsTrue = 1 then 0 else 1 end))
		--order by TripID, SeqNo
    ) pt
	--inner join EzPatientClientLink e
	--on pt.ClientID = e.clientid
	inner join #clienttrip ct
	on pt.ClientID = ct.ClientID
	and pt.TripID = ct.TripID
	--where pt.TripID = @tripid
--end

----------------------------------------------------------------------------------------------------------------------------------------------------------------
----***UNLOADED MILES***UNLOADED MILES***UNLOADED MILES***UNLOADED MILES***UNLOADED MILES***UNLOADED MILES***UNLOADED MILES***UNLOADED MILES***UNLOADED MILES
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----Begin
insert into #tblEzClaimBilling2(
ClientID,[TripID],[FromDate],[ToDate],[SeqNo],[EW],[OverNight],[Canceled],[NoShow],[SF], --[InEzClaim],
[Pickup],[DropOff],[Start Time],[End Time],PUAddressID,DOAddressID,
[Place],[Diagnosis],[Charges]
,[Fdays],LineItemDescription,[LineItemGuid],
[CPT],[Modifier],[AllowedAmount],[PayorAmountPaid],[PurSvcCharge]
,[CurrencyCol1],[CurrencyCol2],[CurrencyCol3],[CurrencyCol4],[CurrencyCol5],[CurrencyCol6]
,[CurrencyCol7],[CurrencyCol8],[CoPayAmountDue],[ApprovedAmt],SplitTripID
)
----------------------------------------------------------------------------------------------------------------------------------------------------------------
---***This code calculates UNLOADED miles line item records with correct modifiers and calculations per insurance rules
----------------------------------------------------------------------------------------------------------------------------------------------------------------
 	select --NULL as ClaimID, 
 	--ct.ClientID, ct.tripid, --PatientID,--ca.EzClaimPatientID as PatientID,
 	pt.clientid, pt.TripID,
 	min(pt.RideDate) as FromDate, min(pt.RideDate) as ToDate, 10 as SeqNo,
 	Null as EW,Null as OverNight,Null as Canceled,null as NoShow, null as SF,
 	--Null as InEzClaim,
 	Null as Pickup,null as Dropoff,'1900-01-01 00:00:00' as [Start Time],'1900-01-01 00:00:00'as [End Time],
 	NULL as PUAddressID, NULL as DOAddressID,
	99 as Place, 'A' as Diagnosis,
	UnloadedBillingTotal as Charges, --calculation from unloadedmiles and rate
	cast(round(max(fdays),0) as int) as Fdays,  --this is the miles
	case when @insuranceid = 5 then Max(AuthCode) else Null end  as LineItemDescription, --only for UCare
	NEWID() as LineItemGUID,
		'A0080' as CPT,
	--case when @insuranceid = 29 then 'S0125'
	--	 else 'A0080' end as CPT,
	
	----***Unloaded Miles have different modifiers than loaded miles. These are the current business rules. Note that Medica (ID4) does not bill unloaded miles separately
	----***Medica bundles loaded and unloaded miles completely and charges all at contract rate
	case when @UnloadMilesMod IS not null then @UnloadMilesMod
		 else 'Fix' end as Modifier,

	--case when @insuranceid = 2 or @insuranceid = 29 then 'TP' 
	--     when @insuranceid = 5 then '52'
	--     else 'Fix' end as Modifier,
	AllowedAmount = 0.00,
	PayorAmountPaid = 0.00,
	PurSvcCharge = 0.00,
	CurrencyCol1 = 0.00,
	CurrencyCol2 = 0.00,
	CurrencyCol3 = 0.00,
	CurrencyCol4 = 0.00,
	CurrencyCol5 = 0.00,
	CurrencyCol6 = 0.00,
	CurrencyCol7 = 0.00,
	CurrencyCol8 = 0.00,
	CoPayAmountDue = 0.00,
	ApprovedAmt = 0.00,
	max(SplitTripID) as SplitTripID     
	from (
		select ClientID, TripID,
		min(RideDate) as RideDate,
		--SUM(b.unloadedmiles)as SumOfUnloadedMiles,
		maxdeadhead,
		--test for insurance that sets a max to the unloaded miles
		case when @insuranceid = 4 then 0
			 when @MaxDeadHeadTrue = 1 and @UnloadFedTrue = 1 then 
				(case when round(Min(MaxDeadHead) * @ConusRate,2) >= SUM(UnloadedMiles)*@ConusRate then SUM(UnloadedMiles)*@ConusRate
		              else round(MIN(MaxDeadHead) * @ConusRate,2)
		         end) 
		     when @MaxDeadHeadTrue = 0 and @UnloadFedTrue = 1 then sum(unloadedmiles)* @ConusRate
		     else SUM(UnloadedMiles)*@CurrentRate 
		end as UnloadedBillingTotal,
		case when @insuranceid = 4 then 0
			 when @MaxDeadHeadTrue = 1 and @UnloadFedTrue = 1 then 
				(case when round(Min(MaxDeadHead),2) >= SUM(UnloadedMiles) then SUM(UnloadedMiles)
					  else round(MIN(MaxDeadHead),2)
				 end) 
		     when @MaxDeadHeadTrue = 0 and @UnloadFedTrue = 1 then sum(unloadedmiles)
		     else SUM(UnloadedMiles)
		end as PaidUnloadedMiles,
		Max(SplitTripID) as SplitTripID,Max(AuthCode) as AuthCode,
		case when @MaxDeadHeadTrue = 1 then 
				(case when Min(MaxDeadHead) >= SUM(fdays) then SUM(fdays)
					  else MIN(MaxDeadHead)
				 end) 
		     else SUM(fdays) 
		end as fdays		
		from (
			SELECT --t.TripID,
		
			case when TripdIdOrgSplit is not null then TripdIdOrgSplit else t.TripID end as TripID, 
			r.ClientID, isnull(MaxReimburse,0) as MaxDeadHead, 	r.UnloadedMiles,(r.RideDate) AS RideDate,
			--case when @insuranceid = 2 then  
			--case when @MaxDeadHeadTrue = 1 and isnull(maxreimburse,0) <> 0 then round((isnull(r.Unloadedmiles,0))* @ConusRate,2) 
			--	 when @MaxDeadHeadTrue = 0 and @UnloadedMilesTrue=1 and @insuranceid <> 4 then  round((isnull(r.Unloadedmiles,0))*@CurrentRate,2) 
			--	 else 0
			--end AS UnLoadedBillingTotal,
			--ir.MaxDeadHead as MaxDeadHeadRule,
			case when TripdIdOrgSplit is not null then t.TripId 
				 else Null 
			end as SplitTripID,
			r.AuthCode,ISNULL(r.Unloadedmiles,0) as fdays
			FROM tblRide r 
			INNER JOIN tblTrip t 
			ON r.TripID = t.TripID 
			and t.DateReceived is not null
			INNER JOIN tblClient 
			ON r.ClientID = tblClient.ClientID
			WHERE (r.Canceled=0) and
			r.ClientID is not null and
			(r.RideDate Between @startdate And @enddate) AND 
			(r.InsuranceID=@insuranceid) AND (t.TripTypeId<>6) and
			(r.NoShow = (case when @NoNoShowsTrue = 1 then 0 else 0 end) or 
		    r.NoShow = (case when @NoNoShowsTrue = 1 then 0 else 1 end))
		    
		    --order by TripID
		)b
		group by TripID,ClientID,MaxDeadHead
	) pt
	--inner join EzPatientClientLink e
	--on pt.ClientID = e.clientid
	

	inner join #clienttrip ct
	on pt.ClientID = ct.ClientID
	and pt.TripID = ct.TripID

	where UnloadedBillingTotal > 0
	--and SplitTripID is not null
	
--	--and ct.ClientID = 1322
--	--and pt.TripID = 63663
--	--inner join tblinsurance i
--	--on pt.insurance = i.insurance
--	--where pt.TripID = @tripid
	group by --ct.ClientID,ct.TripID,--patientid, 
	 	pt.clientid, pt.tripid,
	UnloadedBillingTotal
	
	--order by TripID



----------------------------------------------------------------------------------------------------------------------------------------------------------------
--***Claim Load converted to Billing load SP Code for split trips below - code below does not use temp tables that are deleted above
----***SPLIT TRIP***SPLIT TRIP***SPLIT TRIP***SPLIT TRIP***SPLIT TRIP***SPLIT TRIP***SPLIT TRIP***SPLIT TRIP***SPLIT TRIP***SPLIT TRIP***SPLIT TRIP***SPLIT TRIP
----------------------------------------------------------------------------------------------------------------------------------------------------------------
	insert into #tblEzClaimBilling2(
	ClientID,[TripID],[FromDate],[ToDate],[SeqNo],[EW],[OverNight], [Canceled], [NoShow],[SF]
	,[Pickup],[DropOff],[Start Time],[End Time],PUAddressID,DOAddressID,
	[Place],[Diagnosis],[Charges]
	,[Fdays],[LineItemDescription],[LineItemGuid],
	[CPT],[Modifier],[AllowedAmount],[PayorAmountPaid],[PurSvcCharge]
	,[CurrencyCol1],[CurrencyCol2],[CurrencyCol3],[CurrencyCol4],[CurrencyCol5],[CurrencyCol6]
	,[CurrencyCol7],[CurrencyCol8],[CoPayAmountDue],[ApprovedAmt], [SplitTripID]
	)
----------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	Select
		split.ClientID, split.CombinedTripID as TripID,split.MinOfRideDate as FromDate, split.MinOfRideDate as ToDate, 
		RANK() over (partition by combinedtripid order by split.rstarttime) as SeqNO,
		--split.SeqNo, 
		split.EW, split.Overnight, split.canceled,split.NoShow,
		split.SF, split.Pickup, split.DropOff, split.RStartTime as StartTime, split.REndTime as EndTime,
		split.PUAddressID, split.DOAddressID, 
		99 as Place, --Always 99 for transportation services 
		'A' as Diagnosis, -- field name in EZClaim - possibly refers to Box A for the procedure/diagnosis code?
		case when @UnloadedMilesTrue = 1 and @UnloadMilesMod IS null then UnloadedTripAmount + LoadedMilesBill else loadedmilesbill end as Charges,
		--Sum(isnull(LoadedMilesBill,2)) as Charges, --calculation from loadedmiles and rate
		case when @UnloadedMilesTrue = 1 and @UnloadMilesMod IS null then SumOfLoadedMiles + SumOfUnloadedMiles else sumofloadedmiles end as Fdays,
		--cast(round(SumOfLoadedMiles,0) as int) as Fdays,  --FDays is number of UNITS - so for loaded miles is number of miles. for trip fees would be 1 per trip fee record.
		--not sure how this is derived it isnt always same as charges
		case when @insuranceid=5 then AuthCode else '' end as LineItemDescription, --only for UCare 
		NEWID() as LineItemGUID,
		'A0080' as CPT,
		Replace((isnull(split.PUModifier,'Fix') + ISNULL(Split.DOModifier,'Fix')),' ','') + case when split.EW = 1 then 'UC' else (case when split.SF = 1 then 'SF' else '' end ) end
		as Modifier,--there were blanks
		AllowedAmount = 0.00,
		PayorAmountPaid = 0.00,
		PurSvcCharge = 0.00,
		CurrencyCol1 = 0.00,
		CurrencyCol2 = 0.00,
		CurrencyCol3 = 0.00,
		CurrencyCol4 = 0.00,
		CurrencyCol5 = 0.00,
		CurrencyCol6 = 0.00,
		CurrencyCol7 = 0.00,
		CurrencyCol8 = 0.00,
		CoPayAmountDue = 0.00,
		ApprovedAmt = 0.00,
		split.tripidnewsplit as SplitTripID
	from
	(	--SPLIT TRIP INDIVIDUAL LEGS with Calculations below
		SELECT --DISTINCT 
		r.ClientID,
		case 
			when isnull(t.TripdIdOrgSplit,'')<>'' then t.TripdIdOrgSplit
			else  t.TripID
		end as CombinedTripID,
		Min(r.RideDate) AS MinOfRideDate, 
		r.SeqNo,
		[clln] + ', ' + [clfn] AS Client, 
		isnull(t.SeniorFitness,0) as SF, 
		isnull(t.ElderlyWaiver,0) as EW,
		isnull(r.NoShow,0) as NoShow, isnull(t.overnight,0) as Overnight, r.Canceled,r.rstarttime, r.rendtime,
		r.puaddressid, r.doaddressid, 
		case when pua.EZClaimPhysicianID IS NULL then doa.EZClaimPhysicianID when doa.EZClaimPhysicianID is null then pua.ezclaimphysicianid else 0 end as FacilityID,
		pua.FacilityName + ' ' + [rpickupaddress] + ', ' + [rpickupcity] + ', ' + [rpickupstate] + '  ' + cast([rpickupzip] AS Varchar(10)) + '-' + cast([rpickupzip4]as Varchar(10)) AS Pickup, 
        doa.facilityname + ' ' + [rdropoffaddress] + ', ' + [rdropoffcity] + ', ' + [rdropoffstate] + '  ' + cast([rdropoffzip]AS Varchar(10)) + '-' + cast([rdropoffzip4] as varchar(10)) AS DropOff,
		isnull(atpu.Modifier,'Fix') as PUModifier,ISNULL(atdo.Modifier,'Fix') as DOModifier,
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


 
		--t.tripid,
		 
	
		Case when  @AllowMealsTrue = 0 then 0 else t.TripDriverMeals end as DriverMeals, 
		Case when  @AllowMealsTrue = 0 then 0 else t.TripDriverMisc end as DriverMisc, 
		r.InsuranceID, 
		Sum(isnull(LoadedMiles,0)) AS SumOfLoadedMiles, 
		Sum(isnull(UnloadedMiles,0)) AS SumOfUnloadedMiles, 
		isnull(r.AuthCode,'') as AuthCode, 
		r.MemberID, 
		Sum(isnull([loadedmiles],0)+isnull([unloadedmiles],0)) AS AllMiles, 

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
		r.EzLinkID

		FROM tblRide r INNER JOIN tblTrip t ON r.TripID = t.TripID
		INNER JOIN tblClient c ON r.ClientID = c.ClientID
		INNER JOIN tblInsurance i ON r.InsuranceID = i.InsuranceID
	    left join tblAddress pua on r.PUAddressID = pua.AddressID
		left join tblAddress doa on r.DOAddressID = doa.AddressID
		left join tblAddressType atpu on r.PUAddressTypeID = atpu.AddressTypeID
		left join tblAddressType atdo on r.DOAddressTypeID = atdo.AddressTypeID

		WHERE (
		(r.NoShow =(Case when @NoNoShowsTrue = 1 then 0 else NoShow end) )and
		r.Canceled=0 
		and isnull(t.datereceived,'')<>''
		and datereceived + 2 <= GETDATE()
		AND (t.MIPOnly=0 Or t.MIPOnly Is Null) 
		and t.TripTypeId<>6
		) 
		GROUP BY 
		[clln] + ', ' + [clfn], 
		r.ClientID,
		 t.SeniorFitness, t.ElderlyWaiver,
		isnull(t.MaxReimburse,0), t.overnight, r.Canceled,
		r.SeqNo, r.rstarttime, r.rendtime,
		r.puaddressid, r.doaddressid, 
		case when pua.EZClaimPhysicianID IS NULL then doa.EZClaimPhysicianID when doa.EZClaimPhysicianID is null then pua.ezclaimphysicianid else 0 end ,
		case when isnull(t.TripdIdOrgSplit,'')<>'' then t.TripdIdOrgSplit else t.TripID end, 
		pua.FacilityName + ' ' + [rpickupaddress] + ', ' + [rpickupcity] + ', ' + [rpickupstate] + '  ' + cast([rpickupzip] AS Varchar(10)) + '-' + cast([rpickupzip4]as Varchar(10)), 
        doa.facilityname + ' ' + [rdropoffaddress] + ', ' + [rdropoffcity] + ', ' + [rdropoffstate] + '  ' + cast([rdropoffzip]AS Varchar(10)) + '-' + cast([rdropoffzip4] as varchar(10)),		
		isnull(atpu.Modifier,'Fix'),ISNULL(atdo.Modifier,'Fix'),
		--t.TripID,
		t.TripDriverMeals, 
		t.TripDriverMisc, 
		t.DateReceived, 
		r.InsuranceID,  

		isnull(r.AuthCode,''), 
		r.MemberID, 
		r.NoShow, 
		i.Insurance, 
		t.TripdIdOrgSplit, 
		t.tripidnewsplit,
		isnull(r.RepID,''),
		r.EzLinkID
		
		
		HAVING 
		(Min(r.RideDate)Between @startdate And @enddate AND r.InsuranceID=@insuranceid and t.TripIdNewSplit is not null)
		OR (Min(r.RideDate) Between @startdate And @enddate and r.InsuranceID = @insuranceid and t.TripdIdOrgSplit is not null)
	)Split 
	group by
		split.ClientID, 
		split.CombinedTripID,
		split.MinOfRideDate, 
		split.MinOfRideDate, 
		split.SeqNo, split.EW, 
		split.overnight,
		split.canceled, 
		split.NoShow,
		split.sf, 
		split.Pickup, 
		split.DropOff, 
		split.RStartTime, 
		split.REndTime,
		split.PUAddressID, 
		split.DOAddressID, 
		--case when @UnloadedMilesTrue = 1 then SumOfLoadedMiles + SumOfUnloadedMiles else sumofloadedmiles end,
		--case when @UnloadedMilesTrue = 1 then UnloadedTripAmount + LoadedMilesBill else loadedmilesbill end,
		case when @UnloadedMilesTrue = 1 and @UnloadMilesMod IS null then UnloadedTripAmount + LoadedMilesBill else loadedmilesbill end,
		case when @UnloadedMilesTrue = 1 and @UnloadMilesMod IS null then SumOfLoadedMiles + SumOfUnloadedMiles else sumofloadedmiles end,
		AuthCode, --only for UCare --what is default?
		split.tripidnewsplit,
		Replace((isnull(split.PUModifier,'Fix') + ISNULL(Split.DOModifier,'Fix')),' ','') + case when split.EW = 1 then 'UC' else (case when split.SF = 1 then 'SF' else '' end ) end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----***Trip Fees***Trip Fees***Trip Fees***Trip Fees***Trip Fees***Trip Fees***Trip Fees***Trip Fees***Trip Fees***Trip Fees***Trip Fees***Trip Fees***Trip Fees***Trip Fees***Trip Fees
----***Note - this code is almost identical to the loaded miles insert statement above - the only difference is change in charges to flat fee and quantity of units Fday from 
----***mile count to single unit for the fee.
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into #tblEzClaimBilling2(
ClientID,[TripID],[FromDate],[ToDate],[SeqNo],[EW],[OverNight],[Canceled],[NoShow],[SF], --[InEzClaim],
[Pickup],[DropOff],[Start Time],[End Time],PUAddressID,DOAddressID,
[Place],[Diagnosis],[Charges]
,[Fdays],LineItemDescription,[LineItemGuid],
[CPT],[Modifier],[AllowedAmount],[PayorAmountPaid],[PurSvcCharge]
,[CurrencyCol1],[CurrencyCol2],[CurrencyCol3],[CurrencyCol4],[CurrencyCol5],[CurrencyCol6]
,[CurrencyCol7],[CurrencyCol8],[CoPayAmountDue],[ApprovedAmt]
--,SplitTripID
)
------------------------------------------------------------------------------------------------------------------
select
ClientID,[TripID],[FromDate],[ToDate],[SeqNo],[EW],[OverNight],[Canceled],[NoShow],[SF], --[InEzClaim],
[Pickup],[DropOff],[Start Time],[End Time],PUAddressID,DOAddressID,
[Place],[Diagnosis],[Charges],[Fdays],
LineItemDescription,[LineItemGuid],
[CPT],[Modifier],[AllowedAmount],[PayorAmountPaid],[PurSvcCharge]
,[CurrencyCol1],[CurrencyCol2],[CurrencyCol3],[CurrencyCol4],[CurrencyCol5],[CurrencyCol6]
,[CurrencyCol7],[CurrencyCol8],[CoPayAmountDue],[ApprovedAmt]from
	
	(
	select	
	ClientID,e.[TripID],[FromDate],[ToDate],[SeqNo],[EW],[OverNight],[Canceled],[NoShow],[SF], --[InEzClaim],
	[Pickup],[DropOff],[Start Time],[End Time],PUAddressID,DOAddressID,
	[Place],[Diagnosis],--[Charges]
	----***Note - if ever the business rules change where a trip fee is allowed for every leg, remove the commented code in the two case statements below
	----***and comment out the case statements  for charges and fdays that are currently used.
	
	--case when @TripFeesTrue = 1 then 10 else 0 end as  Charges,
	--case when @tripfeestrue = 1 then 1 else 0 end as Fdays,
	abc.lastleg,
	--case when @TripFeesTrue = 1 and e.SeqNo = 1  then 10 
		 --when @TripFeesTrue = 1 and e.SeqNo = abc.LastLeg then 10	
    case when @TripFeesTrue = 1 then 10 		
		 else 0 end as  Charges,
	--case when @tripfeestrue = 1 and e.seqno = 1  then 1 
	--	when @TripFeesTrue = 1 and e.SeqNo = abc.LastLeg then 1
	case when @tripfeestrue = 1 then 1 
		 else 0 end as Fdays,
	--,[Fdays],
	LineItemDescription,[LineItemGuid],
	'A0100' as [CPT],[Modifier],[AllowedAmount],[PayorAmountPaid],[PurSvcCharge]
	,[CurrencyCol1],[CurrencyCol2],[CurrencyCol3],[CurrencyCol4],[CurrencyCol5],[CurrencyCol6]
	,[CurrencyCol7],[CurrencyCol8],[CoPayAmountDue],[ApprovedAmt]

	from #tblEzClaimBilling2 e
	inner join
		(
		select MAX(SeqNo) as LastLeg, TripID 
		from #tblEzClaimBilling2
		group by TripID
		) ABC
	on abc.TripID = e.TripID
	)Fees
where Charges <> 0 and modifier <> 'TP'


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES***UPDATES
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----***remove no show where charges are 0 or other 0 charges
delete from #tblEzClaimBilling2
where Charges = 0

----***Add warning if the modifiers aren't correct for insurance billing purposes
update tblEzClaim
set Warning = Warning + 'Fix Address Type;',
    SelectRecord = 0
where TripID in (
select distinct(TripID )
from tblEzClaimBilling2 e
where CHARINDEX('fix',modifier) > 0
and e.UserName = @username
)
and tblEzClaim.UserName = @username


--Select * from #tblEzClaimBilling2
--order by TripID

--------------------------------------------------------------------------------------------------
----***Populate ACTUAL table/data source of billing items records on Access Claim subform
--------------------------------------------------------------------------------------------------	
insert into tblEzClaimBilling2(
ClientID,[TripID],[FromDate],[ToDate],[SeqNo],[EW],[OverNight],[Canceled],[NoShow],[SF]
--,[InEzClaim],
,[Pickup],[DropOff],[Start Time],[End Time],PUAddressID,DOAddressID,
[Place],[Diagnosis],[Charges]
,[Fdays],LineItemDescription,[LineItemGuid],
[CPT],[Modifier],[AllowedAmount],[PayorAmountPaid],[PurSvcCharge]
,[CurrencyCol1],[CurrencyCol2],[CurrencyCol3],[CurrencyCol4],[CurrencyCol5],[CurrencyCol6]
,[CurrencyCol7],[CurrencyCol8],[CoPayAmountDue],[ApprovedAmt],SplitTripID,Insuranceid,
UserName
)
----------------------------------------------------------------------------------------------------
select ClientID,[TripID],[FromDate],[ToDate],ISNULL(seqno,10) as SeqNo,isnull([EW],0) as EW,isnull([OverNight],0) as Overnight,
isnull([Canceled],0) as Canceled,isnull([NoShow],0) as NoShow,isnull([SF],0) as SF
--,[InEzClaim]
,isnull([Pickup],'') as Pickup,isnull([DropOff],'') as DropOff,[Start Time],[End Time],isnull(PUAddressID,0) as PUAddressID,isnull(DOAddressID,0) as DOAddressID,
[Place],[Diagnosis],[Charges]
,[Fdays],isnull(LineItemDescription,'') as LineItemDescription,[LineItemGuid],
[CPT],[Modifier],[AllowedAmount],[PayorAmountPaid],[PurSvcCharge]
,[CurrencyCol1],[CurrencyCol2],[CurrencyCol3],[CurrencyCol4],[CurrencyCol5],[CurrencyCol6]
,[CurrencyCol7],[CurrencyCol8],[CoPayAmountDue],[ApprovedAmt],SplitTripID,@insuranceid,
@username
from #tblEzClaimBilling2
order by tripid,ezbillingid, ISNULL(seqno,10)

select * from #tblEzClaimBilling2
order by TripID, seqno
--where TripID = 116751
--Select * from tblEzClaimBilling2

drop table #clienttrip
--drop table #insurancerules
drop table #tblEzClaimBilling2
drop table #Split
