


--execute EZClaimBilling '2016-06-01','2016-06-30',2

CREATE procedure [dbo].[InsuranceBulkDayRideRPT] 
--(@startdate datetime, @enddate datetime, @insuranceid int)
as

set nocount on

declare 
		
        @MaxDeadHeadTrue int, @UnloadedMilesTrue int, @AllowMealsTrue int,
        @NoNoShowsTrue int, @insurance varchar(50),@TripFeesTrue int,@UnloadFedTrue int

declare @ConusRate float


,@startdate datetime, @enddate datetime, @insuranceid int        
set @startdate = '2019-1-01'
set @enddate = '2019-2-25'
set @insuranceid = 20
-------------------------------------------------------------------------------------------
--Gets the current federal mileage reimbursement rate for the report time period
set @ConusRate =(select Max(rateamount) 
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






Select
i.Insurance
,Year(r.[RideDate]) AS [Year]
,Month(r.[RideDate]) AS [Month]
,Day(r.[RideDate]) AS [Day]
,count(distinct t.tripid) as Trips
,sum(r.LoadedMiles) AS Loaded
,sum(r.unloadedmiles) as Unloaded
,sum(r.loadedmiles+r.unloadedmiles) as TotalMiles
,sum(t.tripdrivermisc) as Misc
,sum(t.TripDriverMeals) as Meals
,cast(round(sum((r.loadedmiles+r.unloadedmiles)*@conusrate),2) as money) as MileageExpense
,Cast(Round(Sum(t.tripdrivermisc+t.tripdrivermeals+((r.loadedmiles+r.unloadedmiles)*@conusrate)),2)as money) as TotalBilled
,Count(r.rideid) as legs
,count((case when r.noshow = 'true' then r.rideid end)) as NoShows
,sum((case when r.noshow = 'true' then (r.loadedmiles+r.unloadedmiles) end)) as NoShowMiles
,count((case when r.canceled = 'true' then r.rideid end)) as Cancels
,count(distinct c.clientid) as UniqueClients
,count(distinct (case when cast(t.entrydate as date) > cast(r.ridedate-2 as date) then t.tripid end)) as SameDayRides
,count(distinct (case when t.TripTypeId = 1 then t.tripid end)) as OneWays
,count(distinct (case when t.TripTypeId <> 1 then t.tripid end)) as TwoWays
--,count(distinct (case when 
FROM tblRide r
INNER JOIN tblClientInsurance ci ON r.ClientInsuranceID = ci.ClientInsuranceID
INNER JOIN tblInsurance i ON r.InsuranceID = i.InsuranceID
INNER JOIN tbltrip t on r.tripid = t.tripid
INNER JOIN tblclient c on r.clientid = c.clientid
--LEFT JOIN
--(
--select 

--) 
WHERE (((i.InsuranceID)=@insuranceID AND ((r.RideDate) Between @startdate And @enddate)))
GROUP BY i.Insurance, Year([RideDate]), Month([RideDate]), Day(r.[RideDate])
ORDER BY i.Insurance, Year([RideDate]), Month([RideDate]), Day(r.[RideDate])


