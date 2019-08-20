
/******************************************************************************/
/* Used to populate an excel sheet to get distance from google                */
/* Subject to change based on what addresses have the highest impact on       */
/* driver assignment                                                          */
/* Only 100 due to limitations of 100 transactions per 10 seconds from google */
/******************************************************************************/
create procedure ClientDriverDistanceExcel
as
select top 100 cd.ClientDriverID,
cast(ca.ClAddress as varchar(255)) + ' ' + ca.clCity + ' ' + ca.clState + ' ' + cast(ca.clZip as varchar(100)) as ClientAddress,
cast(da.DrAddress as varchar(255)) + ' ' + da.DrCity + ' ' + da.DrState + ' ' + cast(da.DrZip as varchar(100)) as DriverAddress
from tblClientDriverDistance cd
inner join tblClientAddress ca
on cd.ClientAddressID = ca.ClientAddressID
and ca.Active = 1
inner join tblDriverAddress da
on cd.DriverAddressID = da.DriverAddressID
and da.Active = 1
where cd.Distance is null
and cd.Active = 1
and cd.lastridedate is not null