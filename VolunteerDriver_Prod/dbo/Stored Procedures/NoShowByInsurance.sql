
CREATE procedure [dbo].[NoShowByInsurance] (@insuranceid int, @startdate datetime, @enddate datetime)
as
set nocount on
--declare @checkdate datetime--,@startdate datetime,@enddate datetime
--set @checkdate = getdate()
--select @startdate  = cast(cast(YEAR(@checkdate)as varchar(4)) + '-' + cast(MONTH(@checkdate) as varchar(2)) + '-' + cast(DAY(@checkdate) as varchar(2)) as datetime)
declare @username varchar(50)

select @username = SUSER_NAME()

delete from tblNoShow
where username = @username

Set @enddate = @enddate + cast('23:59:59.997' as time)
--if (datename(dw,GETDATE()) = 'Monday') set @checkdate = cast(getdate()-2 as date) 
insert into tblNoShow
(AuthNum,MemberID,CLFN,CLLN,FullOrPartial,LegsCanceled,TripID,UserName,ridedate)
select AuthCode as 'Authorization #',r.MemberID as 'Member ID#',clfn as 'Member First Name',
clln as 'Member Last Name',
case when NoShow = 1 and Seqno = 1 then 'Full'
     when NoShow = 1 and Seqno > 1 then 'Partial' 
     when NoShow = 1 and Seqno is null then 'Check Legs' end as 'Full or Partial No Show',
case when Seqno > 1 then cast(SeqNo as varchar(2)) else '' end 'If partial, which legs were cancelled',r.tripid,
@username as UserName,ridedate
--NoShow,SeqNo,Canceled
from tblride r
inner join tblClient c
on r.ClientID = c.ClientID
where InsuranceID = @insuranceid
and NoShow = 1
and r.Canceled = 0
and RideDate between @startdate and @enddate
order by 1 desc

