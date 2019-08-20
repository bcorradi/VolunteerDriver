
--execute EZClaimBilling '2016-06-01','2016-06-30',2

CREATE procedure [dbo].[EZClaimBilling] (@startdate datetime, @enddate datetime, @insuranceid int)
as

set nocount on
--not finished

--select * from vPastTrips where TripID = 56546
--declare @startdate datetime, @enddate datetime, @insuranceid int
        --@UnloadedMilesTrue int, @MaxDeadHeadTrue int, @AllowMealsTrue int
        
--stored proc parameters
--set @startdate = '2016-05-20'
--set @enddate = '2016-05-20'
--set @insuranceid = 4


--set @UnloadedMilesTrue = 0 
--set @MaxDeadHeadTrue = 0
--set @AllowMealsTrue = 0

--for display claimid could be ''
--could get list of clientid's from vEzclaimpatient?
--or use findingwhenpaperworkrecieved.sql --gives clientid and tripid

--need to link claim id

set @EndDate = @EndDate + cast('23:59:59.997' as time)

create table #clienttrip
(
clienttripid int identity(1,1),
ClientID int,
TripID int
)
insert into #clienttrip (ClientID,TripID)
select p.ClientID,p.tripid
from vPastTrips P
inner join (
SELECT UserName,DateTime,RecordID,ChildRecordID as RideId
FROM dbo.tblAuditTrail 
where FieldName = 'DateReceived'
and DateTime >= GETDATE()-10
)a
on p.TripID = a.RecordID
where DateReceived >= GETDATE()-10
and DateReceived <= GETDATE()
and Insurance in ('Health Partners','Medica','Blue Cross')
--and RideDate > '2016/04/30' and RideDate <= 
and RideDate > GETDATE()-30 and RideDate <= GETDATE()
and (InEzClaim is null or InEzClaim = 0)
order by datereceived


select * from #clienttrip

--need a table with tripid,clientid and claimid
--declare @tripid int, @claimid int, @clientid int
--set @tripid = 56546
--set @claimid = 26447


--select distinct  @clientid = clientid from tblRide
--where TripID = @tripid

--need an entry in EzPatientClientLink this is created when we create a new patient
--need to populate current patients into this table --find patients and link them to clients,insurance and address
 	--insert into EzPatientClientLink
	--(timestamp, Patientid, Clientid, ClientAddressid, ClientInsuranceid, UserName)
	--select getdate(), 12676, Clientid, ClientAddressid, ClientInsuranceid,SUSER_SNAME() from [vEzClaimPatient]
	--where clientid = 2066

--select getdate(), --@patientid, 
--       Clientid, ClientAddressid, ClientInsuranceid,SUSER_SNAME() from [vEzClaimPatient]
--where clientid = @clientid



----qryInsuranceBillingRulesv2
--SELECT tblInsurance.Insurance, IR.Active, IR.BegDate, IR.EndDate, 
--r.RuleName, r.RuleID, tblInsurance.InsuranceID--,
--FROM (tblInsuranceRules IR INNER JOIN tblInsurance 
--ON IR.InsuranceProviderID = tblInsurance.InsuranceID) 
--INNER JOIN ltblRules r
--ON IR.RuleID = r.RuleID
--WHERE (((IR.Active)=1) AND 
--((IR.BegDate)<=@startdate) AND ((IR.EndDate) Is Null Or (IR.EndDate)>=@enddate) AND 
--((r.RuleID)=1 Or (r.RuleID)=2 Or (r.RuleID)=7 or (r.RuleID) = 10) AND 
--((tblInsurance.InsuranceID)=@insuranceid))

create table #insurancerules
(
IR_ID int identity(1,1),
InsuranceID int,
MaxDeadHead int,
UnloadedMiles int,
AllowMeals int
)

insert into #insurancerules
(InsuranceID,MaxDeadHead,UnloadedMiles,AllowMeals)
--allowmealstrue may not be required since it is only for county insurance and not in ezclaim
select InsuranceID,isnull([10],0) as MaxDeadHead,isnull([2],0) as UnloadedMiles,isnull([1],0) as AllowMeals
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

--select * from #insurancerules
--select * from #clienttrip

--select @MaxDeadHeadTrue as MaxDeadHeadTrue, @UnloadedMilesTrue as UnloadedMilesTrue, @AllowMealsTrue as AllowMealsTrue

--need to retrieve the claimid to insert here
--need to know if insurance pays for unloaded, maxdeadhead, allowmeals
--if unloaded add a row with the deadhead charge

