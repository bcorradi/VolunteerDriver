
--exec EzClaimBillingInsert 2
CREATE procedure [dbo].[EzClaimBillingInsert] (@InsuranceID int)
as

set nocount on
/******************************************************************************************

Inserts records into a history table and then inserts a record into the 
Billing Item Table in ezclaim.

Update inserted records with BillingItemID into EzBillingTripLink

*******************************************************************************************/
declare @count int, @BillingItemid int, @recordcounter int

--declare @insuranceid int
--set @insuranceid = 2
declare @username varchar(50)

select @username = SUSER_NAME()

INSERT INTO [Volunteer_DriversSQL].[dbo].[tblEzClaimBillingHistory]
           ([ClientID]
           ,[TripID]
           ,[FromDate]
           ,[ToDate]
           ,[SeqNo]
           ,[EW]
           ,[OverNight]
           ,[Canceled]
           ,[NoShow]
           ,[SF]
           ,[InEzClaim]
           ,[Pickup]
           ,[DropOff]
           ,[Start Time]
           ,[End Time]
           ,[Place]
           ,[Diagnosis]
           ,[Charges]
           ,[Fdays]
           ,[LineItemGuid]
           ,[CPT]
           ,[Modifier]
           ,[AllowedAmount]
           ,[PayorAmountPaid]
           ,[PurSvcCharge]
           ,[CurrencyCol1]
           ,[CurrencyCol2]
           ,[CurrencyCol3]
           ,[CurrencyCol4]
           ,[CurrencyCol5]
           ,[CurrencyCol6]
           ,[CurrencyCol7]
           ,[CurrencyCol8]
           ,[CoPayAmountDue]
           ,[ApprovedAmt]
           ,[PUAddressID]
           ,[DOAddressID]
           ,InsuranceID
           ,[ExportedDatetime]
           ,[ExportedUserName])
           
SELECT b.ClientID
      ,b.TripID
      ,[FromDate]
      ,[ToDate]
      ,b.SeqNo
      ,[EW]
      ,[OverNight]
      ,[Canceled]
      ,[NoShow]
      ,[SF]
      ,[InEzClaim]
      ,[Pickup]
      ,[DropOff]
      ,[Start Time]
      ,[End Time]
      ,[Place]
      ,[Diagnosis]
      ,[Charges]
      ,[Fdays]
      ,[LineItemGuid]
      ,[CPT]
      ,[Modifier]
      ,[AllowedAmount]
      ,[PayorAmountPaid]
      ,[PurSvcCharge]
      ,[CurrencyCol1]
      ,[CurrencyCol2]
      ,[CurrencyCol3]
      ,[CurrencyCol4]
      ,[CurrencyCol5]
      ,[CurrencyCol6]
      ,[CurrencyCol7]
      ,[CurrencyCol8]
      ,[CoPayAmountDue]
      ,[ApprovedAmt]
      ,[PUAddressID]
      ,[DOAddressID]
      ,b.InsuranceID
      ,GETDATE()
      ,SUSER_SNAME()
 FROM [Volunteer_DriversSQL].[dbo].[tblEzClaimBilling2] b
 inner join tblEzClaim e
 on b.TripID = e.TripID
 where e.SelectRecord = 1
 and b.Insuranceid = @insuranceid
 and e.UserName = @username
 
create table #links
(EzBillingID int,TripID int,recordnum int)

--will need a third identifier?
insert into #links
(EzBillingID,TripID,recordnum)
select EzBillingID,b.TripID, RANK() over (order by EzBillingID) as Recordnum
from tblEzClaimBilling2 b
inner join tblEzClaim e
on b.TripID = e.TripID
where e.SelectRecord = 1
and b.InsuranceID = @insuranceid
and e.UserName = @username

--select * from #links

select @count = COUNT(1) 
from #links

set @recordcounter = 1

while @recordcounter <= @count
Begin

insert into ezclaim...[Billing Item Table]
(ClaimID,PatientID,FromDate,ToDate,Place,Diagnosis,Charges,--Printed,
--AmountPaid,
Fdays,AllowedAmount,PayorAmountPaid,PurSvcCharge,
[CurrencyCol1],[CurrencyCol2],[CurrencyCol3],[CurrencyCol4],[CurrencyCol5]
,[CurrencyCol6],[CurrencyCol7],[CurrencyCol8],LineItemGUID,CPT,--PrintLineItem,
--AttachCmn,ResponsibleParty,
[CoPayAmountDue],[ApprovedAmt],Modifier,LineItemDesc
)


SELECT L.ClaimID
      ,P.PatientID
      ,[FromDate]
      ,[ToDate]
      ,[Place]      
      ,[Diagnosis]
      ,[Charges]
      --,0 as Printed
      --,0 as AmountPaid
      ,[Fdays]
      ,[AllowedAmount]
      ,[PayorAmountPaid]
      ,[PurSvcCharge]   
      ,[CurrencyCol1]
      ,[CurrencyCol2]
      ,[CurrencyCol3]
      ,[CurrencyCol4]
      ,[CurrencyCol5]
      ,[CurrencyCol6]
      ,[CurrencyCol7]
      ,[CurrencyCol8]
      ,[LineItemGuid]
      ,[CPT]
      --,-1 as PrintLineItem
      --,0 as AttachCmn
      --,1 as ResponsibleParty
      ,[CoPayAmountDue]     
      ,[ApprovedAmt]      
      ,[Modifier]     
      --,(case when @insuranceid = 5 then Upper(AuthCode) else UPPER(AuthCode) end)  as LineItemDesc --UCare Only
      ,(case when @insuranceid = 5 then Upper(AuthCode) else Null end)  as LineItemDesc --UCare Only

FROM [Volunteer_DriversSQL].[dbo].[tblEzClaimBilling2] B
inner join tblEzClaim e
on b.TripID = e.TripID
inner join EzClaimTripLink L
on B.TripID = L.TripID --need more link conditions because tripid is in multiple records
inner join EzPatientClientLink2 P
on L.EzLinkID = P.EZLinkid
where e.SelectRecord = 1
and e.UserName = @username
and B.Insuranceid = @insuranceid and
EzBillingID = (Select EzBillingID from #links where recordnum = @recordcounter)
  
--select @BillingItemid = MAX(BillingItemID) from eztest...[Billing Item Table]



--update EzBillingTripLink
--set BillingItemid = @BillingItemid
--where EzBillingTripLink.Tripid =
--(Select TripID from #links where recordnum = @recordcounter) --need more then tripid

set @recordcounter = @recordcounter + 1
End


drop table #links
