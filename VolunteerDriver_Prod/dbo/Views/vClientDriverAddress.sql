



CREATE view [dbo].[vClientDriverAddress]
as
select TripID,MIN(RideDate) as TripDate,Client,ClientAddress,Driver,DriverAddress,MaxReimburse,Conditions
from(
select r.TripID,RideDate,([clln] + ', ' + [clfn]) AS Client,MaxReimburse,
cast(ca.ClAddress as varchar(255)) + ' ' + ca.clCity + ' ' + ca.clState + ' ' + cast(ca.clZip as varchar(100)) as ClientAddress,
(DrLastName + ', ' + DrFirstName) as Driver,
cast(da.DrAddress as varchar(255)) + ' ' + da.DrCity + ' ' + da.DrState + ' ' + cast(da.DrZip as varchar(100)) as DriverAddress,
cast(case when t.TripTypeId = 1 then 'One Way'
     when t.unloadedreasonid = 1 then 'Long Appointment'
     when t.unloadedreasonid = 7 then 'Piggy Back'
     when t.unloadedreasonid = 8 then 'Alternate Dropoff'
     when t.unloadedreasonid = 9 then 'Ride Together'
     when isnull(t.MaxReimburse,0) > 500 then 'Bad Deadhead Miles?'
     when ([clln] + ', ' + [clfn]) = 'Messinger, Ashley' then 'Make sure 0 deadhead, probably piggyback ride'
else '' end as varchar(255)) as Conditions
from tblRide r (nolock)
inner join tbltrip t on r.tripid = t.tripid
inner join tblClient c on c.ClientID = r.ClientID
inner join tblClientAddress ca on c.ClientID = ca.ClientID and ca.Active = 1
left join tblDriver d on r.DriverID = d.DriverID
left join tblDriverAddress da on r.DriverID = da.DriverID and da.Active = 1
where r.NoShow = 0 and r.Canceled = 0 and
((r.InsuranceID)=2))tripaddress
group by TripID,Client,ClientAddress,Driver,DriverAddress,MaxReimburse,Conditions




