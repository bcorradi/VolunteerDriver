CREATE procedure [dbo].[IntegrationPreModifierReport] (@insuranceid int, @startdate datetime, @enddate datetime)
as

set nocount on

--declare @startdate datetime, @enddate datetime, @insuranceid int
        
--------stored proc parameters
--set @startdate = '2016-08-01'
--set @enddate = '2016-08-31'
--set @insuranceid = 5

declare @username varchar(50)

select @username = SUSER_NAME()

delete from tblPreModifierReport
where username = @username

--need to link claim id

set @EndDate = @EndDate + cast('23:59:59.997' as time)


CREATE TABLE #tblEzClaimBilling(
	[EzBillingID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NULL,
	[TripID] [int] NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[SeqNo] [int] NULL,
	[EW] [bit] NOT NULL,
	[OverNight] [bit] NOT NULL,
	[Canceled] [bit] NOT NULL,
	[NoShow] [bit] NOT NULL,
	[SF] [bit] NOT NULL,
	[Pickup] [varchar](255) NULL,
	[DropOff] [varchar](255) NULL,
	[Start Time] [datetime] NULL,
	[End Time] [datetime] NULL,
	[Place] [varchar](5) NULL,
	[Diagnosis] [varchar](10) NULL,
	[Charges] [money] NULL,
	[Fdays] [int] NULL,
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
	[SplitTripID] [int] NULL,
	[LineItemDescription] [varchar](255) NULL,
	[UserName] [varchar](50) NULL,
	[FacilityName] varchar(255))


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
and datereceived is not null



create table #insurancerules
(
IR_ID int identity(1,1),
InsuranceID int,
MaxDeadHead int,
UnloadedMiles int,
AllowMeals int,
NoNoShows int
)

insert into #insurancerules
(InsuranceID,MaxDeadHead,UnloadedMiles,AllowMeals,NoNoShows)
--allowmealstrue may not be required since it is only for county insurance and not in ezclaim
select InsuranceID,isnull([10],0) as MaxDeadHead,isnull([2],0) as UnloadedMiles,
                   isnull([1],0) as AllowMeals, ISNULL([7],0) as NoNoShows
from (
SELECT isnull(r.RuleID,0) as RuleID, tblInsurance.InsuranceID,1 as truth
FROM (tblInsuranceRules IR INNER JOIN tblInsurance 
ON IR.InsuranceProviderID = tblInsurance.InsuranceID) 
INNER JOIN ltblRules r
ON IR.RuleID = r.RuleID
WHERE (((IR.Active)=1) AND 
((IR.BegDate)<=@startdate) AND ((IR.EndDate) Is Null Or (IR.EndDate)>=@enddate) AND 
((r.RuleID)=1 Or (r.RuleID)=2 Or (r.RuleID)=7 or (r.RuleID) = 10) AND 
((tblInsurance.InsuranceID)=@insuranceid))
)sourcetable
pivot
(
	max(truth)
	for ruleid in ([1],[2],[7],[10])
)rulemax


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
	[SplitTripID] [int] NULL,
	[FacilityName] varchar(255))


