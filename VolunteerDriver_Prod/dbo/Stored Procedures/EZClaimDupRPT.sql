
--execute EZClaimBilling '2016-06-01','2016-06-30',2

CREATE procedure [dbo].[EZClaimDupRPT] (@startdate datetime, @enddate datetime, @insuranceid int)
as

set nocount on


--need to link claim id

set @EndDate = @EndDate + cast('23:59:59.997' as time)

declare @username varchar(50)
select @username = SUSER_NAME()

delete from tblEzDup
where username = @username

--Create Table #EZDup (
--CountOfClaims int, 
--PatientID int,
--DtmFirstClaimDate datetime,
--ContractID int
--)

insert into tblEZDup (
CountOfClaims, 
--PatientID,
vc.clientid,
DtmFirstClaimDate,
ContractID,
username,
PatientFirstName,
PatientLastName
)

SELECT Count(Distinct(c.ClaimID)) AS CountOfClaims, vc.clientid, c.dtmFirstClaimDate, c.ContractID, @username, p.PatientFirstName, p.PatientLastName
FROM ezclaim...[Claim Form Table] c
left join ezclaim...[Patient Table] p
on c.patientid = p.patientID
left join EzPatientClientLink2 epl
on c.patientid = epl.Patientid
left join tblclient vc
on epl.Clientid = vc.ClientID
GROUP BY vc.clientid, c.dtmFirstClaimDate, c.ContractID, p.PatientFirstName, p.PatientLastName
HAVING (((Count(distinct(c.ClaimID)))>1) 
AND ((c.dtmFirstClaimDate) Between @startDate And @endDate) 
AND (c.ContractID = case 
when @insuranceID = '2' then '1'
when @insuranceID = '4' then '10'
when @insuranceID = '5' then '9'
when @insuranceID = '29' then '11'
Else '0'
END))

--select * from tblezdup
--delete from tblezdup
;

