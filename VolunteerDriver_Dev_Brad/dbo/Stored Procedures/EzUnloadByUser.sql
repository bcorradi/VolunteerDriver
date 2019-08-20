create procedure EzUnloadByUser 
as

set nocount on

declare @username varchar(50)

select @username = SUSER_NAME()

delete from tblEzClaimPhysician
where UserName = @username

delete from tblEzClaim
where UserName = @username

delete from tblEzClaimpatient
where UserName = @username

delete from tblEzClaimbilling2
where UserName = @username