--need to retrieve the claimid to insert here
--need to know if insurance pays for unloaded, maxdeadhead, allowmeals
--if unloaded add a row with the deadhead charge
/*********************************************************************************************/
--as of 7/1/2016 the 4 insurances in ezclaim will not use this condition
if (select max(unloadedmiles) from #insurancerules) = 0--@UnloadedMilesTrue = 0 --insurance doesnt cover unloaded miles
Begin


insert into #tblEzClaimBilling2(
ClientID,[TripID],[FromDate],[ToDate],[SeqNo],[EW],[OverNight],[Canceled],[NoShow],[SF]
--,[InEzClaim]
,[Pickup],[DropOff],[Start Time],[End Time],PUAddressID,DOAddressID,
[Place],[Diagnosis],[Charges]
,[Fdays],[LineItemGuid],
[CPT],[Modifier],[AllowedAmount],[PayorAmountPaid],[PurSvcCharge]
,[CurrencyCol1],[CurrencyCol2],[CurrencyCol3],[CurrencyCol4],[CurrencyCol5],[CurrencyCol6]
,[CurrencyCol7],[CurrencyCol8],[CoPayAmountDue],[ApprovedAmt],SplitTripID,FacilityName
)
	select --NULL as ClaimID, 
	ct.ClientID,ct.TripID,--PatientID,--ca.EzClaimPatientID as PatientID,
	pt.RideDate as FromDate, pt.RideDate as ToDate, pt.SeqNo,
	EW, Overnight, Canceled, NoShow, SF, --InEzClaim,
	PickUp,DropOff,
	[Start Time],[End Time],PUAddressID,DOAddressID,
	99 as Place, 'A' as Diagnosis,
	LoadedBillingTotal as Charges, --calculation from loadedmiles and rate
	cast(round(LoadedBillingTotal,0) as int) as Fdays,  --not sure how this is derived it isnt always same as charges
	--AuthCode as LineItemDescription --only for UCare --what is default?
	NEWID() as LineItemGUID,
	'A0080' as CPT,
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
	ApprovedAmt = 0.00,
	SplitTripID,FacilityName    
	--'DR'
	--pt.PUAddressID,a.EZClaimPhysicianID as FacilityClaimFID,
	--pt.SeqNo 
	--pt.*
    from (
		SELECT r.ClientID, --t.TripID, 
		case when TripdIdOrgSplit is not null then TripdIdOrgSplit else t.TripID end as TripID,
		(r.RideDate) AS RideDate,  --r.SeqNo,
		case when TripdidOrgSplit is not null then r.SeqNo + 1 else r.SeqNo end as SeqNo,
		t.ElderlyWaiver AS EW, R.Overnight, R.Canceled, R.NoShow, t.SeniorFitness AS SF, --R.InEzClaim,
		 [rpickupaddress] + ', ' + [rpickupcity] + ', ' + [rpickupstate] + '  ' + cast([rpickupzip] AS Varchar(10)) + '-' + cast([rpickupzip4]as Varchar(10)) AS Pickup, 
        --cast(R.RStartTime as Time) AS [Start Time], cast(R.REndTime as Time) AS [End Time],
         R.RStartTime AS [Start Time], R.REndTime AS [End Time],
        PUAddressID,DOAddressID,
        [facilityname] + ' ' + [rdropoffaddress] + ', ' + [rdropoffcity] + ', ' + [rdropoffstate] + '  ' + cast([rdropoffzip]AS Varchar(10)) + '-' + cast([rdropoffzip4] as varchar(10)) AS DropOff,
		round((isnull([loadedmiles],0))*[reimburserate],2) AS LoadedBillingTotal,
		isnull(atpu.Modifier,'Fix') as PUModifier,ISNULL(atdo.Modifier,'Fix') as DOModifier,
		case when TripdIdOrgSplit is not null then t.TripId else Null end as SplitTripID,
		FacilityName
		FROM tblRide r 
		INNER JOIN tblTrip t 
		ON r.TripID = t.TripID 
		and DateReceived is not null
		INNER JOIN tblClient 
		ON r.ClientID = tblClient.ClientID
		inner join #insurancerules ir
		on r.InsuranceID = ir.InsuranceID
		left join tblAddressType atpu
		on r.PUAddressTypeID = atpu.AddressTypeID
		left join tblAddressType atdo
		on r.DOAddressTypeID = atdo.AddressTypeID
		WHERE (r.Canceled=0) and
		r.ClientID is not null and
		(r.RideDate Between @startdate And @enddate) AND 
		(r.InsuranceID=@insuranceid) AND (t.TripTypeId<>6) and
		--if NoNoShow rule is true then only show records with noshow = 0
		--otherwise show records that have 0 or 1
		(r.NoShow = (case when NoNoShows = 1 then 0 else 0 end) or 
		r.NoShow = (case when NoNoShows = 1 then 0 else 1 end))
    ) pt
	--inner join EzPatientClientLink e
	--on pt.ClientID = e.clientid
	inner join #clienttrip ct
	on pt.ClientID = ct.ClientID
	and pt.TripID = ct.TripID
	--where pt.TripID = @tripid
