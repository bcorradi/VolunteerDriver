

--exec EzClaimClaimInsert 2
CREATE procedure [dbo].[EzClaimClaimInsert] (@insuranceid int)
as

set nocount on
/******************************************************************************************

Inserts records into a history table and then inserts a record into the Claim Form Table in ezclaim.

Update inserted records with claimid into billing

*******************************************************************************************/
declare @count int, @claimid int, @recordcounter int

--declare @insuranceid int
--set @insuranceid = 2
declare @username varchar(50)

select @username = SUSER_NAME()

INSERT INTO [Volunteer_DriversSQL].[dbo].[tblEzClaimHistory]
           ([TripID]
           ,[Insurance]
           ,[ClientID]
           ,[Client]
           ,[RideDate]
           ,[TripType]
           ,[LegCountNotCanceled]
           ,[LegNoShowCount]
           ,[Diagnosis1]
           ,[RenderingPHYFID]
           ,[FacilityAddressID]
           ,[FacilityName]
           ,[AuthCode]
           ,[RepID]
           ,[MemberID]
           ,[ReimburseRate]
           ,[UnloadedReimburseRate]
           ,[SumOfLoadedMiles]
           ,[SumOfUnloadedMiles]
           ,[DeadHeadAuth]
           ,[PaidUnloadedMiles]
           ,[TotalTripMiles]
           ,[PaidMiles]
           ,[UnpaidMiles]
           ,[MealsMisc]
           ,[BillingAmount]
           ,[Insuranceid]
           ,[EzClaimPhysicianID]
           ,[PatientID]
           ,[SeqNo]
           ,[ExportedDatetime]
           ,[ExportedUserName])
           
 select
      [TripID]
      ,[Insurance]
      ,[ClientID]
      ,[Client]
      ,[RideDate]
      ,[TripType]
      ,[LegCountNotCanceled]
      ,[LegNoShowCount]
      ,[Diagnosis1]
      ,[RenderingPHYFID]
      ,[FacilityAddressID]
      ,[FacilityName]
      ,[AuthCode]
      ,[RepID]
      ,[MemberID]
      ,[ReimburseRate]
      ,[UnloadedReimburseRate]
      ,[SumOfLoadedMiles]
      ,[SumOfUnloadedMiles]
      ,[DeadHeadAuth]
      ,[PaidUnloadedMiles]
      ,[TotalTripMiles]
      ,[PaidMiles]
      ,[UnpaidMiles]
      ,[MealsMisc]
      ,[BillingAmount]
      ,[Insuranceid]
      ,[EzClaimPhysicianID]
      ,[PatientID]
      ,[SeqNo]
      ,GETDATE()
      ,SUSER_SNAME() 
 FROM [Volunteer_DriversSQL].[dbo].[tblEzClaim]
 where SelectRecord = 1
 and Insuranceid = @insuranceid
 and UserName = @username
 
 create table #links
(tblEZClaim_ID int,TripID int,recordnum int)

insert into #links
(tblEZClaim_ID,TripID,recordnum)
select tblEZClaim_ID,TripID, RANK() over (order by tblEZClaim_ID) as Recordnum
from tblEzClaim
where SelectRecord = 1
and InsuranceID = @insuranceid
and UserName = @username

--select * from #links

select @count = COUNT(1) 
from #links

set @recordcounter = 1

while @recordcounter <= @count
Begin
 
insert into ezclaim...[Claim Form Table] 
(
PatientID,
FacilityClaimFID,
ContractID,
DTMFirstClaimDate,
TotalCharge,
BalanceDue,
PriorAuthorizationNO,
Diagnosis1,
RenderingPHYFID,
[multiplyUnits],
[totallastpageonly],
[amountpaid],
SuppressAmtPaid,
ChargesLocked, 
bShowInsPaymentsOnly,
bReadyForExport,
ClaimStatus,
ClaICDIndicator,
ClaimFormDateTimeCreated,
ClaimFormDateTimeModified,
Paid,
Printed,
barchived,
bReadyForExport,
ClaimReserved19
 )

--need the claim pk returned
Select 
PatientID,
EZClaimPhysicianID as FacilityClaimFID,
case when @insuranceid = 2 then 1
     when @insuranceid = 5 then 9
     when @insuranceid = 29 then 11
     when @insuranceid = 4 then 10
     else 0 end as ContractID,
RideDate as DTMFirstClaimDate,
BillingAmount as TotalCharge, BillingAmount as BalanceDue, 
Upper(AuthCode) as PriorAuthorizationNO,
case when @insuranceid = 2 then 'R68.89'
     when @insuranceid = 5 then 'Z00.8'
     when @insuranceid = 29 then 'R68.89'
     when @insuranceid = 4 then 'R68.89'
     else 'WrongInsurance' end as Diagnosis1,
case when @insuranceid = 2 then 0--17
     when @insuranceid = 5 then 182
     when @insuranceid = 29 then 3836
     when @insuranceid = 4 then 17--619
     else 0 end as RenderingPHYFID, --contingent on insurance
[multiplyUnits] = 0,
[totallastpageonly] = 0,
[amountpaid] = 0,
SuppressAmtPaid = 0,
ChargesLocked = 0, --check box Permanent on claim window --calander control disappears and greyed out fields
bShowInsPaymentsOnly = 0,
bReadyForExport = 0,
ClaimStatus = 'Unbilled',
ClaICDIndicator = 0, 
getdate() as ClaimFormDateTimeCreated,
GETDATE() as ClaimFormDateTimeModified,
'Not Paid' as Paid,
'Not Printed' as Printed,
0 as barchived,
1 as bReadyForExport,
(case when @insuranceid = 5 then Upper(AuthCode) else null end) as ClaimReserved19 --UCare Only
from tblezclaim
where SelectRecord = 1
and Insuranceid = @insuranceid and
UserName = @username and
tblEZClaim_ID = (Select tblEZClaim_ID from #links where recordnum = @recordcounter)
  
select @Claimid = MAX(Claimid) from ezclaim...[Claim Form Table]


--need to find location to hold claimid
update EzClaimTripLink
set claimid = @Claimid
where EzClaimTripLink.Tripid =
(Select TripID from #links where recordnum = @recordcounter)

update tblezclaimhistory
set seqno = @claimid
where tblezclaimhistory.Tripid = 
(Select TripID from #links where recordnum = @recordcounter)

update tblTrip
set EZClaimClaimID = @claimid
where tblTrip.Tripid = 
(Select TripID from #links where recordnum = @recordcounter)


set @recordcounter = @recordcounter + 1
End


drop table #links
