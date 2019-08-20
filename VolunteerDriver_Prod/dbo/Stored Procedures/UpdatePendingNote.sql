create procedure UpdatePendingNote (@TripID int, @Note varchar(255))
as

set nocount on

declare @count int
set @count = 0

set @count = isnull((select COUNT(tripid)
from tblPendingWorkbookNotes
where tripid = @tripID),0)

if @count > 0 
Begin
	update tblPendingWorkbookNotes
	set Note = @Note
	where tripid = @tripid
end

else
Begin
	insert into tblPendingWorkbookNotes (tripid,note)
	values(@TripID,@note)
End
	
