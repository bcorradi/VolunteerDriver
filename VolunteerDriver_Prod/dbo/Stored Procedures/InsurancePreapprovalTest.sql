--use Volunteer_DriversSQL
--execute InsurancePreapprovalTest
/*********************************************************/
CREATE procedure [dbo].[InsurancePreapprovalTest]
as 

set nocount on

declare @InsuranceID int,
        @startdate datetime,
        @enddate datetime
        
set @startdate = '2016-02-27'
set @enddate = '2016-02-27'

select @InsuranceID = InsuranceID
from tblInsurance
where Insurance = 'Blue Cross'
and Active = 1

--set @InsuranceID = 5

create table #insuranceids
(InsuranceID int)
insert into #insuranceids (InsuranceID)
select InsuranceID from tblInsurance
where Active = 1
and InsuranceID not in (22,14,13)


SELECT 
min(tblRide.RideDate) as RideDate, 
([clln] + ', ' + [clfn]) AS Client, 
tblRide.AuthCode as RideAuthorization, 
tblclientinsurance.MemberID,
cast(isnull(tblClientInsurance.ClientInsuranceNotes,'') as varchar(255)) as GroupID,
Sum(isnull(tblRide.LoadedMiles,0)) AS LoadedMiles, 
Sum(isnull(tblRide.UnloadedMiles,0)) AS UnloadedMiles--,
--'' as DeadHeadAuth--,
--0 as MilesApproved
--SUM(case when [totalmiles] is null then [loadedmiles]+[unloadedmiles]
--         else [TotalMiles] end) as TotalMiles,
--(isnull(tripdrivermeals,0))as Meals, (isnull(tripdrivermisc,0)) as Misc,
--SUM(case when tblRide.InsuranceID in (1,2,5,6) then ([LoadedMiles]+[UnloadedMiles])*[ReimburseRate]
--         else [LoadedMiles]*[ReimburseRate] end) as MilageExpense,
--SUM(case when tblRide.InsuranceID in (1,2,5,6) then ([LoadedMiles]+[UnloadedMiles])*[ReimburseRate]
--         else [LoadedMiles]*[ReimburseRate] end) as BillingAmount   --Blue Cross doesn't allow meals and misc    
FROM  tblRide INNER JOIN 
      tblClient ON tblClient.ClientID = tblRide.ClientID inner join
      tblTrip ON tblTrip.TripID = tblRide.TripID inner join
      tblInsurance on tblride.InsuranceID = tblInsurance.InsuranceID inner join
      #insuranceids on tblride.InsuranceID = #insuranceids.InsuranceID inner join
      
      tblClientInsurance on tblClient.ClientID = tblClientInsurance.ClientID and tblClientInsurance.Active = 1 and tblride.InsuranceID = tblClientInsurance.InsuranceID
      
where tblRide.NoShow = 0 and tblride.Canceled = 0 and
 (((tblRide.RideDate) Between @startdate And @enddate) AND 
((tblRide.InsuranceID)= @InsuranceID)) --and 
--isnull(tblRide.UnloadedMiles,0) > 0

GROUP BY 
[clln] + ', ' + [clfn], 
tblRide.AuthCode, 
(isnull(tripdrivermeals,0)), (isnull(tripdrivermisc,0)),
tblclientinsurance.MemberID,cast(isnull(tblClientInsurance.ClientInsuranceNotes,'') as varchar(255))

ORDER BY [clln] + ', ' + [clfn],1


drop table #insuranceids