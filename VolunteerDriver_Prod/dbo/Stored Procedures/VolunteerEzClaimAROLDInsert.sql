

CREATE procedure [dbo].[VolunteerEzClaimAROLDInsert]  (@insuranceid int, @startdate datetime, @enddate datetime)
as
set nocount on

declare 
		--@startdate datetime, @enddate datetime, @insuranceid int,
        @MaxDeadHeadTrue int, @UnloadedMilesTrue int, @AllowMealsTrue int,
        @NoNoShowsTrue int, @insurance varchar(50)
        
--set @startdate = '2018-07-01'
--set @enddate = '2018-07-31'
--set @insuranceid = 5

declare @BlueCrossRate float
--set @BlueCrossRate = 0.54 -- rate changed 5.19.17 av - should have been changed 1/1/17
set @BlueCrossRate = 0.535

declare @username varchar(50)

select @username = SUSER_NAME()

Set @EndDate = @EndDate + cast('23:59:59.997' as time)

--delete from tblEzClaim
--truncate table tblEzClaim
delete from tblEzClaimAddressRptOld
where username = @username
--dbcc checkident('tblEzClaim', RESEED, 0) with no_infomsgs



select @insurance = insurance,
       @MaxDeadHeadTrue = isnull([10],0),
       @UnloadedMilesTrue = isnull([2],0),
       @AllowMealsTrue = isnull([1],0),
       @NoNoShowsTrue = ISNULL([7],0)
from (
SELECT Insurance,isnull(r.RuleID,0) as RuleID, tblInsurance.InsuranceID,1 as truth
FROM (tblInsuranceRules IR INNER JOIN tblInsurance 
ON IR.InsuranceProviderID = tblInsurance.InsuranceID) 
INNER JOIN ltblRules r
ON IR.RuleID = r.RuleID
WHERE (((IR.Active)=1) AND 
((IR.BegDate)<=@startdate) AND ((IR.EndDate) Is Null Or (IR.EndDate)>=@enddate) AND 
((r.RuleID)=1 Or (r.RuleID)=2 Or (r.RuleID)=7 or (r.RuleID) = 10)) 
)sourcetable
pivot
(
	max(truth)
	for ruleid in ([1],[2],[7],[10])
)rulemax
where Insuranceid = @insuranceid

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
and t.PaymentMadeDate  <= GETDATE() --added7.19.17 av

