-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	This stored procedure takes a single parameter, a trip ID.  
--              It returns a single row, single column, resultset of HTML.
--              This proc is identical to Send RideEmail execept is returns a resultset instead
--              of sending an html email.
--              Example of use: exec sendrideemailcheck 12010
-- =============================================-- exec SendRideEmail
CREATE PROCEDURE [dbo].[SendRideEmailChecktest](@trip_number int)
as
--exec sendrideemailchecktest 12010
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
seqno int,
TripType varchar (50)
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
, tblRide.SeqNo
, ltblTripType.TripType
FROM (tblDriver INNER JOIN (tblClient INNER JOIN tblRide ON tblClient.ClientID = tblRide.ClientID) ON tblDriver.DriverID = tblRide.DriverID) 
INNER JOIN tblTrip ON tblRide.TripID = tblTrip.TripID inner join ltblTripType on ltblTripType.TripTypeID=tblTrip.TripTypeId
WHERE (((tblride.SeqNo) = 1 and(tblTrip.TripID)=@trip_number and (tblRide.Canceled = 0 or tblride.Canceled = null)))
order by tblride.SeqNo

 
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
/*
select a.tripid,b.tripid from (select tripid from tblride where RideNotes is null and tripid is not null and canceled = 0) a
inner join ( select tripid from tblride where RideNotes is not null and tripid is not null and canceled = 0) b
on a.tripid = b.tripid
exec sendrideemailchecktest 20703
select * from tblride where tripid = 19464 and cancelled = 0
*/
--Save the start of table html to a varible.
SET @tableHTML =
    N'<style>td {font-weight: bold;}</style>' +
    N'<B><H1>Ride sent by ' + SUSER_SNAME() + '</H1>' +
    N'<H2>Please contact your client upon receipt of this email to confirm ride and again the night before the scheduled ride.</H2>' +
    N'<table border="1" bgcolor="#ffffff" cellspacing="0">' +
					N'<tr><th bgcolor="#c0c0c0">Trip Date</th>
					<th bgcolor="#c0c0c0">Appointment time</th>
					<th bgcolor="#c0c0c0">Client Name</th>
					<th bgcolor="#c0c0c0">Pickup Location</th>
					<th bgcolor="#c0c0c0">Destination Address</th>
					<th bgcolor="#c0c0c0">Client Phone #</th>
					<th bgcolor="#c0c0c0">Pickup Time</th>' 
				    IF (Select COUNT(*) from @InitQuery where RideNotes is not null) > 0 
				    begin
				    SET @tableHTML += N'<th bgcolor="#c0c0c0">Notes</th>'
				    end
					SET @tableHTML += N'<th bgcolor="#c0c0c0">Assigned Driver</th>
										<th bgcolor="#c0c0c0">Trip Type</th></tr>'
----Query multiple ride rows into a single row, single column and render as inner table html code.
--Save it to a varible.				
SET @XMLQueryResults = 					
    CAST ( ( SELECT td = coalesce(RideDate,'No Ride Date'),    '',
				 'color:red' as 'td/@style', td = coalesce(ScheduleApptTime, 'No Appointment time'), '',
                    td = coalesce((ClFN + ' ' + ClLN), 'No Client name'), '',
                    td = coalesce(RPickUpAddress,'No address') + ', ' + coalesce(RPickupCity,'No city'), '',
                    --td = coalesce(RPickupCity,'No pickup city'), '',
                    td = coalesce(RDropoffAddress,'No address') + ', ' + coalesce(RDropoffCity,'No City'), '',
                    --td = coalesce(RDropoffCity,'No drop off City'), '',
                    td = coalesce(ClPhone,'No Client Phone Number'), '',
					'color:red' as 'td/@style', td = coalesce(SchedulePickupTime, 'No Scheduled Pickup Time'), '',
                    CASE WHEN (Select COUNT(*) from @InitQuery where RideNotes is not null) > 0  then coalesce(RideNotes, 'No Ride Notes') END as td, '',
                    td = coalesce(coalesce(DrFirstName,'') + ' ' + coalesce(DrLastName,''), 'No Driver Name'), '',
                    td = TripType
              FROM @InitQuery 
              FOR XML PATH('tr'), TYPE 
    ) AS NVARCHAR(MAX) ) ;
    
--Combine Varibles into a single html string.
Set @tableHTML = UPPER(@tableHTML + @XMLQueryResults + N'</table></B>') ;

--Make the final select to return html code as a single row, single column.

select @tableHTML as 'EmailContent'
RETURN

--exec sendrideemailchecktest 19464 12010