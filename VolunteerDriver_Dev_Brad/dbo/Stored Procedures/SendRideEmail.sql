-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	This stored procedure takes a single parameter, a trip ID.  
--              It returns a single row, single column, resultset of HTML.
--              This proc is identical to Send RideEmail execept is returns a resultset instead
--              of sending an html email.
-- =============================================
CREATE PROCEDURE [dbo].[SendRideEmail](@trip_number int)
as
--Define varibles.
DECLARE @tableHTML  NVARCHAR(MAX) 
DECLARE @XMLQueryResults NVARCHAR(MAX) 
DECLARE @SENDTO NVARCHAR(MAX)
DECLARE @InitQuery table(
RideDate varchar(50),
SchedulePickupTime varchar(50),
ScheduleApptTime varchar(50),
RPickUpAddress varchar(50),
RPickupCity varchar(50),
RPickupZip varchar(50),
RDropoffAddress varchar(50),
RDropoffCity varchar(50),
RDropoffZip varchar(50),
RideNotes varchar(MAX),
ClFN varchar(50),
ClLN varchar(50),
ClPhone varchar(50),
DrFirstName varchar(50),
DrLastName varchar(50),
Email varchar(50),
TripID varchar(50),
seqno varchar(50),
TripType varchar (50)
)
DECLARE @SPtableHTML table(
tablehtml NVARCHAR(MAX)
)

