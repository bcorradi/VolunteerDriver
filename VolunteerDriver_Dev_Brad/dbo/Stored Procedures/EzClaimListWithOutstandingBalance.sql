

CREATE procedure [dbo].[EzClaimListWithOutstandingBalance] (@startdate datetime, @enddate datetime)
as

set nocount on
declare @payerid int
set @payerid = 2
--declare @startdate datetime, @enddate datetime
--set @startdate = '2018-06-01'
--set @enddate = '2018-06-30'

declare @username varchar(50)
select @username = SUSER_NAME()

delete from tblEZOutstandingBalance
where username = @username

insert into tblEZOutstandingBalance
(
patfirstname
,patlastname
,ClaFirstDateTRIG
,Units
,Charges
,ClaTotalAmtAppliedCC
,ClaLastExportedDate
,ClaTotalBalanceCC
,ClaStatus
,username
)

Select
patfirstname
,patlastname
,c.ClaFirstDateTRIG
,sum(b.SrvUnits) as Units
,sum(b.SrvCharges) as Charges
,ClaTotalAmtAppliedCC
,ClaLastExportedDate
,ClaTotalBalanceCC
,ClaStatus
--,c.ClaID
,@username as username

from ezdata_transitsql.dbo.[Claim] c
inner Join ezdata_transitsql.dbo.vPatientInsurance v
on c.ClaPatFID = v.patID
left join ezdata_transitsql.dbo.[vService_Line] b
on c.claid = b.SrvClaFID

where ((c.ClaFirstDateTRIG between @startdate and @enddate) and v.PayID = @payerid)

group by Patlastname, patfirstname, c.ClaFirstDateTRIG, ClaTotalBalanceCC, ClaStatus, ClaTotalAmtAppliedCC, ClaLastExportedDate, c.claid
order by Patlastname, patfirstname,c.ClaFirstDateTRIG asc