--find splits where primary isnt cancelled or removed due to no show
create table #SplitOriginalGood (tripid int)
insert into #SplitOriginalGood (tripid)
select tripid from #Split 
where TripdIdOrgSplit in (
select distinct t.tripid
from tblTrip t
inner join tblRide r
on t.TripID = r.tripID
and RideDate between @StartDate and @EndDate
and r.InsuranceID = @Insuranceid
and t.DateReceived is not null
and t.PaymentMadeDate  <= GETDATE() --added7.19.17 av
and t.TripID in (Select tripdidOrgSplit from #Split)
and r.Canceled = 0
and	((Noshow = case when @NoNoShowsTrue = 1 then 0 else 0 end) or 
     (Noshow = case when @NoNoShowsTrue = 1 then 0 else 1 end)))


--trips that need to be removed from claim list because paperwork hasn't been
--received from all split trips
Create table #PaperworkMissing
(tripid int)
--insert into #PaperworkMissing
--select t.tripid
--from tblTrip t
--inner join tblRide r
--on t.TripID = r.tripID
--and t.TripdIdOrgSplit is not null
--and RideDate between @StartDate and @EndDate
--and r.InsuranceID = @Insuranceid
--and r.Canceled = 0
--inner join tblTrip t2
--on t.TripdIdOrgSplit = t2.Tripid 
--where (t.DateReceived is null or t2.DateReceived is null)
--union all
--select t.TripdIdOrgSplit as TripID
--from tblTrip t
--inner join tblRide r
--on t.TripID = r.tripID
--and t.TripdIdOrgSplit is not null
--and RideDate between @StartDate and @EndDate
--and r.InsuranceID = @Insuranceid
--and r.Canceled = 0
--inner join tblTrip t2
--on t.TripdIdOrgSplit = t2.Tripid 
--where (t.DateReceived is null or t2.DateReceived is null)
insert into #PaperworkMissing
select distinct tripid from (
select distinct t.tripid,Canceled, case when t.datereceived IS null then 0 else 1 end as paperwork
from tblTrip t
inner join tblRide r
on t.TripID = r.tripID
and t.TripdIdOrgSplit is not null
and RideDate between @StartDate and @EndDate
and r.InsuranceID = @Insuranceid
and r.Canceled = 0
and t.PaymentMadeDate  <= GETDATE() --added7.19.17 av

inner join tblTrip t2
on t.TripdIdOrgSplit = t2.Tripid 
where (t.DateReceived is null or t2.DateReceived is null)
union all
select distinct t.TripdIdOrgSplit as TripID,r2.Canceled,case when t2.datereceived IS null then 0 else 1 end as paperwork
from tblTrip t
inner join tblRide r
on t.TripID = r.tripID
and t.TripdIdOrgSplit is not null
and RideDate between @StartDate and @EndDate
and r.InsuranceID  = @Insuranceid
and r.Canceled = 0
and t.PaymentMadeDate  <= GETDATE() --added7.19.17 av

inner join tblTrip t2
on t.TripdIdOrgSplit = t2.Tripid
inner join tblRide r2
on t2.TripID = r2.tripid 
where (t.DateReceived is null or t2.DateReceived is null)
)a
where Canceled = 0 and paperwork = 0

insert into tblEzClaimAddressRptOld
(
TripID,InsuranceID,Insurance,ClientID,Client,RideDate,TripType,LegCountNotCanceled,
Fee,
LegNoShowCount,Diagnosis1,RenderingPHYFID,FacilityAddressID,
FacilityName,AuthCode,RepID,MemberID,ReimburseRate,
UnloadedReimburseRate,SumOfLoadedMiles,SumOfUnloadedMiles,
DeadHeadAuth,PaidUnloadedMiles,TotalTripMiles,PaidMiles,
--UnpaidMiles,
MealsMisc,BillingAmount,EzClaimPhysicianID,PatientID,SeqNo,EzLinkID,
SplitLoadedMiles, SplitUnloadedMiles,Warning,SelectRecord,
UserName
)



select distinct t.TripID,@insuranceid as Insuranceid,
@insurance as Insurance,
legs.ClientID,[clln] + ', ' + [clfn] AS Client,legs.RideDate, 
case when SplitCheck = 1 then 'Split' else TripType end as TripType,
(LegCount) as LegCountNotCanceled,
cast(case when @insuranceid = 2 then 
              (case when legs.RideDate >= '2016-07-01' then 
                    (case when LegCount = 1 then 10.00 else 20.00 end) 
               else 0 end)
     else 0.00 end as money) as Fee,
(LegNoShowCounter) as LegNoShowCount,
case when @insuranceid = 2 then 'R68.89'
     when @insuranceid = 5 then 'Z00.8'
     when @insuranceid = 29 then 'R68.89'
     when @insuranceid = 4 then 'R68.89'
     else 'WrongInsurance' end as Diagnosis1, 
case when @insuranceid = 2 then 17
     when @insuranceid = 5 then 182
     when @insuranceid = 29 then 3836
     when @insuranceid = 4 then 17--619
     else 0 end as RenderingPHYFID,   
FacilityAddressID, seq.FacilityName,
legs.AuthCode,legs.RepID,legs.MemberID,ReimburseRate,
Cast(case when @Insuranceid = 2 and legs.RideDate >= '2016-07-01' then @BlueCrossRate
     else ReimburseRate End as Money) as UnloadedReimburseRate,

SumOfLoadedMiles,
SumOfUnloadedMiles,
(isnull(Bill.MaxReimburse,0)) as DeadHeadAuth,

UnloadedMiles as PaidUnloadedMiles,
(SumofLoadedMiles + SumOfUnloadedMiles) as TotalTripMiles,
(SumofLoadedMiles + UnloadedMiles) as PaidMiles,

--UnpaidUnloadedMiles + NoShowMilesNoNoShow as UnPaidMiles, --NoShowMiles are now filtered out based on insurance rule

isnull(t.TripDriverMeals,0)+ isnull(t.TripDriverMisc,0) AS MealsMisc,

(cast(round((isnull([Sumofloadedmiles],0))*[reimburserate],2) + BillUnloadedMiles as money)) +
cast(case when @insuranceid = 2 then 
              (case when legs.RideDate >= '2016-07-01' then 
                    (case when LegCount = 1 then 10.00 else 20.00 end) 
               else 0 end)
     else 0.00 end as money) as  BillingAmount,

a.EZClaimPhysicianID, ez.Patientid,seq.SeqNo,ez.EZLinkid,SplitloadedMiles,SplitUnloadedMiles,
(case when a.EZClaimPhysicianID is null then 'FACILITY NOT IN EZCLAIM - MATCH OR ADD; ' else '' end +
case when ez.PatientID is null then 'PATIENT NOT IN EZCLAIM - MATCH OR ADD; ' else '' end  +
case when ez.EZLinkid is null then 'VERIFY PICKUP ADDRESS IS IN ADDRESS TABLE; ' else '' end  +
case when @insuranceid=2 and CAST(legs.authcode as varchar(25)) not like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][a-z][a-z][0-9][0-9][0-9][0-9]' then 'Verify BCBS Auth Code. ' else '' end +
case when @insuranceID=2 And ((cast(legs.MemberID as varchar(25)) Not Like 'XZG80_______') and (cast(legs.MemberID as varchar(25)) Not Like 'XZS80_______')) then 'Verify Insurance ID Number. ' else '' end +
case when @insuranceID=2 And CAST(legs.RepID as varchar(25)) Not Like 'PP___-__' then 'Verify BCBS Group Number. ' else '' end +
case when @insuranceID=2 And legs.RepID Is Null then 'Group Number Required for BCBS. ' else '' end +
case when @insuranceid=5 And cast(legs.MemberID as varchar(25)) Not Like '00_______00' then 'Verify UCare Insurance ID Number. ' else '' end +
case when @insuranceid=5 And cast(legs.AuthCode as varchar(25)) Not Like 'HR%' then 'Verify UCare Auth Code. ' else '' end +
case when @insuranceid=5 And len(cast(legs.AuthCode as varchar(25)))<> 9 then 'Verify UCare Auth Code. ' else '' end +
case when @insuranceid=4 And cast(legs.MemberID as varchar(25)) Not Like '_____-_________-00' then 'Verify Medica Insurance ID Number. ' else '' end +
case when @insuranceid=4 And cast(legs.AuthCode as varchar(25)) Like 'H%' then 'Verify Medica Auth Code. ' else '' end +
case when @insuranceid=4 And cast(legs.AuthCode as varchar(25)) Not Like '_________' then 'Verify Medica Auth Code. ' else '' end +
case when @insuranceid<>29 And len(CAST(legs.RepID as varchar(25))) < 5 then 'Verify RepID. ' else '' end +
case when @insuranceid=29 And len(CAST(legs.AuthCode as varchar(25))) <> 6 then 'Verify Auth Code' else '' end)
as Warning,