--Query needed data into a table variable named InitQuery.
insert into @InitQuery
SELECT 
tblride.RideDate
,tblRide.SchedulePickupTime
,tblRide.ScheduleApptTime
,tblRide.RPickUpAddress
, tblRide.RPickupCity
, tblRide.RPickupZip
, tblRide.RDropoffAddress
, tblRide.RDropoffCity
, tblRide.RDropoffZip
, tblRide.RideNotes
, tblClient.ClFN
, tblClient.ClLN
, tblClient.ClPhone
, tblDriver.DrFirstName
, tblDriver.DrLastName
, tblDriver.Email
, tblTrip.TripID
, tblride.SeqNo
,ltblTripType.TripType
FROM (tblDriver INNER JOIN (tblClient INNER JOIN tblRide ON tblClient.ClientID = tblRide.ClientID) ON tblDriver.DriverID = tblRide.DriverID) 
INNER JOIN tblTrip ON tblRide.TripID = tblTrip.TripID inner join ltblTripType on ltblTripType.TripTypeID = tblTrip.TripTypeId
WHERE (((tblride.SeqNo) = 1 and (tblTrip.TripID)=@trip_number and (tblRide.Canceled = 0 or tblride.Canceled = null)))
order by tblride.SeqNo 
/*
 
--Convert DateTime ridedate to 01/01/2015 format.
update @InitQuery set RideDate = cast(DATEPART(MONTH,RideDate) as varchar(4)) + '/' + cast(DATEPART(DAY,RideDate) as varchar(4)) + '/' + cast(DATEPART(YEAR,ridedate) as varchar(4))

--Convert Datetime to Standard Time.
update @InitQuery set SchedulePickupTime = CONVERT(VARCHAR(20) , cast(SchedulePickupTime as time) , 100)

--Convert Datetime to Standard Time.
update @InitQuery set ScheduleApptTime = CONVERT(VARCHAR(20) , cast(ScheduleApptTime as time), 100)



--Parse phone number with dashes.
--Remove Characters
update @InitQuery set ClPhone = REPLACE(Clphone,'-','') 
update @InitQuery set Clphone = REPLACE(Clphone,')','')
update @InitQuery set Clphone = REPLACE(Clphone,'(','')
update @InitQuery set Clphone = REPLACE(Clphone,'/','')
update @InitQuery set Clphone = REPLACE(Clphone,' ','')
--Add - to 7 digit numbers
update @InitQuery set Clphone = (substring(Clphone,1,3) + '-' + substring(Clphone,4,4)) where LEN(Clphone) = 7
--Add - to 10 digit numbers
update @InitQuery set Clphone = (substring(Clphone,1,3) + '-' + 
substring(Clphone,4,3) + '-' + SUBSTRING(Clphone,7,4)) where LEN(Clphone) = 10
--Replace invalid numbers with warning text
update @InitQuery set Clphone = 'Invalid phone number' where LEN(Clphone) <> 8 and LEN(Clphone) <> 12




--Save the start of table html to a varible.
SET @tableHTML =
    N'<style>td {font-weight: bold;}</style>' +
    N'<H1>Ride sent by ' + SUSER_SNAME() + '</H1>' +
    N'<H2>Please contact your client upon receipt of this email to confirm ride and again the night before the scheduled ride.</H2>' +
    N'<table border="1" bgcolor="#ffffff" cellspacing="0">' +
					N'<tr><th bgcolor="#c0c0c0">Trip Date</th>
					<th bgcolor="#c0c0c0">Appointment time</th>
					<th bgcolor="#c0c0c0">Client Name</th>
					<th bgcolor="#c0c0c0">Pickup Address</th>
					<th bgcolor="#c0c0c0">Pickup City</th>
					<th bgcolor="#c0c0c0">Destination Address</th>
					<th bgcolor="#c0c0c0">Destination City</th>
					<th bgcolor="#c0c0c0">Client Phone #</th>
					<th bgcolor="#c0c0c0">Pickup Time</th>
					<th bgcolor="#c0c0c0">Notes</th>
					<th bgcolor="#c0c0c0">Assigned Driver</th>
					<th bgcolor="#c0c0c0">Trip Type</th></tr>'				
----Query multiple ride rows into a single row, single column and render as inner table html code.
--Save it to a varible.				
SET @XMLQueryResults = 					
    CAST ( ( SELECT td = coalesce(RideDate,'No Ride Date'),    '',
				 'color:red' as 'td/@style', td = coalesce(ScheduleApptTime, 'No Appointment time'), '',
                    td = coalesce((ClFN + ' ' + ClLN), 'No Client name'), '',
                    td = coalesce(RPickUpAddress,'No pickup address'), '',
                    td = coalesce(RPickupCity,'No pickup city'), '',
                    td = coalesce(RDropoffAddress,'No drop off address'), '',
                    td = coalesce(RDropoffCity,'No drop off City'), '',
                    td = coalesce(ClPhone,'No Client Phone Number'), '',
					'color:red' as 'td/@style', td = coalesce(SchedulePickupTime, 'No Scheduled Pickup Time'), '',
                    td = coalesce(RideNotes, 'No Ride Notes'), '',
                    td = coalesce(coalesce(DrFirstName,'') + ' ' + coalesce(DrLastName,''), 'No Ride Notes'), '',
                    td = triptype
              FROM @InitQuery 
              FOR XML PATH('tr'), TYPE 
    ) AS NVARCHAR(MAX) ) ;
    
--Combine Varibles into a single html string.
Set @tableHTML = @tableHTML + @XMLQueryResults + N'</table>' ;
*/
insert into @SPtableHTML
exec SendRideEmailchecktest @trip_number
Select @tableHTML = tableHTML from @SPtableHTML	

--Save desired emails to sendto, to a varible.
SET @SENDTO = 'arrowhead.rides@aeoa.org;' + (select top 1 email from @InitQuery) + ';'

--Execute builtin stored proc to send html code as an email.
--Arrowhead.rides@aeoa.org email is setup via Sql
--server management studio to allow emails to be sent from 
--sql server.
EXEC msdb.dbo.sp_send_dbmail
 @profile_name = 'Arrowhead.Rides@aeoa.org',
 @recipients = @SENDTO,
 @subject = 'Ride Alert',
 @execute_query_database = 'Volunteer_DriversSQL',
 @exclude_query_output = 1,
 @body_format = 'HTML',
 @body = @tableHTML 
 
 --Return resultset to program to signal success.
select 'Success' as 'Status'
RETURN

--exec sendrideemail 12010