if (select max(unloadedmiles) from #insurancerules) = 0--@UnloadedMilesTrue = 0 --insurance doesnt cover unloaded miles
Begin
--insert into ezclaimexternal...[Billing Item Table]
--(ClaimID,PatientID,FromDate,ToDate,Place,Diagnosis,Charges,Fdays,LineItemGUID,CPT,Modifier)
	select NULL as ClaimID, PatientID,--ca.EzClaimPatientID as PatientID,
	pt.RideDate as FromDate, pt.RideDate as ToDate, 
	99 as Place, 'A' as Diagnosis,
	LoadedBillingTotal as Charges, --calculation from loadedmiles and rate
	cast(round(LoadedBillingTotal,0) as int) as Fdays,  --not sure how this is derived it isnt always same as charges
	--AuthCode as LineItemDescription --only for UCare --what is default?
	NEWID() as LineItemGUID,
	'A0080' as CPT,
	case when pt.SeqNo in (1,3,5,7,9) then 'RD'
		 when pt.SeqNo in (2,4,6,8,10) then 'DR' End  as Modifier,--test purpose only there are 100+ modifier combo
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
	--'DR'
	--pt.PUAddressID,a.EZClaimPhysicianID as FacilityClaimFID,
	--pt.SeqNo 
	--pt.*
    from (
		SELECT r.ClientID, t.TripID, (r.RideDate) AS RideDate, r.SeqNo,
		round((isnull([loadedmiles],0))*[reimburserate],2) AS LoadedBillingTotal
		FROM tblRide r 
		INNER JOIN tblTrip t 
		ON r.TripID = t.TripID 
		INNER JOIN tblClient 
		ON r.ClientID = tblClient.ClientID
		WHERE (r.Canceled=0) and
		r.ClientID is not null and
		(r.RideDate Between @startdate And @enddate) AND 
		(r.InsuranceID=@insuranceid) AND (t.TripTypeId<>6)    
    ) pt
	inner join EzPatientClientLink e
	on pt.ClientID = e.clientid
	inner join #clienttrip ct
	on pt.ClientID = ct.ClientID
	and pt.TripID = ct.TripID
	--where pt.TripID = @tripid
end
else --unloadedmiles is true
Begin
--insert into ezclaimexternal...[Billing Item Table]
--(ClaimID,PatientID,FromDate,ToDate,Place,Diagnosis,Charges,Fdays,LineItemGUID,CPT,Modifier)
	select NULL as ClaimID, PatientID,--ca.EzClaimPatientID as PatientID,
	pt.RideDate as FromDate, pt.RideDate as ToDate, 
	99 as Place, 'A' as Diagnosis,
	LoadedBillingTotal as Charges, --calculation from loadedmiles and rate
	cast(round(LoadedBillingTotal,0) as int) as Fdays,  --not sure how this is derived it isnt always same as charges
	--AuthCode as LineItemDescription --only for UCare
	NEWID() as LineItemGUID,
	'A0080' as CPT,
	case when pt.SeqNo in (1,3,5,7,9) then 'RD'
		 when pt.SeqNo in (2,4,6,8,10) then 'DR' End  as Modifier,--test purpose only there are 100+ modifier combo
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
	from (
		SELECT r.ClientID, t.TripID, (r.RideDate) AS RideDate, r.SeqNo,
		round((isnull([loadedmiles],0))*[reimburserate],2) AS LoadedBillingTotal
		FROM tblRide r 
		INNER JOIN tblTrip t 
		ON r.TripID = t.TripID 
		INNER JOIN tblClient 
		ON r.ClientID = tblClient.ClientID
		WHERE (r.Canceled=0) and
		r.ClientID is not null and
		(r.RideDate Between @startdate And @enddate) AND 
		(r.InsuranceID=@insuranceid) AND (t.TripTypeId<>6)
	) pt
	inner join EzPatientClientLink e
	on pt.ClientID = e.clientid
	inner join #clienttrip ct
	on pt.ClientID = ct.ClientID
	and pt.TripID = ct.TripID
	--where pt.TripID = @tripid
 union all --get the unloaded miles billing total
 	select NULL as ClaimID, PatientID,--ca.EzClaimPatientID as PatientID,
 	min(pt.RideDate) as FromDate, min(pt.RideDate) as ToDate, 
	99 as Place, 'A' as Diagnosis,
	UnloadedBillingTotal as Charges, --calculation from unloadedmiles and rate
	cast(round(UnloadedBillingTotal,0) as int) as Fdays,  --not sure how this is derived it isnt always same as charges
	--AuthCode as LineItemDescription --only for UCare
	NEWID() as LineItemGUID,
	'A0080' as CPT,
	'TP' as Modifier,--test purpose only --need to determine factors
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
	from (
		select ClientID, TripID,min(RideDate) as RideDate,
		--test for insurance that sets a max to the unloaded miles
		case when MaxDeadHeadRule = 1--(select MaxDeadHead from #insurancerules) = 1--@MaxDeadHeadTrue = 1 
		                                     then (case when Min(MaxDeadHead) >= SUM(UnLoadedBillingTotal) then SUM(UnLoadedBillingTotal)
		                                          else MIN(MaxDeadHead)
		                                     end) 
		     else SUM(UnLoadedBillingTotal) 
		end as UnloadedBillingTotal
		from (
			SELECT t.TripID,r.ClientID, isnull(MaxReimburse,0) as MaxDeadHead, (r.RideDate) AS RideDate,
			round((isnull(r.Unloadedmiles,0))*reimburserate,2) AS UnLoadedBillingTotal,ir.MaxDeadHead as MaxDeadHeadRule
			FROM tblRide r 
			INNER JOIN tblTrip t 
			ON r.TripID = t.TripID 
			INNER JOIN tblClient 
			ON r.ClientID = tblClient.ClientID
			inner join #insurancerules ir
			on r.InsuranceID = ir.InsuranceID
			WHERE (r.Canceled=0) and
			r.ClientID is not null and
			(r.RideDate Between @startdate And @enddate) AND 
			(r.InsuranceID=@insuranceid) AND (t.TripTypeId<>6) 
		)b
		group by TripID,ClientID,MaxDeadHeadRule
	) pt
	inner join EzPatientClientLink e
	on pt.ClientID = e.clientid
	inner join #clienttrip ct
	on pt.ClientID = ct.ClientID
	and pt.TripID = ct.TripID
	--inner join tblinsurance i
	--on pt.insurance = i.insurance
	--where pt.TripID = @tripid
	group by patientid, UnloadedBillingTotal
End


--need to update ride or trip that record is now in ezclaim

drop table #clienttrip
drop table #insurancerules