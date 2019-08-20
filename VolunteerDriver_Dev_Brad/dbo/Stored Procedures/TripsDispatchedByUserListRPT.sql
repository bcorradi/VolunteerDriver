
CREATE procedure [dbo].[TripsDispatchedByUserListRPT]  (@startdate datetime, @enddate datetime)
as
set nocount on
------------------------------------------------------------------------------------------
--Declare 
--@startdate datetime
--,@enddate datetime
--,@username nvarchar(max)       
--set @startdate = '2018-6-01'
--set @enddate = '2018-6-02'
--set @username = 'william.smolensky'

Select distinct
recordID as Tripid
,username
,ridedate
,max(datetime) as DispatchedDate

from tblAuditTrail at
inner join tblride r
on at.RecordID = r.tripid

where at.NewValue is not null
and at.FormName = 'frmrideentry'
and at.FieldName = 'driverid'
and ridedate between @startdate and @enddate

Group By
recordid
,username
,ridedate

Order By
Username asc
,Ridedate asc