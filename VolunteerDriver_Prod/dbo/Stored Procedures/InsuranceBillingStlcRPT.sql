
CREATE procedure [dbo].[InsuranceBillingStlcRPT]  (@insuranceid int, @startdate datetime, @enddate datetime)
as
set nocount on
SET ANSI_WARNINGS OFF
------------------------------------------------------------------------------------------
declare 
		
        @MaxDeadHeadTrue int, @UnloadedMilesTrue int, @AllowMealsTrue int,
        @NoNoShowsTrue int, @insurance varchar(50),@TripFeesTrue int,@UnloadFedTrue int


--,@startdate datetime, @enddate datetime, @insuranceid int        
--set @startdate = '2018-9-01'
--set @enddate = '2018-9-30'
--set @insuranceid = 20

declare @ConusRate float

-------------------------------------------------------------------------------------------
--Gets the current federal mileage reimbursement rate for the report time period
set @ConusRate =(select rateamount 
from tblrate 
where 
--Active=1 AND
((BegDate)<=@startdate) AND ((EndDate) Is Null Or (EndDate)>=@enddate) AND InsuranceProviderID = 14)
-----------------------------------------------------------------------------------------
--Gets the Current contract mileage reimbursement rate for the selected insurance and time period selected for the report
declare @CurrentRate float

Set @CurrentRate = (select rateamount
from tblRate
where ((BegDate)<=@startdate) AND ((EndDate) Is Null Or (EndDate)>=@enddate) AND InsuranceProviderID = @insuranceid)
------------------------------------------------------------------------------------------
--retrieve username of person logged in and running the report
declare @username varchar(50)
select @username = SUSER_NAME()
-----------------------------------------------------------------------------------------
Set @EndDate = @EndDate + cast('23:59:59.997' as time)
-----------------------------------------------------------------------------------------
--Report in access is run from a table. this deletes records from the last time the current user ran the report
delete from tblInsuranceBillingRPT
where username = @username
------------------------------------------------------------------------------------------
--Insurance rules are retrieved below - this affects the calculations
--this query is flexible so that a report can be run for past time as well as current dates (no active records - just based on dates)

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
--This code displays in SSMS when query/SP is run to show the insurance rules for the selected insurance
--for the time period of the report. This aids with troubleshooting insurance rule calculation issues.

--select distinct  i.InsuranceID, isnull(irq.RuleID,0) as RuleID, IRQ.RuleName, cast(@CurrentRate as money) as ReimburseRate 
--from tblInsurance i
--left join
--(
--select ir.ruleid, InsuranceProviderID, r.RuleName
--from tblInsuranceRules ir
--inner join ltblRules r 
--on ir.RuleID=r.RuleID
--where (
--((IR.BegDate)<=@startdate) AND ((IR.EndDate) Is Null Or (IR.EndDate)>=@enddate) )
--) as IRQ
--on i.InsuranceID = IRQ.InsuranceProviderID
--where 
--i.Insuranceid = @insuranceid
-------------------------------------------------------------------------------
--This stored proc has TWO insert statements. the first part focuses on trips/legs with a single TripID.
--The second insert focuses on Split Trips, which combine records from two separate TripIDs together.
-------------------------------------------------------------------------------
--This statement populates the insurance billing report table for the access database to retrieve the calculations from

insert into tblInsuranceBillingRPT
( County, RideDate, Client, [Authorization Code], MemberID, LoadedMiles, UnloadedMiles,
[Total Miles], Meals, Misc, UnloadedMilesTrue, AllowMealsTrue, Fee,
[Total Mileage Expense], [Total Billed], [MA Ride], Waiver, [Child/Fam No Waiver],
[Adult Service No Waiver], [Public Health No Waiver], [AC Client Medical],
[On Going], [New For Rides], [Round Trip], [One Way], Worker, UserName, repid, cldob, PendPaperwork, EzclaimClaimID)

----------------------------------------------------------------------------------------------------
--***NOT SPLIT TRIPS FIRST

Select 
BillingCounty as County,
minofridedate as RideDate,
client, 
authcode,
memberid,
sum(sumofLoadedMiles)as TotalLoadedMiles,
		--sum(sumofunloadedmiles) as sumofunloadedmiles, --only used for testing - comment out for execution
		--max(isnull(maxreimburse,0)) as maxreimburse, --only used for testing - comment out for execution
sum(case when @MaxDeadHeadTrue<>0 and isnull(MaxReimburse,0)=0 then 0 
	when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 then
		case when ISNULL(maxreimburse,0)> SumOfunLoadedMiles then SumOfunLoadedMiles
			when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then MaxReimburse 
		end
		when @UnloadedMilesTrue = 0 then 0
	else sumofUnloadedmiles end) as TotalUnloadedMiles,