--case when 
--     (case when a.EZClaimPhysicianID is null then 'FACILITY NOT IN EZCLAIM - MATCH OR ADD ' else '' end +
--      case when PatientID is null then 'PATIENT NOT IN EZCLAIM - MATCH OR ADD ' else '' end  +
--case when ez.EZLinkid is null then 'Verify Pickup Address Is In Address Table' else '' end ) = '' then 1 else 0 end 
--as SelectRecord,
0 as SelectRecord, --set default to unselected
@username

FROM  
(tblTrip t 
/**********************************************************************************************/
inner join (--general loaded and unloaded miles calculatiions for trip + split trip
	select r.TripID,r.ClientID,r.InsuranceID,Min(r.RideDate) as RideDate,
	COUNT(rideid) + Max(isnull(SplitLegCount,0)) as LegCount,
	min(isnull([AuthCode],'')) as AuthCode,min(isnull(RepID,'')) as RepID,
	min(isnull(MemberID,'')) as MemberID,
	MIN(ReimburseRate) as ReimburseRate,
	(Sum(case when NoShow = 1 then 1 else 0 end) + Sum(isnull(p.LegNoShowCounter,0))) as LegNoShowCounter,
	(sum(isnull(LoadedMiles,0))+ Sum(isnull(p.SumofLoadedMiles,0))) AS SumofLoadedMiles,
	(sum(isnull(UnloadedMiles,0))+ Sum(isnull(p.SumofUnLoadedMiles,0))) AS SumofUnloadedMiles,
	(sum(isnull([loadedmiles],0)) + sum(isnull([unloadedmiles],0)) + 
	SUM(isnull(p.TotalTripMiles,0))) AS TotalTripMiles,
	case when MAX(isnull(p.TripdIdOrgSplit,0)) > 0 then 1 else 0 end as SplitCheck,
	Sum(isnull(p.SumofLoadedMiles,0)) as SplitLoadedMiles
	from tblRide r
	--join legs of the split trip to original tripid
	left join (
		select P.TripID, S.TripdIdOrgSplit, 
		Sum(case when NoShow = 1 then 1 else 0 end) as LegNoShowCounter,
		sum(isnull(LoadedMiles,0))  AS SumofLoadedMiles,
		sum(isnull(UnloadedMiles,0)) AS SumofUnloadedMiles,
		sum(isnull([loadedmiles],0)) + sum(isnull([unloadedmiles],0)) AS TotalTripMiles,
		COUNT(rideid) as SplitLegCount
		from tblRide P
		inner join tblTrip t
		on p.TripID = t.TripID
		and t.DateReceived is not null
		inner join #Split s
		on p.TripID = s.tripid --s.TripdIdOrgSplit
		where canceled = 0 and
	    ((Noshow = case when @NoNoShowsTrue = 1 then 0 else 0 end) or 
	    (Noshow = case when @NoNoShowsTrue = 1 then 0 else 1 end)) and
		(RideDate Between @startdate And @enddate) AND 
		(InsuranceID=@insuranceid)
		and t.PaymentMadeDate  <= GETDATE() --added7.19.17 av

		group by P.TripID, S.TripdIdOrgSplit)p
	on r.TripID = p.TripdIdOrgSplit
	and r.SeqNo = 1 --only want the split to be added once
	inner join tblTrip t
	on r.TripID = t.TripID
	and t.DateReceived is not null
	where canceled = 0 and
    ((Noshow = case when @NoNoShowsTrue = 1 then 0 else 0 end) or 
	(Noshow = case when @NoNoShowsTrue = 1 then 0 else 1 end)) and
	(RideDate Between @startdate And @enddate) AND 
	(InsuranceID=@insuranceid) 
	--and ClientID = 1322
	group by r.TripID,ClientID,InsuranceID
)legs
on t.tripid = legs.tripid
/*********************************************************************************************/
--calculations for unloaded miles and no reimbursement miles
inner join (

Select C.TripID, C.InsuranceID,
MIN(C.ridedate) as Ridedate,
(case when Max(isnull(C.MaxReimburse ,0)) > Max(isnull(D.MaxReimburse ,0)) 
     then Max(isnull(C.MaxReimburse ,0))
     else Max(isnull(D.MaxReimburse ,0)) end) as MaxReimburse, 

--(SUM(isnull(UnloadedMiles,0)) + SUM(isnull(UnloadedMiles2,0))) as UnloadedMiles,
case when C.Insuranceid = 2
then
		(case when (sum(isnull(UnloadedMiles,0)) + sum(isnull(UnloadedMiles2,0)))
		           < (case when Max(isnull(C.MaxReimburse ,0)) > Max(isnull(D.MaxReimburse ,0)) 
                           then Max(isnull(C.MaxReimburse ,0))
                           else Max(isnull(D.MaxReimburse ,0)) end)
			 then (sum(isnull(UnloadedMiles,0)) + sum(isnull(UnloadedMiles2,0)))
			 else (case when Max(isnull(C.MaxReimburse ,0)) > Max(isnull(D.MaxReimburse ,0)) 
                        then Max(isnull(C.MaxReimburse ,0))
                        else Max(isnull(D.MaxReimburse ,0)) end)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
		end)--if maxreimburse is 0 or null then 0  
else (sum(isnull(UnloadedMiles,0)) + sum(isnull(UnloadedMiles2,0))) end as UnloadedMiles,

case when C.Insuranceid = 2
then
	(case when min(C.ridedate) >= '2016-07-01' then
		(case when (sum(isnull(UnloadedMiles,0)) + sum(isnull(UnloadedMiles2,0)))
		      < (case when Max(isnull(C.MaxReimburse ,0)) > Max(isnull(D.MaxReimburse ,0)) 
                      then Max(isnull(C.MaxReimburse ,0))
                      else Max(isnull(D.MaxReimburse ,0)) end)
			 then round((sum(isnull(UnloadedMiles,0)) + sum(isnull(UnloadedMiles2,0)))* @BlueCrossRate,2)
			 else round((case when Max(isnull(C.MaxReimburse ,0)) > Max(isnull(D.MaxReimburse ,0)) 
                              then Max(isnull(C.MaxReimburse ,0))
                              else Max(isnull(D.MaxReimburse ,0)) end)* @BlueCrossRate,2)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
		end)--if maxreimburse is 0 or null then 0 reimbursement    
	  else
		(case when (sum(isnull(UnloadedMiles,0)) + sum(isnull(UnloadedMiles2,0)))
		         < (case when Max(isnull(C.MaxReimburse ,0)) > Max(isnull(D.MaxReimburse ,0)) 
                         then Max(isnull(C.MaxReimburse ,0))
                         else Max(isnull(D.MaxReimburse ,0)) end)
			 then round((sum(isnull(UnloadedMiles,0)) + sum(isnull(UnloadedMiles2,0)))* max(reimburserate),2)
			 else round((case when Max(isnull(C.MaxReimburse ,0)) > Max(isnull(D.MaxReimburse ,0)) 
                              then Max(isnull(C.MaxReimburse ,0))
                              else Max(isnull(D.MaxReimburse ,0)) end)* Max(Reimburserate),2)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
		end)
	End)
else round((sum(isnull(UnloadedMiles,0)) + sum(isnull(UnloadedMiles2,0)))* max(reimburserate),2) end as BillUnloadedMiles,

(SUM(isnull(UnloadedMiles,0)) + SUM(isnull(UnloadedMiles2,0))) - 
(case when C.Insuranceid = 2
then
		(case when (SUM(isnull(UnloadedMiles,0)) + SUM(isnull(UnloadedMiles2,0)))
		       < (case when Max(isnull(C.MaxReimburse ,0)) > Max(isnull(D.MaxReimburse ,0)) 
                       then Max(isnull(C.MaxReimburse ,0))
                       else Max(isnull(D.MaxReimburse ,0)) end)
			 then (SUM(isnull(UnloadedMiles,0)) + SUM(isnull(UnloadedMiles2,0)))
			 else (case when Max(isnull(C.MaxReimburse ,0)) > Max(isnull(D.MaxReimburse ,0)) 
                        then Max(isnull(C.MaxReimburse ,0))
                        else Max(isnull(D.MaxReimburse ,0)) end)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
		end)--if maxreimburse is 0 or null then 0    
else (SUM(isnull(UnloadedMiles,0)) + SUM(isnull(UnloadedMiles2,0))) end) As UnpaidUnloadedMiles,

(Sum(isnull(NoShowMilesNoNoShow,0)) + Sum(isnull(NoShowMilesNoNoShow2,0))) as NoShowMilesNoNoShow, --lost miles because of no show

(SUM(isnull(UnloadedMiles2,0))) as SplitUnloadedMiles

from (
	Select b.TripID,InsuranceID,Min(RideDate) as RideDate, Max(ReimburseRate) as ReimburseRate,
	SUM(isnull(UnloadedMiles,0)) as UnloadedMiles,SUM(isnull(NoShowMilesNoNoShow,0)) as NoShowMilesNoNoShow,
    Max(MaxReimburse) as MaxReimburse
    from (
    
	Select r.TripID,InsuranceID,RideDate,ReimburseRate,
	case when @NoNoShowsTrue = 1 and NoShow = 1 then 0
	     when @UnloadedMilesTrue = 0 then 0
     else UnloadedMiles end as UnloadedMiles,
     
	case when @NoNoShowsTrue = 1 and NoShow = 1 then UnloadedMiles --all unloaded miles are no show
	 else 0 end as NoShowMilesNoNoShow --used to calculate no reimbursement miles
	
	from tblRide r
	inner join tblTrip t
	on r.TripID = t.TripID
	and t.DateReceived is not null
	where canceled = 0 and
	((Noshow = case when @NoNoShowsTrue = 1 then 0 else 0 end) or 
	(Noshow = case when @NoNoShowsTrue = 1 then 0 else 1 end)) and
	(RideDate Between @startdate And @enddate) AND 
	(InsuranceID=@insuranceid)
	and t.PaymentMadeDate  <= GETDATE() --added7.19.17 av

	--and ClientID = 1322
	)b
	inner join tblTrip t
	on b.TripID = t.tripid
	--and t.TripID not in (Select TripID from #Split)
	and t.TripID not in (Select TripID from #SplitOriginalGood) --we want to get a secondary split where the orginial is canceled or eliminated
	group by b.TripID,b.InsuranceID
)c
left join ( --split trip legs
	Select b.TripID,InsuranceID,b.TripdIdOrgSplit,Min(RideDate) as RideDate2, Max(ReimburseRate) as ReimburseRate2,
	SUM(isnull(UnloadedMiles,0)) as UnloadedMiles2,SUM(isnull(NoShowMilesNoNoShow,0)) as NoShowMilesNoNoShow2,
	Max(MaxReimburse) as MaxReimburse
    
    from (
    
	Select r.TripID,InsuranceID,RideDate,ReimburseRate,
	case when @NoNoShowsTrue = 1 and NoShow = 1 then 0
	     when @UnloadedMilesTrue = 0 then 0
     else UnloadedMiles end as UnloadedMiles,
     
	case when @NoNoShowsTrue = 1 and NoShow = 1 then UnloadedMiles --all unloaded miles are no show
	 else 0 end as NoShowMilesNoNoShow, --used to calculate no reimbursement miles
	--MaxReimburse,
	S.TripdIdOrgSplit
	from tblRide r
	inner join tblTrip t
	on r.TripID = t.TripID
	and t.DateReceived is not null
	inner join #Split s
	on r.TripID = s.tripid
	--inner join tblTrip t
	--on r.TripID = t.tripid
	where canceled = 0 and
	((Noshow = case when @NoNoShowsTrue = 1 then 0 else 0 end) or 
	(Noshow = case when @NoNoShowsTrue = 1 then 0 else 1 end)) and
	(RideDate Between @startdate And @enddate) AND 
	(InsuranceID=@insuranceid) 
	and t.PaymentMadeDate  <= GETDATE() --added7.19.17 av

	--and ClientID = 1322
	)b
	inner join tblTrip t
	on b.TripID = t.tripid
	group by b.TripID,b.InsuranceID,b.TripdIdOrgSplit
)D
on c.tripid = d.TripdIdOrgSplit
group by C.TripID,C.InsuranceID

)Bill
on t.tripid = Bill.tripid
/*********************************************************************************************/
Inner Join ltblTripType tt
on t.TripTypeId = tt.TripTypeID
) 
INNER JOIN tblClient 
ON legs.ClientID = tblClient.ClientID 
inner join (
	select r.tripid,seqno,
	--FacilityName,
	(Select FacilityName from tblAddress where AddressID = (		
        case when isnull(DOAddressTypeID,2) <> 2 then DOAddressID
		     when isnull(DOAddressTypeID,2) = 2 
			  and isnull(PUAddressTypeID,2) <> 2 then PUAddressID
		     when isnull(DOAddressTypeID,2) = 2 
			  and isnull(PUAddressTypeID,2) = 2 then isnull(DOAddressID,0)
		else DOAddressID end )) as FacilityName,
	 EzLinkID, 
	
	       RANK() over (partition by r.tripid order by seqno) as rankit,
	       
			case when isnull(DOAddressTypeID,2) <> 2 then DOAddressID
			     when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) <> 2 then PUAddressID
			     when isnull(DOAddressTypeID,2) = 2 
				  and isnull(PUAddressTypeID,2) = 2 then isnull(DOAddressID,0)
			else DOAddressID end as FacilityAddressID
	from tblRide r
	inner join tblTrip t
	on r.TripID = t.TripID
	and t.DateReceived is not null
	where Canceled = 0
	and RideDate between @startdate and @enddate
	and InsuranceID = @insuranceid
	and t.PaymentMadeDate  <= GETDATE() --added7.19.17 av

	and	((Noshow = case when @NoNoShowsTrue = 1 then 0 else 0 end) or 
     (Noshow = case when @NoNoShowsTrue = 1 then 0 else 1 end))
	--and TripID not in ( Select TripID from #Split )
)seq
on t.TripID = seq.TripID
and seq.rankit = 1 --get the first seqno by rank
left join EzPatientClientLink2 ez
on seq.EzLinkID = ez.EZLinkid
left join tblAddress a --get the ezclaim physicianid
on seq.FacilityAddressID = a.AddressID

WHERE (t.TripTypeId<>6)
and t.TripID not in (
	select TripID from EzClaimTripLink
	where Claimid is not null
)
and legs.InsuranceID = @insuranceid 
and t.TripID not in (select TripID from #PaperworkMissing)
and (t.MIPOnly is null or t.MIPOnly <> 1)

--check if the claim was entered manually
--remove it from being entered again
--Facility Match in EzClaim
--update EzClaimTripLink
--set claimid = c.claimid,
--    FacilityMatch = 1
--from (
--select ClaimID,b.TripID
--from (
--select 
--PatientID,
--FacilityClaimFID as EZClaimPhysicianID,
--case when ContractID = 1 then 2
--     when ContractID  = 9 then 5
--     when ContractID  = 11 then 29
--     when ContractID  = 10 then 4
--     else 0 end as InsuranceID,
--DTMFirstClaimDate as Ridedate,
--TotalCharge as BillingAmount,
--PriorAuthorizationNO as AuthCode,ClaimID
--from ezclaim...[Claim Form Table]
----where patientid = 13401
--)a
--inner join (
--select pc.patientid,EzClaimPhysicianID, Insuranceid, RideDate, BillingAmount , AuthCode,
--c.clientid,c.TripID,tblEZClaim_ID
--from tblezclaim c
--inner join (
--	select EzlinkID,patientid from EzPatientClientLink2
--	where Patientid is not null
--) pc
--on c.EzLinkID = pc.EZLinkid
--and c.UserName = @username
--)b 
--on a.patientid = b.Patientid
--and a.EZClaimPhysicianID = b.EzClaimPhysicianID 
--and a.InsuranceID = b.Insuranceid
--and a.Ridedate = b.RideDate
--and a.BillingAmount = b.BillingAmount
--and a.AuthCode = b.AuthCode
--)c
--where EzClaimTripLink.tripid = c.TripID

----check if the claim was entered manually
----remove it from being entered again
----Other Facility in EzClaim then in tblride
--update EzClaimTripLink
--set claimid = c.claimid,
--    FacilityMatch = 0,
--    DifferentFacilityID = EZClaimPhysicianID
    
--from (
--select ClaimID,b.TripID,a.EZClaimPhysicianID
--from (
--select 
--PatientID,
--FacilityClaimFID as EZClaimPhysicianID,
--case when ContractID = 1 then 2
--     when ContractID  = 9 then 5
--     when ContractID  = 11 then 29
--     when ContractID  = 10 then 4
--     else 0 end as InsuranceID,
--DTMFirstClaimDate as Ridedate,
--TotalCharge as BillingAmount,
--PriorAuthorizationNO as AuthCode,ClaimID
--from ezclaim...[Claim Form Table]
----where patientid = 13401
--)a
--inner join (
--select pc.patientid,EzClaimPhysicianID, Insuranceid, RideDate, BillingAmount , AuthCode,
--c.clientid,c.TripID,tblEZClaim_ID
--from tblezclaim c
--inner join (
--	select EzlinkID,patientid from EzPatientClientLink2
--	where Patientid is not null
--) pc
--on c.EzLinkID = pc.EZLinkid
--and c.UserName = @username
--)b 
--on a.patientid = b.Patientid
----remove manually entered claims where physician id is same address but different name
----and a.EZClaimPhysicianID = b.EzClaimPhysicianID 
--and a.InsuranceID = b.Insuranceid
--and a.Ridedate = b.RideDate
--and a.BillingAmount = b.BillingAmount
--and a.AuthCode = b.AuthCode
--)c
--where EzClaimTripLink.tripid = c.TripID

--update tblEzClaim
--set TripID = TripdIdOrgSplit
--from #Split s
--where tblEzClaim.TripID = s.tripid
--and tblEzClaim.UserName = @username

----remove entries where a claimid was found in ezclaim
--delete from tblEzClaim
--where TripID in (
--	select TripID from EzClaimTripLink
--	where Claimid is not null
--)
--and UserName = @username

----check if we are about to insert a claim that may match a claim already in database
--update tblEzClaim
--set Warning = Warning + 'Same Date Entry '
--where TripID in (
--select tripid
--from tblEzClaim c
--inner join ezclaim...[Claim Form Table] f
--on isnull(c.PatientID,-1) = f.patientid
--and c.UserName = @username
--and c.RideDate = f.DTMFirstClaimDate
--and contractid in (1,9,11,10))

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


----Insert new records into EZClaimTripLink so we can track trips to claims
--INSERT INTO [Volunteer_DriversSQL].[dbo].[EzClaimTripLink]
--           ([timestamp]
--           ,[Claimid]
--           ,[Tripid]
--           ,[UserName]
--           ,[InsuranceID]
--           ,[EzLinkID])
--select distinct GETDATE(),Null as ClaimID,TripID,SUSER_SNAME(),Insuranceid,EzLinkID
--from tblEzClaim
--where TripID not in (Select tripid from EzClaimTripLink) --only insert new records
----*** NEVER create multiple records by username. Shoulde be only 1 trip and 1 related claim in this table!! THis created multiple legs to be added in EZClaim if different people
----loaded the same insurance/same time frame.
----Filtered out line below - additional records added per user 4.19.17 av     
----and UserName = @username

----Update records in EZClaimTripLink so matched patients update the ezlinkid
--Update EzClaimTripLink
--set EzLinkID = e.EzLinkID
--from tblEzClaim e
--where EzClaimTripLink.tripid = e.TripID
--and (EzClaimTripLink.EzLinkID is null or 
--     EzClaimTripLink.EzLinkID <> e.EzLinkID)
--and e.EzLinkID is not null



drop table #Split
drop table #PaperworkMissing
drop table #SplitOriginalGood