end
/**********************************************************************************************/
else if @insuranceid = 4 --Medica combines loaded and unloaded
Begin
insert into #tblEzClaimBilling2(
ClientID,[TripID],[FromDate],[ToDate],[SeqNo],[EW],[OverNight],[Canceled],[NoShow],[SF],--[InEzClaim],
[Pickup],[DropOff],[Start Time],[End Time],PUAddressID,DOAddressID,
[Place],[Diagnosis],[Charges]
,[Fdays],[LineItemGuid],
[CPT],[Modifier],[AllowedAmount],[PayorAmountPaid],[PurSvcCharge]
,[CurrencyCol1],[CurrencyCol2],[CurrencyCol3],[CurrencyCol4],[CurrencyCol5],[CurrencyCol6]
,[CurrencyCol7],[CurrencyCol8],[CoPayAmountDue],[ApprovedAmt],SplitTripID,FacilityName
)
	select --NULL as ClaimID, 
	ct.ClientID,ct.TripID,
	--PatientID,--ca.EzClaimPatientID as PatientID,
	pt.RideDate as FromDate, pt.RideDate as ToDate, pt.SeqNo,
	EW, Overnight, Canceled, NoShow, SF, --InEzClaim,
	PickUp,DropOff,
	[Start Time],[End Time],PUAddressID,DOAddressID,
	99 as Place, 'A' as Diagnosis,
	LoadedBillingTotal + UnloadedBillingTotal as Charges, 
	cast(round(LoadedBillingTotal,0) as int) + cast(round(UnloadedBillingTotal,0) as int) as Fdays,
	--AuthCode as LineItemDescription --only for UCare --what is default?
	NEWID() as LineItemGUID,
	'A0080' as CPT,
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
	ApprovedAmt = 0.00,
	SplitTripID,FacilityName
	--'DR'
	--pt.PUAddressID,a.EZClaimPhysicianID as FacilityClaimFID,
	--pt.SeqNo 
	--pt.*
    from (
		SELECT r.ClientID, --t.TripID, 
		case when TripdIdOrgSplit is not null then TripdIdOrgSplit else t.TripID end as TripID,
		(r.RideDate) AS RideDate,  --r.SeqNo,
		case when TripdidOrgSplit is not null then r.SeqNo + 1 else r.SeqNo end as SeqNo,
		t.ElderlyWaiver AS EW, R.Overnight, R.Canceled, R.NoShow, t.SeniorFitness AS SF, R.InEzClaim,
		 [rpickupaddress] + ', ' + [rpickupcity] + ', ' + [rpickupstate] + '  ' + cast([rpickupzip] AS Varchar(10)) + '-' + cast([rpickupzip4]as Varchar(10)) AS Pickup, 
        --cast(R.RStartTime as Time) AS [Start Time], cast(R.REndTime as Time) AS [End Time],
         R.RStartTime AS [Start Time], R.REndTime AS [End Time],
        PUAddressID,DOAddressID,
        FN.FacilityName + ' ' + [rdropoffaddress] + ', ' + [rdropoffcity] + ', ' + [rdropoffstate] + '  ' + cast([rdropoffzip]AS Varchar(10)) + '-' + cast([rdropoffzip4] as varchar(10)) AS DropOff,
		round((isnull([loadedmiles],0))*[reimburserate],2) AS LoadedBillingTotal,
		round((isnull(r.Unloadedmiles,0))*reimburserate,2) AS UnLoadedBillingTotal,
		isnull(atpu.Modifier,'Fix') as PUModifier,ISNULL(atdo.Modifier,'Fix') as DOModifier,
		case when TripdIdOrgSplit is not null then t.TripId else Null end as SplitTripID,
		FN.FacilityName
		FROM tblRide r 
		INNER JOIN tblTrip t 
		ON r.TripID = t.TripID 
		and t.DateReceived is not null
		inner join (
			select TripId,SeqNo,
			case when isnull(DOAddressTypeID,2) <> 2 then a1.FacilityName --DOAddressID
			     when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) <> 2 then a2.FacilityName --PUAddressID
			     when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) = 2 then a1.FacilityName --isnull(DOAddressID,0)
			else a1.FacilityName --DOAddressID 
			end as FacilityName--,a1.FacilityName,a2.FacilityName
			from tblride rr
			inner join tblAddress a1
			on rr.DOAddressID = a1.AddressID
			inner join tblAddress a2
			on rr.PUAddressID = a2.AddressID
		)FN
		on r.TripID = FN.TripID
		and r.SeqNo = FN.SeqNo
		INNER JOIN tblClient 
		ON r.ClientID = tblClient.ClientID
		inner join #insurancerules ir
		on r.InsuranceID = ir.InsuranceID
		left join tblAddressType atpu
		on r.PUAddressTypeID = atpu.AddressTypeID
		left join tblAddressType atdo
		on r.DOAddressTypeID = atdo.AddressTypeID
		WHERE (r.Canceled=0) and
		r.ClientID is not null and
		(r.RideDate Between @startdate And @enddate) AND 
		(r.InsuranceID=@insuranceid) AND (t.TripTypeId<>6) and
		--if NoNoShow rule is true then only show records with noshow = 0
		--otherwise show records that have 0 or 1
		(r.NoShow = (case when NoNoShows = 1 then 0 else 0 end) or 
		r.NoShow = (case when NoNoShows = 1 then 0 else 1 end))
    ) pt
	--inner join EzPatientClientLink e
	--on pt.ClientID = e.clientid
	inner join #clienttrip ct
	on pt.ClientID = ct.ClientID
	and pt.TripID = ct.TripID
	--where pt.TripID = 62553
