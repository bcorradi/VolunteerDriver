CREATE procedure [dbo].[NoShow] 
as
set nocount on
declare @checkdate datetime,@startdate datetime,@enddate datetime
set @checkdate = getdate()
select @startdate  = cast(cast(YEAR(@checkdate)as varchar(4)) + '-' + cast(MONTH(@checkdate) as varchar(2)) + '-' + cast(DAY(@checkdate) as varchar(2)) as datetime)
Set @enddate = @startdate + cast('23:59:59.997' as time)
--if (datename(dw,GETDATE()) = 'Monday') set @checkdate = cast(getdate()-2 as date) 

select AuthCode as 'Authorization #',r.MemberID as 'Member ID#',clfn as 'Member First Name',
clln as 'Member Last Name',
case when NoShow = 1 and Seqno = 1 then 'Full'
     when NoShow = 1 and Seqno > 1 then 'Partial' 
     when NoShow = 1 and Seqno is null then 'Check Legs' end as 'Full or Partial No Show',
case when Seqno > 1 then cast(SeqNo as varchar(2)) else '' end 'If partial, which legs were cancelled',r.tripid
--NoShow,SeqNo,Canceled
from tblride r
inner join tblClient c
on r.ClientID = c.ClientID
inner join (
SELECT RecordID as Tripid,DateTime as Auditdate,
FieldName ,NewValue ,ChildRecordID as RideId
FROM dbo.tblAuditTrail 
WHERE  
FormName = 'frmRideEntry'
and NewValue = '-1'
and FieldName = '[NoShow]'
and DateTime between @startdate and @enddate
)noshowt
on r.RideID = noshowt.RideId
and r.TripID = noshowt.Tripid
where InsuranceID = 2
and NoShow = 1
and r.Canceled = 0
--need to get old rides that where marked as noshow today
--we dont always get informed that a ride was a noshow until days after
and RideDate >= '2016/04/01' and RideDate < GETDATE() + 730
--and RideDate between @startdate and @enddate
order by 1 desc

/*
SELECT    R.RideID, R.TripID, c.ClientID,
(clln + ', ' + ClFN) AS Client, CI.MemberID,
cast(R.RideDate as DATE) as RideDate, 
isnull(substring(convert(varchar,cast(R.SchedulePickupTime as Time),108),1,5),'') as PickupTime, 
case when R.NoShow = 1 then 'Y' else 'N' end as NoShow, 
R.FacilityName, 
cast(R.RPickUpAddress as varchar(255)) + ' ' + R.RPickupCity + ' ' + R.rPickupState + ' ' + cast(R.RPickupZip as varchar(100)) as PickUpAddress,              
cast( R.RDropoffAddress as varchar(255)) + ' ' + R.RDropoffCity + ' ' + R.rDropOffState + ' ' + cast(R.RDropoffZip as varchar(100)) as DropOffAddress,
isnull(R.UnloadedMiles,0)*2 as DeadHead
--,cast(ca.ClAddress as varchar(255)) + ' ' + ca.clCity + ' ' + ca.clState + ' ' + cast(ca.clZip as varchar(100)) as ClientAddress,
--cast(da.DrAddress as varchar(255)) + ' ' + da.DrCity + ' ' + da.DrState + ' ' + cast(da.DrZip as varchar(100)) as DriverAddress

FROM         dbo.tblRide R (NOLOCK) 
--inner join tblClientAddress ca on R.ClientID = ca.ClientID and ca.Active = 1
LEFT OUTER JOIN dbo.ltblCounty cy (NOLOCK) ON R.County = cy.CountyID 
LEFT OUTER JOIN dbo.tblDriver D (NOLOCK) ON R.DriverID = D.DriverID 
--left join tblDriverAddress da on r.DriverID = da.DriverID and da.Active = 1 
INNER JOIN dbo.tblTrip T (NOLOCK) ON R.TripID = T.TripID 
inner join tblClientInsurance CI on R.ClientID = CI.ClientID and CI.InsuranceID = 2 and CI.Active = 1
inner join tblClient c on r.ClientID = c.ClientID
inner join (
SELECT RecordID as Tripid,DateTime as Auditdate,
FieldName ,NewValue ,ChildRecordID as RideId
FROM dbo.tblAuditTrail 
WHERE  
FormName = 'frmRideEntry'
and NewValue = '-1'
and FieldName = '[NoShow]'
and DateTime >= @checkdate
)noshowt
on r.RideID = noshowt.RideId
and r.TripID = noshowt.Tripid
where 
RideDate >= '2016/04/01' and RideDate < '2018/04/01' --dont show the test rides --change this 
and NoShow = 1
and Canceled = 0
order by c.clientid,ridedate,rideid
*/
