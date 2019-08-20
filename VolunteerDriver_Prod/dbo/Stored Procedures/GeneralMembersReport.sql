create procedure GeneralMembersReport (@insuranceid int, @startdate datetime, @enddate datetime)
as

set nocount on
--declare @insuranceid int, @startdate datetime, @enddate datetime

--set @insuranceid = 2
--set @startdate = '2016/09/01'
--set @enddate = '2016/09/19'

declare @username varchar(50)

select @username = SUSER_NAME()

delete from tblGeneralMembers
where username = @username

Set @enddate = @enddate + cast('23:59:59.997' as time)

select Distinct ClLN + ', ' + ClFN as Client,i.Insurance,r.MemberID,AuthCode,RideDate
from tblTrip t
inner join tblRide r
on t.TripId = r.tripid
inner join tblClient c
on r.ClientID = c.clientid
inner join tblInsurance i
on r.InsuranceID = i.InsuranceID
where RideDate between @startdate and @enddate and
r.InsuranceID = @insuranceid
order by 1,5

--create table tblGeneralMembers
--(
--GeneralMembersID int identity(1,1),
--Client varchar(100),
--Insurance varchar(50),
--MemberID varchar(30),
--AuthCode varchar(255),
--RideDate datetime
--)

--alter table tblGeneralMembers add UserName varchar(50)