End
/**********************************************************************************************/
else --unloadedmiles is true
Begin
insert into #tblEzClaimBilling2(
ClientID,[TripID],[FromDate],[ToDate],[SeqNo],[EW],[OverNight],[Canceled],[NoShow],[SF], --[InEzClaim],
[Pickup],[DropOff],[Start Time],[End Time],PUAddressID,DOAddressID,
[Place],[Diagnosis],[Charges]
,[Fdays],LineItemDescription,[LineItemGuid],
[CPT],[Modifier],[AllowedAmount],[PayorAmountPaid],[PurSvcCharge]
,[CurrencyCol1],[CurrencyCol2],[CurrencyCol3],[CurrencyCol4],[CurrencyCol5],[CurrencyCol6]
,[CurrencyCol7],[CurrencyCol8],[CoPayAmountDue],[ApprovedAmt],SplitTripID,FacilityName
)
	select --NULL as ClaimID, 
	ct.clientID,ct.TripID,--PatientID,--ca.EzClaimPatientID as PatientID,
	pt.RideDate as FromDate, pt.RideDate as ToDate, pt.SeqNo,
	EW, Overnight, Canceled, NoShow, SF, --InEzClaim,
	PickUp,DropOff,
	[Start Time],[End Time],PUAddressID,DOAddressID,
	99 as Place, 'A' as Diagnosis,
	LoadedBillingTotal as Charges, --calculation from loadedmiles and rate
	cast(round(LoadedBillingTotal,0) as int) as Fdays,  --not sure how this is derived it isnt always same as charges
	case when @insuranceid = 5 then AuthCode else Null end as LineItemDescription, --only for UCare
	NEWID() as LineItemGUID,
	'A0080' as CPT,
	Replace((PUModifier + DOModifier),' ','')  +  case when ct.ElderlyWaiver = 1 then 'UC' else (case when ct.SeniorFitness = 1 then 'SF' else '' end ) end --+
	--add 76 to 3 legs and more for Ucare
	--case when (@insuranceid = 5 and pt.SeqNo >= 3) then '76' else '' end 
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
	SplitTripID,FacilityName
	from (
		SELECT r.ClientID,
		case when TripdIdOrgSplit is not null then TripdIdOrgSplit else t.TripID end as TripID, 
		(r.RideDate) AS RideDate, 
		case when TripdidOrgSplit is not null then r.SeqNo + 1 else r.SeqNo end as SeqNo,
		T.ElderlyWaiver AS EW, R.Overnight, R.Canceled, R.NoShow, T.SeniorFitness AS SF, 
		R.InEzClaim, [rpickupaddress] + ', ' + [rpickupcity] + ', ' + [rpickupstate] + '  ' + 
		cast([rpickupzip] AS Varchar(10)) + '-' + cast([rpickupzip4]as Varchar(10)) AS Pickup, 
		--cast(R.RStartTime as Time) AS [Start Time], cast(R.REndTime as Time) AS [End Time], 
		R.RStartTime AS [Start Time], R.REndTime AS [End Time],
		FN.facilityname + ' ' + [rdropoffaddress] + ', ' + [rdropoffcity] + ', ' + [rdropoffstate] + 
		'  ' + cast([rdropoffzip]AS Varchar(10)) + '-' + cast([rdropoffzip4] as varchar(10)) AS DropOff,
		round((isnull([loadedmiles],0))*[reimburserate],2) AS LoadedBillingTotal,PUAddressID,
		DOAddressID,
		isnull(atpu.Modifier,'Fix') as PUModifier,ISNULL(atdo.Modifier,'Fix') as DOModifier,
		case when TripdIdOrgSplit is not null then t.TripId else Null end as SplitTripID,
		r.AuthCode,FN.FacilityName
		FROM tblRide r 
		INNER JOIN tblTrip t 
		ON r.TripID = t.TripID 
		and t.DateReceived is not null
		inner join (
			select TripId,SeqNo,
			case when isnull(DOAddressTypeID,2) <> 2 then a1.FacilityName --DOAddressID
			     when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) <> 2 then a2.FacilityName --PUAddressID
			     when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) = 2 then a1.FacilityName --isnull(DOAddressID,0)
			else a1.FacilityName --DOAddressID 
			end as FacilityName--,a1.FacilityName,a2.FacilityName
			from tblride rr
			inner join tblAddress a1
			on rr.DOAddressID = a1.AddressID
			inner join tblAddress a2
			on rr.PUAddressID = a2.AddressID
		)FN
		on r.TripID = FN.TripID
		and r.SeqNo = FN.SeqNo
		INNER JOIN tblClient 
		ON r.ClientID = tblClient.ClientID
		inner join #insurancerules ir
		on r.InsuranceID = ir.InsuranceID
	    left join tblAddressType atpu
		on r.PUAddressTypeID = atpu.AddressTypeID
		left join tblAddressType atdo
		on r.DOAddressTypeID = atdo.AddressTypeID
		WHERE (r.Canceled=0) and
		r.ClientID is not null and
		(r.RideDate Between @startdate And @enddate) AND 
		(r.InsuranceID=@insuranceid) AND (t.TripTypeId<>6) and
		--if NoNoShow rule is true then only show records with noshow = 0
		--otherwise show records that have 0 or 1
		(r.NoShow = (case when NoNoShows = 1 then 0 else 0 end) or 
		r.NoShow = (case when NoNoShows = 1 then 0 else 1 end))
	) pt
	--inner join EzPatientClientLink e
	--on pt.ClientID = e.clientid
	inner join #clienttrip ct
	on pt.ClientID = ct.ClientID
	and pt.TripID = ct.TripID
	
	--and ct.ClientID = 1322
	--where pt.TripID = 63663
 union all --get the unloaded miles billing total
 	select --NULL as ClaimID, 
 	ct.ClientID, ct.tripid, --PatientID,--ca.EzClaimPatientID as PatientID,
 	min(pt.RideDate) as FromDate, min(pt.RideDate) as ToDate, Null as SeqNo,
 	Null as EW,Null as OverNight,Null as Canceled,null as NoShow, null as SF,
 	--Null as InEzClaim,
 	Null as Pickup,null as Dropoff,'1900-01-01 00:00:00' as [Start Time],'1900-01-01 00:00:00'as [End Time],
 	NULL as PUAddressID, NULL as DOAddressID,
	99 as Place, 'A' as Diagnosis,
	UnloadedBillingTotal as Charges, --calculation from unloadedmiles and rate
	cast(round(UnloadedBillingTotal,0) as int) as Fdays,  --not sure how this is derived it isnt always same as charges
	case when @insuranceid = 5 then Max(AuthCode) else Null end  as LineItemDescription, --only for UCare
	NEWID() as LineItemGUID,
	'A0080' as CPT,
	case when @insuranceid = 2 or @insuranceid = 29 then 'TP' 
	     when @insuranceid = 5 then '52'
	     else 'Fix' end as Modifier,
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
	max(SplitTripID) as SplitTripID,FacilityName    
	from (
		select ClientID, TripID,
		min(RideDate) as RideDate,
		--test for insurance that sets a max to the unloaded miles
		case when MaxDeadHeadRule = 1--(select MaxDeadHead from #insurancerules) = 1--@MaxDeadHeadTrue = 1 
		                                     then (case when Min(MaxDeadHead) >= SUM(UnLoadedBillingTotal) then SUM(UnLoadedBillingTotal)
		                                          else MIN(MaxDeadHead)
		                                     end) 
		     else SUM(UnLoadedBillingTotal) 
		end as UnloadedBillingTotal,
		Max(SplitTripID) as SplitTripID,Max(AuthCode) as AuthCode,FacilityName
		from (
			SELECT --t.TripID,
			case when TripdIdOrgSplit is not null then TripdIdOrgSplit else t.TripID end as TripID, 
			r.ClientID, isnull(MaxReimburse,0) as MaxDeadHead, (r.RideDate) AS RideDate,
			round((isnull(r.Unloadedmiles,0))*reimburserate,2) AS UnLoadedBillingTotal,ir.MaxDeadHead as MaxDeadHeadRule,
			case when TripdIdOrgSplit is not null then t.TripId else Null end as SplitTripID,
			r.AuthCode,FacilityName
			FROM tblRide r 
			INNER JOIN tblTrip t 
			ON r.TripID = t.TripID 
			and t.DateReceived is not null
			INNER JOIN tblClient 
			ON r.ClientID = tblClient.ClientID
			inner join #insurancerules ir
			on r.InsuranceID = ir.InsuranceID
			WHERE (r.Canceled=0) and
			r.ClientID is not null and
			(r.RideDate Between @startdate And @enddate) AND 
			(r.InsuranceID=@insuranceid) AND (t.TripTypeId<>6) and
			(r.NoShow = (case when NoNoShows = 1 then 0 else 0 end) or 
		    r.NoShow = (case when NoNoShows = 1 then 0 else 1 end))
		)b
		group by TripID,ClientID,MaxDeadHeadRule,FacilityName
	) pt
	--inner join EzPatientClientLink e
	--on pt.ClientID = e.clientid
	inner join #clienttrip ct
	on pt.ClientID = ct.ClientID
	and pt.TripID = ct.TripID
	where UnloadedBillingTotal > 0
	
	--and ct.ClientID = 1322
	--and pt.TripID = 63663
	--inner join tblinsurance i
	--on pt.insurance = i.insurance
	--where pt.TripID = @tripid
	group by ct.ClientID,ct.TripID,--patientid, 
	UnloadedBillingTotal,FacilityName
End
/**********************************************************************************************/

Update #tblEzClaimBilling2
set #tblEzClaimBilling2.Charges = a.Charges,
    #tblEzClaimBilling2.Fdays = a.Fdays
from (
select TripID,SUM(isnull(charges,0)) as Charges,SUM(isnull(Fdays,0)) as Fdays
from #tblEzClaimBilling2
where Modifier in ('52','TP','76') and
TripID in (
select tripid
from #tblEzClaimBilling2
where modifier in ('52','TP','76')
group by TripID
having COUNT(1) > 1)
group by tripid)a
where #tblEzClaimBilling2.TripID = a.TripID
and #tblEzClaimBilling2.Modifier in ('52','TP','76')

delete from #tblEzClaimBilling2
from (
	select TripID,MIN(EzBillingID) as EzBillingID
	from #tblEzClaimBilling2
	where Modifier in ('52','TP','76')
	group by TripID
)a
where #tblEzClaimBilling2.Modifier in ('52','TP','76') and
#tblEzClaimBilling2.TripID = a.TripID
and #tblEzClaimBilling2.EzBillingID > a.EzBillingID






insert into #tblEzClaimBilling(
ClientID,[TripID],[FromDate],[ToDate],[SeqNo],[EW],[OverNight],[Canceled],[NoShow],[SF]
--,[InEzClaim],
,[Pickup],[DropOff],[Start Time],[End Time],PUAddressID,DOAddressID,
[Place],[Diagnosis],[Charges]
,[Fdays],LineItemDescription,[LineItemGuid],
[CPT],[Modifier],[AllowedAmount],[PayorAmountPaid],[PurSvcCharge]
,[CurrencyCol1],[CurrencyCol2],[CurrencyCol3],[CurrencyCol4],[CurrencyCol5],[CurrencyCol6]
,[CurrencyCol7],[CurrencyCol8],[CoPayAmountDue],[ApprovedAmt],SplitTripID,Insuranceid,
UserName,FacilityName
)
select ClientID,[TripID],[FromDate],[ToDate],[SeqNo],isnull([EW],0),isnull([OverNight],0),
isnull([Canceled],0),isnull([NoShow],0),isnull([SF],0)
--,[InEzClaim]
,[Pickup],[DropOff],[Start Time],[End Time],PUAddressID,DOAddressID,
[Place],[Diagnosis],[Charges]
,[Fdays],LineItemDescription,[LineItemGuid],
[CPT],[Modifier],[AllowedAmount],[PayorAmountPaid],[PurSvcCharge]
,[CurrencyCol1],[CurrencyCol2],[CurrencyCol3],[CurrencyCol4],[CurrencyCol5],[CurrencyCol6]
,[CurrencyCol7],[CurrencyCol8],[CoPayAmountDue],[ApprovedAmt],SplitTripID,@insuranceid,
@username,FacilityName
from #tblEzClaimBilling2
order by tripid,ISNULL(seqno,10)

