


--exec CancelRevokedRides 3671
CREATE procedure [dbo].[CancelRevokedRides](@ClientID int)
as
Begin
-- this is set up for Blue Cross Only
set nocount on --may need this off to check if any rows have been updated




declare @RevokeDate datetime, @Records int--, @TestCondition int

set @Records = 0
--set @TestCondition = 0

--declare @ClientID int
--set @ClientID = 3374

create table #revoked
(
revokedid int identity(1,1),
RideID int,
TripID int,
RideDate datetime,
CancelReason int,
Canceled bit,
NoShow bit
)

set @RevokeDate = null

If exists ( --Check if Client has Blue Cross
select clientid from tblClientInsurance
where ClientID = @Clientid
and Active = 1
and InsuranceID = 2
)
Begin

	select @RevokeDate = MAX(RevokeDate) from tblClientInsurance
	where ClientID = @ClientID
	and Active = 1
	and InsuranceID = 2


	If @RevokeDate is not null
	Begin

		insert into #revoked
		(RideID,TripID,RideDate,CancelReason,Canceled,NoShow)
		select RideID,TripID,RideDate,rCancelReason, Canceled, NoShow
		from tblRide
		where ClientID = @ClientID
		and RideDate >= @RevokeDate 
		and InsuranceID = 2
		and Canceled = 0 --if the ride is already canceled it shouldnt be included in the revoked rides
						 --it could be a valid cancel if canceled already
		set @Records = @@ROWCOUNT
						   
		--check if any records need to be updated?
						   
		--update the cancel reason to revoked benefits
		update tblTrip
		set tCancelReason = 4
		where TripID in (select distinct TripID from #revoked where RideDate >= GETDATE())
		
		--MIPOnly set if ride has already occurred
		update tblTrip
		set tCancelReason = 4,
			MIPOnly = 1 --ride can't be cancelled because we need to pay the driver
		where TripID in (select distinct TripID from #revoked where RideDate < GETDATE())

		update tblride
		set rCancelReason = 4, 
			Canceled = 1,
			RStartTime = Null, 
			REndTime = Null, 
			LoadedMiles = 0, 
			UnloadedMiles = 0
		where RideID in (select distinct RideID from #revoked where RideDate >= GETDATE())
		
		--rides that have already occurred are not cancelled because we have to pay the driver
	End
	Else
	Begin
	--Revoke date is null so uncancel all future rides
		insert into #revoked
		(RideID,TripID,RideDate,CancelReason,Canceled,NoShow)
		select RideID,TripID,RideDate,rCancelReason, Canceled, NoShow
		from tblRide
		where ClientID = @ClientID
		and RideDate >= GETDATE()
		and InsuranceID = 2
		and Canceled = 1 
		and rCancelReason = 4--only uncancel rides that have been cancelled by being revoked
		
		set @Records = @@ROWCOUNT
		--check if any records need to be updated?
		
		--MIP records are not considered since they have already occured and Blue Cross will not pay for them
		update tblTrip
		set tCancelReason = null
		where TripID in (select distinct TripID from #revoked where RideDate >= GETDATE())

		update tblride
		set rCancelReason = Null, 
		Canceled = 0
		where RideID in (select distinct RideID from #revoked where RideDate >= GETDATE())
	End
End
Else 
Begin
	set @Records = 55 --Blue Cross Insurance isnt available for client
End
drop table #revoked

select @Records
End