sum(sumofLoadedMiles + case when @MaxDeadHeadTrue<>0 and isnull(MaxReimburse,0)=0 then 0 
	when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 then
		case when ISNULL(maxreimburse,0)> SumOfunLoadedMiles then SumOfunLoadedMiles
			when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then MaxReimburse
		end
	when @UnloadedMilesTrue = 0 then 0
	else sumofUnloadedmiles end)  as TotalMiles,
drivermeals as Meals,
drivermisc as Misc,
@UnloadedMilesTrue as UnloadedMilesTrue,
@AllowMealsTrue as AllowMealsTrue,	
case when @tripfeesTrue <> 0 and PendingPaperwork <> 'P' and minofridedate < 5/1/19 then(case when max(legs) = 1 then 11.00 else 22.00 end)
	 when @tripfeesTrue <> 0 and PendingPaperwork <> 'P' and minofridedate >= 5/1/19 then sum(legs*11) --(case when legs = 1 then 10.00 else 20.00 end) else 0 end as TripFee,
	 else 0 end as TripFee,

-------------------------------------------------------------------------------------------------------------------
cast(round(sum	(LoadedMilesBill + 
	case when @MaxDeadHeadTrue<>0 and isnull(MaxReimburse,0)=0 then 0 
		 when @MaxDeadHeadTrue<>0 and ISNULL(maxreimburse,0) <> 0 then
			case when ISNULL(maxreimburse,0)>= SumOfunLoadedMiles then UnloadedTripAmount 
				 when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then MaxReimburse * @ConusRate
			end
		 when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0  and @UnloadedMilesTrue =0 then
			case when ISNULL(maxreimburse,0)>= SumOfunLoadedMiles then UnloadedTripAmount 
				 when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then MaxReimburse * @CurrentRate
			end
		 when @UnloadedMilesTrue = 0 then 0
		 else UnloadedTripAmount 
	end),2)as money) as TotalMileageExpense,
----------------------------------------------------------------------------------------------------------------------	
cast(round(sum	(case when loadedmilesbill = 0 then 0 
	else ISNULL(case when @tripfeesTrue <> 0 then (case when legs = 1 then 11.00 else legs*11.00 end) else 0 end,0)
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
					else UnloadedTripAmount 
					end
	),2)as money)as TotalBilled, --***combines trip fees with total for trip based on miles and insurance rules
---------------------------------------------------------------------------------------------------------------------------
Max([MA Ride]) as 'MA Ride',
Max(Waiver)  as 'Waiver',
Max([Child/Fam No Waiver]) as 'Child/Fam No Waiver',
Max([Adult Service No Waiver]) as 'Adult Service No Waiver',
Max([Public Health No Waiver]) as 'Public Health No Waiver',
Max([AC Client Medical]) as 'AC Client Medical',
MAx([On Going])  as 'On Going',
Max([New For Rides])  as 'New For Rides',
Max([Round Trip])  as 'Round Trip',
Max([One Way])  as 'One Way',
Max(Worker)  as 'Worker',
@username as UserName,
RepID,
ClDOB,
PendingPaperwork,
EzclaimClaimID