--If @insuranceid = 2 and @startdate >= '2016-07-01'
--Begin
--	insert into #tblEzClaimBilling(
--	ClientID,[TripID],[FromDate],[ToDate],[SeqNo],[EW],[OverNight],[Canceled],[NoShow],[SF]
--	--,[InEzClaim],
--	,[Pickup],[DropOff],[Start Time],[End Time],PUAddressID,DOAddressID,
--	[Place],[Diagnosis],[Charges]
--	,[Fdays],LineItemDescription,[LineItemGuid],
--	[CPT],[Modifier],[AllowedAmount],[PayorAmountPaid],[PurSvcCharge]
--	,[CurrencyCol1],[CurrencyCol2],[CurrencyCol3],[CurrencyCol4],[CurrencyCol5],[CurrencyCol6]
--	,[CurrencyCol7],[CurrencyCol8],[CoPayAmountDue],[ApprovedAmt],SplitTripID,
--	Insuranceid,UserName,FacilityName
--	)
--	select --[EzBillingID]
--		  [ClientID]
--		  ,e.[TripID]
--		  ,[FromDate]
--		  ,[ToDate]
--		  ,[SeqNo]
--		  ,[EW]
--		  ,[OverNight]
--		  ,[Canceled]
--		  ,[NoShow]
--		  ,[SF]
--		  --,[InEzClaim]
--		  ,[Pickup]
--		  ,[DropOff]
--		  ,[Start Time]
--		  ,[End Time]
--		  ,[PUAddressID]
--		  ,[DOAddressID]		  
--		  ,[Place]
--		  ,[Diagnosis]
--		  ,10.00 as [Charges]
--		  ,1 as [Fdays]
--		  ,LineItemDescription
--		  ,Newid() as [LineItemGuid]
--		  ,'A0100' as [CPT]
--		  ,[Modifier]
--		  ,[AllowedAmount]
--		  ,[PayorAmountPaid]
--		  ,[PurSvcCharge]
--		  ,[CurrencyCol1]
--		  ,[CurrencyCol2]
--		  ,[CurrencyCol3]
--		  ,[CurrencyCol4]
--		  ,[CurrencyCol5]
--		  ,[CurrencyCol6]
--		  ,[CurrencyCol7]
--		  ,[CurrencyCol8]
--		  ,[CoPayAmountDue]
--		  ,[ApprovedAmt]
--		  ,[SplitTripID]
--		  ,[InsuranceID]
--		  ,@username,FacilityName
--	from #tblEzClaimBilling e
--	inner join (
--		select tripid,min([End Time]) as MinEndTime, MAX([End Time]) as MaxEndTime,
--		COUNT(tripid) as LegCount
--		--case when min(seqno) = Max(SeqNo) then 1 else 2 end as legcount
--		from #tblEzClaimBilling
--		where insuranceid =2
--		and modifier <> 'TP'
--		and Canceled = 0 and NoShow = 0
--		and UserName = @username
--		group by tripid
--	)seqcount
--	on e.TripID = seqcount.tripid
--	where InsuranceID = 2
--	and Modifier <> 'TP'
--    and Canceled = 0 and NoShow = 0
--	and ([End Time]= MinEndTime or [End Time] = MaxEndTime) 
--	and e.UserName = @username
--	--order by e.tripid
--end

