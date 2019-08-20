CREATE procedure [dbo].[BlueCrossVerifiedCoverage]
as
set nocount on

declare @checkdate datetime
set @checkdate = cast(getdate() as date)
if (datename(dw,GETDATE()) = 'Monday') set @checkdate = cast(getdate()-2 as date) 

select distinct --AuthCode as 'Authorization #',
c.ClientID, r.MemberID as 'Member ID#',cast(c.cldob as DATE) as DOB, clfn as 'Member First Name',
clln as 'Member Last Name','' as 'Verified Insurance Coverage (Y/N)' 
--r.tripid
from tblride r
inner join tblClient c
on r.ClientID = c.ClientID
where InsuranceID = 2
--and NoShow = 1
and r.Canceled = 0
and RideDate >= GETDATE() and RideDate < (GETDATE()+ 730)
order by 3 