from 
( --***Below code does calculations based on individual legs for the trips - to be combined by above select statement and below group by


	SELECT  
	[clln] + ', ' + [clfn] AS Client, 
	CASE	
			WHEN ISNULL(datereceived,'')<>'' 
				then '' --***Paperwork is received - don't display a Notice
			WHEN ISNULL(datereceived,'')='' 
				then 'P' --***Paperwork NOT Received - Display Flag on Report
			WHEN isnull(TripIdNewSplit,'')<>'' OR ISNULL(t.tripdidorgsplit,'')<>''
				then 'S' 
			ELSE '' end as PendingPaperwork,
	min(t.maxreimburse) as MaxReimburse,
	Case
		when @insuranceid = 2 then 10
		else 0 end As Fee,
	COUNT(r.rideid) as Legs,
	sum(isnull(LoadedMiles,0) * @CurrentRate)  as LoadedMilesBill,
	--sum(
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
		--case 
		--	when @MaxDeadHeadTrue<>0 and isnull(t.MaxReimburse,0)=0 then 0
		--	when @MaxDeadHeadTrue<>0 and  @UnloadFedTrue<>0 and isnull(t.MaxReimburse,0)<>0 then ISNULL(r.UnloadedMiles,0)* @ConusRate 
		--	when @MaxDeadHeadTrue<>0 and  @UnloadFedTrue=0 and isnull(t.MaxReimburse,0)<>0 then ISNULL(r.UnloadedMiles,0)* @CurrentRate 
		--	when @UnloadFedTrue<>0 then ISNULL(r.UnloadedMiles,0)* @ConusRate 
		--	when @UnloadedMilesTrue <>0 then isnull(r.UnloadedMiles,0)* @CurrentRate 
		--	else 0
		--end
		--) 
		AS UnloadedTripAmount, 
	t.TripID,
	Min(r.RideDate) AS MinOfRideDate, 
	Max(lc.County) AS BillingCounty, 
	Case when  @AllowMealsTrue = 0 then 0 else t.TripDriverMeals end as DriverMeals, 
	Case when  @AllowMealsTrue = 0 then 0 else t.TripDriverMisc end as DriverMisc, 
	r.InsuranceID, 
	Sum(isnull(r.LoadedMiles,0)) AS SumOfLoadedMiles, 
	Sum(isnull(r.UnloadedMiles,0)) AS SumOfUnloadedMiles, 
	isnull(r.AuthCode,'') as AuthCode, 
	isnull(r.MemberID,'') as MemberID, 
	Sum(isnull([loadedmiles],0)+isnull([unloadedmiles],0)) AS AllMiles, 
	r.NoShow, 
	i.Insurance, 
	t.TripdIdOrgSplit, 
	t.tripidnewsplit,
	case when t.MARide = 1 then 'Y' else '' end as 'MA Ride',
	case when t.Waver  = 1 then 'Y' else '' end as 'Waiver',
	case when t.ChildFamNoWaver = 1 then 'Y' else '' end as 'Child/Fam No Waiver',
	case when t.AdultServiceNoWaiver = 1 then 'Y' else '' end as 'Adult Service No Waiver',
	case when t.PublicHealthNoWaver  = 1 then 'Y' else '' end as 'Public Health No Waiver',
	case when t.ACClientMedical = 1 then 'Y' else '' end as 'AC Client Medical',
	case when t.OnGoing = 1 then 'Y' else '' end as 'On Going',
	case when t.NewForRides = 1 then 'Y' else '' end as 'New For Rides',
	case when t.RoundTrip = 1 then 'Y' else '' end as 'Round Trip',
	case when t.OneWay = 1 then 'Y' else '' end as 'One Way',
	t.Worker as 'Worker',
	isnull(r.RepID,'') as RepID,
	c.ClDOB,
	t.EzclaimClaimID

	FROM tblRide r INNER JOIN tblTrip t ON r.TripID = t.TripID
	INNER JOIN tblClient c ON r.ClientID = c.ClientID
	INNER JOIN tblInsurance i ON r.InsuranceID = i.InsuranceID
	INNER JOIN ltblCounty lc ON t.BillingCounty = lc.CountyID

	WHERE 
	(
	(r.NoShow =(Case when @NoNoShowsTrue = 1 then 0 else NoShow end) )and
	r.Canceled=0 AND 
	(t.MIPOnly=0 Or t.MIPOnly Is Null) AND 
	r.InsuranceID=@insuranceid 
	and t.TripTypeId<>6
	) 

	GROUP BY 
	[clln] + ', ' + [clfn], 
	CASE	
			WHEN ISNULL(datereceived,'')<>'' 
				then '' --***Paperwork is received - don't display a Notice
			WHEN ISNULL(datereceived,'')='' 
				then 'P' --***Paperwork NOT Received - Display Flag on Report
			WHEN isnull(TripIdNewSplit,'')<>'' OR ISNULL(t.tripdidorgsplit,'')<>''
				then 'S'
			ELSE '' end,
	--t.MaxReimburse,
	t.TripID, 
	Case when  @AllowMealsTrue = 0 then 0 else t.TripDriverMeals end, 
	Case when  @AllowMealsTrue = 0 then 0 else t.TripDriverMisc end, 
	r.InsuranceID, 
	isnull(r.AuthCode,''), 
	isnull(r.MemberID,''),
	r.NoShow, 
	i.Insurance, 
	t.TripdIdOrgSplit, 
	t.tripidnewsplit,
	case when t.MARide = 1 then 'Y' else '' end ,
	case when t.Waver  = 1 then 'Y' else '' end ,
	case when t.ChildFamNoWaver = 1 then 'Y' else '' end,
	case when t.AdultServiceNoWaiver = 1 then 'Y' else '' end ,
	case when t.PublicHealthNoWaver  = 1 then 'Y' else '' end ,
	case when t.ACClientMedical = 1 then 'Y' else '' end ,
	case when t.OnGoing = 1 then 'Y' else '' end ,
	case when t.NewForRides = 1 then 'Y' else '' end ,
	case when t.RoundTrip = 1 then 'Y' else '' end ,
	case when t.OneWay = 1 then 'Y' else '' end ,
	t.Worker,
	isnull(r.RepID,''),
	c.ClDOB,
	EzclaimClaimID
	HAVING 
	(Min(r.RideDate)Between @startdate And @enddate AND r.InsuranceID=@insuranceid and t.TripIdNewSplit is  null and t.TripdIdOrgSplit is  null )

	--order by [clln] + ', ' + [clfn], minofridedate, r.authcode

) Rides

