-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	This stored procedure takes a single parameter, a driver ID.  
--              It returns a single row, single column, resultset of HTML.
--              
--              Example of use: exec SendMultipleRideEmailCheck 48
-- =============================================
CREATE PROCEDURE [dbo].[SendMultipleRideEmailCheck](@driverID int)
as

Declare @string varchar(MAX)
Declare @TripID int
Declare @temptable table
(
tablestring varchar(max)
)

SET @string = '<br />'

DECLARE MyCursor CURSOR FOR
select distinct TripID from vScheduledTrips 
where Canceled = 0
and DriverID is not null
and DriverID = @driverID
OPEN MyCursor
FETCH NEXT FROM MyCursor into @TripID
WHILE @@FETCH_STATUS = 0 and @TripID is not null
BEGIN
Delete from @temptable
insert into @temptable
exec SendRideEmailCheck @TripID
set @string = @string + (select tablestring from @temptable)
FETCH NEXT FROM MyCursor into @TripID
END
CLOSE MyCursor
DEALLOCATE MyCursor
Select @string as 'EmailContent'
Return
