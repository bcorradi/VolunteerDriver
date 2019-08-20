create procedure ClientDriverDistance(@startdate datetime, @enddate datetime)
as
set nocount on

declare @InsuranceID int--,
        --@startdate datetime,
        --@enddate datetime
        
--set @startdate = '2016-03-18'
--set @enddate = '2016-03-18'

set @InsuranceID = 2

select TripID,MIN(RideDate) as TripDate,Client,ClientAddress,Driver,DriverAddress
from(
select TripID,RideDate,([clln] + ', ' + [clfn]) AS Client,
cast(ca.ClAddress as varchar(255)) + ' ' + ca.clCity + ' ' + ca.clState + ' ' + cast(ca.clZip as varchar(100)) as ClientAddress,
(DrLastName + ', ' + DrFirstName) as Driver,
cast(da.DrAddress as varchar(255)) + ' ' + da.DrCity + ' ' + da.DrState + ' ' + cast(da.DrZip as varchar(100)) as DriverAddress
from tblRide r (nolock)
inner join tblClient c on c.ClientID = r.ClientID
inner join tblClientAddress ca on c.ClientID = ca.ClientID and ca.Active = 1
left join tblDriver d on r.DriverID = d.DriverID
left join tblDriverAddress da on r.DriverID = da.DriverID and da.Active = 1
where r.NoShow = 0 and r.Canceled = 0 and
 (((r.RideDate) Between @startdate And @enddate) AND 
((r.InsuranceID)= @InsuranceID)))tripaddress
group by TripID,Client,ClientAddress,Driver,DriverAddress
order by tripid

--if driver not assigned need to get previous drivers
--if never had a driver need to get closest driver