group by 
client, 
--sumofunloadedmiles,
PendingPaperwork,
--maxreimburse,
--case 
--	when @MaxDeadHeadTrue<>0 and  isnull(MaxReimburse,0)<>0 then 
--	case  
--		when isnull(maxreimburse,0)>isnull(SumOfUnloadedMiles,0)then SumOfUnloadedMiles
--		when SumOfUnloadedMiles>isnull(maxreimburse,0) then cast(round(case when MaxReimburse * @ConusRate like '%.__5' then MaxReimburse * @ConusRate + .005
--		else MaxReimburse * @ConusRate end,2)AS money)
--	end
--end,
--case
--	when @MaxDeadHeadTrue<>0 and  isnull(MaxReimburse,0)<>0 then SumOfUnloadedMiles
	
--end,
tripid,
minofridedate,
BillingCounty,
drivermeals,
drivermisc,
insuranceid,
authcode,
memberid,
--case when @MaxDeadHeadTrue<>0 and isnull(MaxReimburse,0)=0 then 0 
--	 when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 then
--		case when ISNULL(maxreimburse,0)> SumOfunLoadedMiles then SumOfunLoadedMiles 
--			when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then MaxReimburse 
--		end
--	 else sumofUnloadedmiles end,
noshow,
insurance,
case when @tripfeesTrue <> 0 and PendingPaperwork <> 'P' then(case when legs = 1 then 11.00 else 22.00 end) else 0 end,
--case when @tripfeesTrue <> 0 then(case when legs = 1 then 10.00 else 20.00 end) else 0 end,
RepID,
ClDOB,
EzclaimClaimID

order by Client, MinOfRideDate, AuthCode


--***THEN SPLIT TRIPS ***SPLIT TRIPS***SPLIT TRIPS***SPLIT TRIPS***SPLIT TRIPS***SPLIT TRIPS***SPLIT TRIPS***SPLIT TRIPS***SPLIT TRIPS***SPLIT TRIPS***SPLIT TRIPS
-------------------------------------------------------------------------
insert into tblInsuranceBillingRPT
( County, RideDate, Client, [Authorization Code], MemberID, LoadedMiles, UnloadedMiles,
[Total Miles], Meals, Misc, UnloadedMilesTrue, AllowMealsTrue, Fee,
[Total Mileage Expense], [Total Billed], [MA Ride], Waiver, [Child/Fam No Waiver],
[Adult Service No Waiver], [Public Health No Waiver], [AC Client Medical],
[On Going], [New For Rides], [Round Trip], [One Way], Worker, UserName, repid, cldob, PendPaperwork, EzclaimClaimID)

----***get Total Miles and Billing Total
Select 
[County],
[RideDate],
client, 
authcode,
memberid,
sum([TotalLoadedMiles]) as TotalLoadedMiles,
sum([TotalUnloadedMiles]) as TotalUnloadedMiles,
sum([TotalMiles]) as TotalAllMiles,
[Meals],
[Misc],
UnloadedMilesTrue,
AllowMealsTrue,
case when PendPaperwork <> 'SP' then [TripFee] else 0 end as TripFee ,
------------------------------------------------------------------------------------------------------------------------------------
	--sum(TotalLoadedMiles*@CurrentRate + --loaded miles total billed
	--case when @MaxDeadHeadTrue<>0 and isnull(MaxReimburse,0)=0 then 0 
	--	 when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 then
	--		case when ISNULL(maxreimburse,0)>TotalUnloadedMiles then TotalUnloadedMiles * @ConusRate
	--			 when ISNULL(maxreimburse,0)< TotalUnloadedMiles then MaxReimburse * @ConusRate
	--		end
	--	 else TotalUnloadedMiles * @CurrentRate
	--	end 	
	--) as TotalMileageExpense,
	sum(totalmileageexpense) as TotalMileageExpense,
--------------------------------------------------------------------------------------------------------------------------------------------	
		