--remove no show where charges are 0 or other 0 charges
delete from #tblEzClaimBilling
where Charges = 0

--select * from #tblezclaimbilling

--create table tblPreModifierReport
--(
--PreMod_ID int identity(1,1),
--Client varchar(55),
--RideDate datetime,
--TripID int,
--Insurance varchar(25),
--Modifier1 varchar(8),
--Modifier2 varchar(8),
--Modifier3 varchar(8),
--Modifier4 varchar(8),
--Modifier5 varchar(8),
--Modifier6 varchar(8),
--Modifier7 varchar(8),
--Modifier8 varchar(8),
--UserName varchar(50)
--)


Insert into tblPreModifierReport
(Client, RideDate, TripID, Insurance, Modifier1, Modifier2, 
Modifier3, Modifier4, Modifier5, Modifier6, Modifier7, Modifier8, UserName,
Facility1,Facility2,Facility3,Facility4,Facility5,Facility6,Facility7,Facility8)
select Client, RideDate, mods.TripID, Insurance, Modifier1, Modifier2,
Modifier3, Modifier4, Modifier5, Modifier6,
Modifier7, Modifier8, @UserName as UserName,
Facility1,Facility2,Facility3,Facility4,Facility5,Facility6,Facility7,Facility8
from (
select distinct c.ClLN + ' ' + ClFN as Client, cast(FromDate as DATE) as RideDate, TripID, i.Insurance
from #tblEzClaimBilling b
inner join tblClient c
on b.ClientID = c.ClientID
inner join tblInsurance i
on b.InsuranceID = i.InsuranceID) rides
inner join (
select TripID,
isnull([1],'') as Modifier1,
isnull([2],'') as Modifier2,
isnull([3],'') as Modifier3,
isnull([4],'') as Modifier4,
isnull([5],'') as Modifier5,
isnull([6],'') as Modifier6,
isnull([7],'') as Modifier7,
isnull([8],'') as Modifier8
from(
select TripId,Modifier,Rankit
from (
select TripID,EzBillingID,--SeqNo, 
Modifier,
RANK() over (partition by TripID order by EzBillingID) as Rankit
from #tblEzClaimBilling)a)a
pivot
(
 max(Modifier)
 for Rankit in ([1],[2],[3],[4],[5],[6],[7],[8])
)Pv
)mods
on rides.TripID = mods.TripID
inner join (
Select TripID, 
isnull([1],'') as Facility1,
isnull([2],'') as Facility2,
isnull([3],'') as Facility3,
isnull([4],'') as Facility4,
isnull([5],'') as Facility5,
isnull([6],'') as Facility6,
isnull([7],'') as Facility7,
isnull([8],'') as Facility8
from (
select distinct TripID, FacilityName, RankIt
from (
select distinct TripID,EzBillingID,--SeqNo, 
FacilityName, RANK() over (partition by TripID order by EzBillingID) as Rankit
from #tblEzClaimBilling
where --FacilityName not IN ('','-',' - ','Home')
--and 
FacilityName is not null
--and SeqNo is not null 
and (SeqNo is not null 
     or TripID in 
	(select tripid from #tblEzClaimBilling
	where SeqNo is null and TripID in (
	select tripid 
	from #tblEzClaimBilling
	group by TripID
	having COUNT(1) = 1)))
)a)a
pivot
(
 max(FacilityName)
 for Rankit in ([1],[2],[3],[4],[5],[6],[7],[8])
)pv
)Facilities2
on rides.TripID = facilities2.TripID
--where Client like '%Woodwor%'
order by 1,2,4

--select * from #tblEzClaimBilling
--where ClientID = 4789

drop table #clienttrip
drop table #insurancerules
drop table #tblEzClaimBilling2
drop table #tblEzClaimBilling

--select tripid,[1] as PickupLeg1,[2] PickupLeg2,[3] PickupLeg3,
--[4] PickupLeg4,[5] PickupLeg5,[6] PickupLeg6,[7] PickupLeg7,[8] PickupLeg8
--from
--(
--	select tripid, at1.AddTypeDesc as PickUpAddressType, SeqNo
--	from tblRide r
--	inner join tblAddressType at1
--	on r.puAddressTypeID = at1.AddressTypeID
--	where RideDate >= '2016-08-01'
--	and RideDate <= '2017-08-31'
--	and r.Canceled = 0
--)a
--pivot
--(
-- max(PickUpAddressType)
-- for SeqNo in ([1],[2],[3],[4],[5],[6],[7],[8])
--)PU

