
--execute EZClaimBilling '2016-06-01','2016-06-30',2

CREATE procedure [dbo].[EZLegsRPT] (@startdate datetime, @enddate datetime, @insuranceid int)
as

set nocount on
--declare @startdate datetime, @enddate datetime, @insuranceid int
--set @startdate = '2018-4-01'
--set @enddate = '2018-4-30'
--set @insuranceid = 2



--need to link claim id

set @EndDate = @EndDate + cast('23:59:59.997' as time)

declare @username varchar(50)
select @username = SUSER_NAME()

delete from tblEzLegs
where username = @username

insert into tblEZLegs (
 CountBI , 
 b.PatientID, 
 b.FromDate, 
 p.PatientLastName, 
 p.PatientFirstName, 
 c.ContractID,
 username,
 c.claimid
)



SELECT Count(b.[BillingItemID]) AS CountBI, b.PatientID, b.FromDate, p.PatientLastName, p.PatientFirstName, c.ContractID, @username, c.claimid
FROM ezclaim...[Claim Form Table] c 
left JOIN ezclaim...[Billing Item Table] b 
ON b.ClaimID = c.ClaimID
Left JOIN ezclaim...[Patient Table] p 
ON b.PatientID = p.PatientID
GROUP BY b.PatientID, b.FromDate, p.PatientLastName, p.PatientFirstName, c.ContractID, c.claimid

HAVING (((Count(b.BillingItemID))>= case
when @insuranceid = '2' then '4'
When @insuranceID = '5' then '4'
else '3' 
end)
AND ((b.FromDate) Between @startDate And @endDate) 
AND (c.ContractID = case 
when @insuranceID = '2' then '1'
when @insuranceID = '4' then '10'
when @insuranceID = '5' then '9'
when @insuranceID = '29' then '11'
Else '0'
END))
;