--sum(
--	case 
--		when isnull(LoadedMilesBilled,0) = 0 then 0 
--		else ISNULL(
--			case 
--				when @tripfeesTrue <> 0 then 
--					(case 
--						when TripFee >=20 then 20
--						else TripFee
--					 end) 
--				else 0 
--			end,0)
--	end
--	+ ISNULL(LoadedMilesBilled,0)+ isnull(UnloadedTripAmount,0)--,2) 
--	+ meals + misc
--)as TotalBilled, --***combines trip fees with total for trip based on miles and insurance rules
cast(round(sum(totalmileageexpense) + max(TripFee),2) as money) as TotalBilled,
---------------------------------------------------------------------------------------------------------------------------
[MA Ride],
[Waiver],
[Child/Fam No Waiver],
[Adult Service No Waiver],
[Public Health No Waiver],
[AC Client Medical],
[On Going],
[New For Rides],
[Round Trip],
totals.[One Way],
[Worker],
UserName,
RepID,
ClDOB,
MAX(pendpaperwork) as PendDrPaperwork,
EzclaimClaimID
 
from
	(

----		------*** TOTALS - groups totals based on CombinedTripID
	Select 
	firstofcounty as 'County',
	minofridedate as 'RideDate',
	client, 
	authcode,
	memberid,
	sum(sumofLoadedMiles)as 'TotalLoadedMiles',
	--MAX(maxreimburse) as MaxReimburse, --hide for execution - test only
	--sum(sumofunloadedmiles) as SumofUnloadedMiles, --hide for execution - test only
	
	--sum(
	case when @MaxDeadHeadTrue<>0 and max(isnull(MaxReimburse,0))=0 then 0
			 --when @MaxDeadHeadTrue <> 0 and max(ISNULL(maxreimburse,0)) <> 0 then
				--case when max(ISNULL(maxreimburse,0))> sum(SumOfunLoadedMiles) then sum(SumOfunLoadedMiles)
				--	when max(ISNULL(maxreimburse,0))< sum(SumOfUnloadedMiles) then max(MaxReimburse)
				--end
				when @MaxDeadHeadTrue <> 0 and max(ISNULL(maxreimburse,0)) <> 0 and @UnloadFedTrue<>0 then
					case when max(ISNULL(maxreimburse,0))> sum(SumOfUnloadedMiles) then sum(SumOfUnloadedMiles) 
						 when max(ISNULL(maxreimburse,0))< sum(SumOfUnloadedMiles) then max(isnull(MaxReimburse,0)) 
					end
				 when @MaxDeadHeadTrue <> 0 and max(ISNULL(maxreimburse,0)) <> 0 and @UnloadedMilesTrue <>0 then
					case when max(ISNULL(maxreimburse,0))> sum(SumOfUnloadedMiles) then sum(SumOfUnloadedMiles) 
						 when max(ISNULL(maxreimburse,0))< sum(SumOfUnloadedMiles) then max(isnull(MaxReimburse,0)) 
					end
			 when @UnloadedMilesTrue =0 then 0 
			else sum(sumofUnloadedmiles) 
		end
		--) 
		as 'TotalUnloadedMiles',
	sum(sumofLoadedMiles)+ 
		case when @MaxDeadHeadTrue<>0 and max(isnull(MaxReimburse,0))=0 then 0 
			 --when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 then
				--	case when ISNULL(maxreimburse,0)> SumOfunLoadedMiles then SumOfunLoadedMiles
				--	when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then MaxReimburse
				--	end
				when @MaxDeadHeadTrue <> 0 and max(ISNULL(maxreimburse,0)) <> 0 and @UnloadFedTrue<>0 then
					case when max(ISNULL(maxreimburse,0))> sum(SumOfUnloadedMiles) then sum(SumOfUnloadedMiles) 
						 when max(ISNULL(maxreimburse,0))< sum(SumOfUnloadedMiles) then max(isnull(MaxReimburse,0)) 
					end
				 when @MaxDeadHeadTrue <> 0 and max(ISNULL(maxreimburse,0)) <> 0 and @UnloadedMilesTrue <>0 then
					case when max(ISNULL(maxreimburse,0))> sum(SumOfUnloadedMiles) then sum(SumOfUnloadedMiles) 
						 when max(ISNULL(maxreimburse,0))< sum(SumOfUnloadedMiles) then max(isnull(MaxReimburse,0)) 
					end
			 when @UnloadedMilesTrue =0 then 0
			 else sum(sumofUnloadedmiles) 
		end  as 'TotalMiles',
	max(drivermeals) as 'Meals',
	max(drivermisc) as 'Misc',
	@UnloadedMilesTrue as UnloadedMilesTrue,
	@AllowMealsTrue as AllowMealsTrue,
	(case when @TripFeesTrue <>0 then (case when sum(legs) = 1 then 11.00 else 22.00 end)else 0 end) as 'TripFee',
	-----------------------------------------------------------------------------------------------------------------------------------
		cast(round(sum(LoadedMilesBill) + 
			case when @MaxDeadHeadTrue<>0 and max(isnull(MaxReimburse,0))=0 then 0 
				 when @MaxDeadHeadTrue <> 0 and max(ISNULL(maxreimburse,0)) <> 0 and @UnloadFedTrue<>0 then
					case when max(ISNULL(maxreimburse,0))> sum(SumOfUnloadedMiles) then sum(SumOfUnloadedMiles) * @ConusRate
						 when max(ISNULL(maxreimburse,0))< sum(SumOfUnloadedMiles) then max(isnull(MaxReimburse,0)) * @ConusRate
					end
				 when @MaxDeadHeadTrue <> 0 and max(ISNULL(maxreimburse,0)) <> 0 and @UnloadedMilesTrue <>0 then
					case when max(ISNULL(maxreimburse,0))> sum(SumOfUnloadedMiles) then sum(SumOfUnloadedMiles) * @CurrentRate
						 when max(ISNULL(maxreimburse,0))< sum(SumOfUnloadedMiles) then max(isnull(MaxReimburse,0)) * @CurrentRate
					end
				 --when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 and @UnloadFedTrue<>0 then
					--case when ISNULL(maxreimburse,0)> SumOfUnloadedMiles then SumOfUnloadedMiles * @ConusRate
					--	 when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then isnull(MaxReimburse,0) * @ConusRate
					--end
				 --when @MaxDeadHeadTrue <> 0 and ISNULL(maxreimburse,0) <> 0 and @UnloadedMilesTrue <>0 then
					--case when ISNULL(maxreimburse,0)> SumOfUnloadedMiles then SumOfUnloadedMiles * @CurrentRate
					--	 when ISNULL(maxreimburse,0)< SumOfUnloadedMiles then isnull(MaxReimburse,0) * @CurrentRate
					--end
				 when @UnloadedMilesTrue =0 then 0
		else sum(SumOfUnloadedMiles)* @CurrentRate end ,2)as money)  as 'TotalMileageExpense', -- v3
	-----------------------------------------------------------------------------------------------------------------------------------

	MAx(st.[MA Ride]) as 'MA Ride',
	Max(st.Waiver)  as 'Waiver',
	Max(st.[Child/Fam No Waiver]) as 'Child/Fam No Waiver',
	Max(st.[Adult Service No Waiver]) as 'Adult Service No Waiver',
	Max(st.[Public Health No Waiver]) as 'Public Health No Waiver',
	Max(st.[AC Client Medical]) as 'AC Client Medical',
	MAx(st.[On Going])  as 'On Going',
	Max(st.[New For Rides])  as 'New For Rides',
	Max(st.[Round Trip])  as 'Round Trip',
	Max(st.[One Way])  as 'One Way',
	Max(st.[Worker]) as 'Worker',
	@username as UserName,
	RepID,
	ClDOB,
	max(isnull(maxreimburse,0)) as MaxReimburse,
	max(PendingPaperwork)as PendPaperwork,
	sum(LoadedMilesBill) as LoadedMilesBilled,
	--sum(unloadedtripamount) as UnloadedTripAmount, --This has Max deadhead null, allow unloaded miles and fed unloaded miles rules included --need to add max deadhead amount above
	
	Sum(fee) as Fee,
	EzclaimClaimID

	from 

	( 
	--*** ST - SPLIT TRIPS Below code does calculations based on individual legs for the trips - to be combined by above select statement and below group by

		SELECT DISTINCT 

		Min(r.RideDate) AS MinOfRideDate,
		[clln] + ', ' + [clfn] AS Client,
				CASE	
				----1st when statement is looking at if the current trip was original. it looks at the current trip record and the new split trip record
				----to see if either trips are NOT pending paperwork. Need to filter out CANCELED split trips on the OTHER trip.
				WHEN(isnull([TripdIdOrgSplit],'')<>'' And 
					ISNULL(t.datereceived,'')<>'' and
					isnull((Select t1.datereceived from tblTrip t1 where t1.tripcanceled = 0 and t1.TripID = isnull(t.[TripdIdOrgSplit],'')),'')<>'')
					Or (isnull([TripIdNewSplit],'')<>'' And 
					ISNULL(t.datereceived,'')<>'' and
					isnull((Select t2.datereceived from tblTrip t2 where t2.tripcanceled = 0 and t2.TripID = isnull(t.[TripIdNewSplit],'')),'')<>'')
					then 'S' --*** Both Trips paperwork Received - just indicate that it is a Split
					--look at the code where we are looking at canceled legs - might need nested case statement for pending
				WHEN (ISNULL([tripdidorgsplit],0)<>0 and (select t7.tripcanceled from tblTrip t7 where t7.TripID = ISNULL(t.[TripdIdOrgSplit],0))<>0) 
					or (ISNULL([tripdidorgsplit],0)<>0 and (select max(cast(r7.canceled as int)) from tblRide r7 where r7.TripID = ISNULL(t.[TripdIdOrgSplit],0))<>0)then 'S'
				WHEN (ISNULL([TripIdNewSplit],0)<>0 and (select t8.tripcanceled from tblTrip t8 where t8.TripID = ISNULL(t.[TripIdNewSplit],0))<>0) 
					or (ISNULL([TripIdNewSplit],0)<>0 and (select max(cast(r8.canceled as int)) from tblRide r8 where r8.TripID = ISNULL(t.[TripIdNewSplit],0))<>0)then 'S'
				WHEN (isnull([TripdIdOrgSplit],'')<>'' And 
					ISNULL(t.datereceived,'')='' or
					isnull((Select t3.datereceived from tblTrip t3 where t3.tripcanceled = 0 and t3.TripID = isnull(t.[TripdIdOrgSplit],'')),'')='')
					Or (isnull([TripIdNewSplit],'') <> '' And 
					ISNULL(t.datereceived,'')='' or
					isnull((Select t4.datereceived from tblTrip t4 where t4.tripcanceled=0 and t4.TripID = isnull(t.[TripIdNewSplit],'')),'')='')	
					then 'SP' --***Pending Paperwork on one of the trips - indicate a split and missing info
				ELSE '' 
			end as PendingPaperwork,
 
		--CASE	
		--		WHEN(isnull([TripdIdOrgSplit],'')<>'' And 
		--			ISNULL(t.datereceived,'')<>'' and
		--			isnull((Select t1.datereceived from tblTrip t1 where t1.TripID = isnull(t.[TripdIdOrgSplit],'')),'')<>'')
		--			Or (isnull([TripIdNewSplit],'')<>'' And 
		--			ISNULL(t.datereceived,'')<>'' and
		--			isnull((Select t2.datereceived from tblTrip t2 where t2.TripID = isnull(t.[TripIdNewSplit],'')),'')<>'')
		--			then 'S' --*** Both Trips paperwork Received - just indicate that it is a Split
		--		WHEN (isnull([TripdIdOrgSplit],'')<>'' And 
		--			ISNULL(t.datereceived,'')='' or
		--			isnull((Select t3.datereceived from tblTrip t3 where t3.TripID = isnull(t.[TripdIdOrgSplit],'')),'')='')
		--			Or (isnull([TripIdNewSplit],'') <> '' And 
		--			ISNULL(t.datereceived,'')='' or
		--			isnull((Select t4.datereceived from tblTrip t4 where t4.TripID = isnull(t.[TripIdNewSplit],'')),'')='')	
		--		then 'SP' --***Pending Paperwork on one of the trips - indicate a split and missing info

		--		ELSE '' 
		--	end as PendingPaperwork,
		(Select t1.datereceived from tblTrip t1 where t1.TripID = isnull(t.[TripdIdOrgSplit],0)) as OrigSplitDateRec,
		(Select t2.datereceived from tblTrip t2 where t2.TripID = isnull(t.[TripIdNewSplit],0)) as NewsplitDateRec,
		max(t.TripdIdOrgSplit) as TripdIdOrgSplit, 
		max(t.tripidnewsplit) as tripidnewsplit,
		--t.DateReceived,
		isnull(t.maxreimburse,0)as MaxReimburse,

		Case
			when @TripFeesTrue <> 0 then 11
			else 0 end As Fee,


		case 
			when isnull(t.TripdIdOrgSplit,'')<>'' then t.TripdIdOrgSplit
			else  t.TripID
		end as CombinedTripID, 
		t.tripid,
		 
		Max(lc.County) AS FirstOfCounty, 
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

		cast(sum(isnull([LoadedMiles],0)) * @CurrentRate as money) 	as LoadedMilesBill,

		--------------------------------------------------------------------------------------------------------------------------------------
		--sum(case
		--	when @MaxDeadHeadTrue<>0 and isnull(t.MaxReimburse,0)=0 then 0
		--	when @UnloadFedTrue<>0 then ISNULL(r.UnloadedMiles,0)* @ConusRate 
		--	when @UnloadedMilesTrue = 0 then 0 
		--	--else cast(round( case when isnull(r.UnloadedMiles,0)* @CurrentRate like '%.__5' then isnull(r.UnloadedMiles,0)* @CurrentRate +.005
		--	else isnull(r.UnloadedMiles,0)* @CurrentRate
		--end) AS UnloadedTripAmount, 
		
		
		---------------------------------------------------------------------------------------------------------------------------------

		Case when  @AllowMealsTrue <> 0 then
			cast(round(isnull(t.[TripDriverMeals],0)+isnull(t.[TripDriverMisc],0),2) AS money)else 0 end AS MealsMisc,
		case when t.MARide = 1 then 'Y' else '' end as 'MA Ride',
		case when t.Waver  = 1 then 'Y' else '' end as 'Waiver',
		case when t.ChildFamNoWaver = 1 then 'Y' else '' end as 'Child/Fam No Waiver',
		case when t.AdultServiceNoWaiver = 1 then 'Y' else '' end as 'Adult Service No Waiver',
		case when t.PublicHealthNoWaver = 1 then 'Y' else '' end as 'Public Health No Waiver',
		case when t.ACClientMedical = 1 then 'Y' else '' end as 'AC Client Medical',
		case when t.OnGoing = 1 then 'Y' else '' end as 'On Going',
		case when t.NewForRides = 1 then 'Y' else '' end as 'New For Rides',
		case when t.RoundTrip = 1 then 'Y' else '' end as 'Round Trip',
		case when t.OneWay = 1 then 'Y' else '' end as 'One Way',
		t.Worker as 'Worker',
		isnull(r.RepID,'') as RepID,
		c.ClDOB,
		EzclaimClaimID

		FROM tblRide r INNER JOIN tblTrip t ON r.TripID = t.TripID
		INNER JOIN tblClient c ON r.ClientID = c.ClientID
		INNER JOIN tblInsurance i ON r.InsuranceID = i.InsuranceID
		INNER JOIN ltblCounty lc ON t.BillingCounty = lc.CountyID
		WHERE (
		(r.NoShow =(Case when @NoNoShowsTrue = 1 then 0 else NoShow end) )and
		r.Canceled=0 
		AND (t.MIPOnly=0 Or t.MIPOnly Is Null) 
		and t.TripTypeId<>6
		) 
		GROUP BY 
		[clln] + ', ' + [clfn], 
		t.MaxReimburse,
		case when isnull(t.TripdIdOrgSplit,'')<>'' then t.TripdIdOrgSplit else t.TripID end, 
		t.TripID,
		Case when  @AllowMealsTrue <> 0 then
		cast(round(isnull(t.[TripDriverMeals],0)+isnull(t.[TripDriverMisc],0),2) AS money)else 0 end , --AS MealsMisc
		Case when  @AllowMealsTrue = 0 then 0 else t.TripDriverMeals end , --as DriverMeals
		Case when  @AllowMealsTrue = 0 then 0 else t.TripDriverMisc end , --as DriverMisc
		
		--t.TripDriverMeals, 
		--t.TripDriverMisc, 
		t.DateReceived, 
		r.InsuranceID,  
		isnull(r.AuthCode,''), 
		r.MemberID, 
		r.NoShow, 
		i.Insurance, 
		t.TripdIdOrgSplit, 
		t.tripidnewsplit,
		t.MARide,
		t.Waver,
		t.ChildFamNoWaver,
		t.AdultServiceNoWaiver,
		t.PublicHealthNoWaver,
		t.ACClientMedical,
		t.OnGoing,
		t.NewForRides,
		t.RoundTrip,
		t.OneWay,
		t.Worker,
		isnull(r.RepID,''),
		c.ClDOB,
		EzclaimClaimID
		HAVING 
		(Min(r.RideDate)Between @startdate And @enddate AND r.InsuranceID=@insuranceid and t.TripIdNewSplit is not null)
		OR (Min(r.RideDate) Between @startdate And @enddate and r.InsuranceID = @insuranceid and t.TripdIdOrgSplit is not null) 

		--order by [clln] + ', ' + [clfn], minofridedate, authcode

		) ST --split trips
	
	GROUP BY
	firstofcounty,
	minofridedate,
	client, 
	authcode,
	memberid,
	--maxreimburse,
	CombinedTripID,
	insuranceid,
	RepID,
	ClDOB,
	EzclaimClaimID
	

--	--order by Client, MinOfRideDate, AuthCode

	) Totals

Group by
[County],
[RideDate],
client, 
authcode,
memberid,
[Meals],
[Misc],
UnloadedMilesTrue,
AllowMealsTrue,
case when PendPaperwork <> 'SP' then [TripFee] else 0 end,
--[TripFee],
[TotalMileageExpense],
[MA Ride],
[Waiver],
[Child/Fam No Waiver],
[Adult Service No Waiver],
[Public Health No Waiver],
[AC Client Medical],
[On Going],
[New For Rides],
[Round Trip],
totals.[One Way],
[Worker],
UserName,
RepID,
ClDOB,
EzclaimClaimID


set ansi_warnings on
