
CREATE procedure [dbo].[FtpTestImport] (@filename varchar(max))
as

set nocount on

--Delete from ftptest

--IF OBJECT_ID('tempdb.dbo.#ftptest', 'U') IS NOT NULL
--  Drop table #ftptest

declare 
@path varchar(max)
--, @filename varchar(max)
, @fullpath varchar(max), @sql varchar(max)
--set @filename = 'hptest.csv'
set @path = 'C:\SQLSHARE\'
set @fullpath = @path+@filename

set @sql = 'BULK INSERT #ftpteststage
    FROM ''' + @fullpath + '''
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = '','',
        ROWTERMINATOR = ''\n''
    )'


create table #ftpteststage
(	
	vendor int,
	seqrideid int,
	seqridelegid int ,
	status int ,
	ridedate datetime ,
	primaryRiderExternalMemberID nvarchar(255) ,
	primaryRiderLastName nvarchar(255) ,
	primaryRiderFirstName nvarchar(255) ,
	primaryridermiddleinitial char(1) ,
	cabridetype int ,
	pickupdate datetime ,
	appointmentdate datetime, 
	fromfacilityname varchar(100), 
	fromstreet varchar(70) ,
	fromstreet2 varchar(70) ,
	fromcity varchar(25) ,
	fromstate varchar(2) ,
	fromzip varchar(10) ,
	fromcounty nvarchar(255) ,
	fromphone varchar(255) ,
	tofacilityname varchar(100) ,
	tostreet varchar(70) ,
	tostreet2 varchar(70) ,
	tocity varchar(25) ,
	tostate varchar(2) ,
	tozip varchar(10) ,
	tocounty nvarchar(255) ,
	tophone varchar(255) ,
	numberofriders int ,
	estimatedmileage decimal(7, 3) ,
	instructions varchar(max) ,
	modified int ,
	primaryriderstreet1 varchar(70) ,
	primaryriderstreet2 varchar(70) ,
	primaryridercity varchar(25) ,
	primaryriderstate varchar(2) ,
	primaryriderzip varchar(10) ,
	Primaryridercounty nvarchar(255) ,
	primaryriderphone varchar(255) ,
	primaryridergender varchar(10) ,
	primaryriderdateofbirth datetime, 
	mode int
)

exec (@sql)

UPDATE #ftpteststage
SET FromFacilityName = REPLACE(fromFacilityName, '"', '')

UPDATE #ftpteststage
SET ToFacilityName = REPLACE(ToFacilityName, '"', '')
----------------------------------------------------------------------------------------
--select * from #ftpteststage
--delete from ftptest


update #ftpteststage

set primaryRiderExternalMemberID = '01010101'

update #ftpteststage

set primaryriderdateofbirth = '9/9/9999'

update #ftpteststage

set FromStreet = '123 11th FromStreet'

update #ftpteststage

set ToStreet = '123 11th FromStreet'

----------------------------------------------------------------------------------------
insert into ftptest 
	(vendor,
	seqrideid ,
	seqridelegid ,
	status  ,
	ridedate  ,
	primaryRiderExternalMemberID  ,
	primaryRiderLastName  ,
	primaryRiderFirstName ,
	primaryridermiddleinitial  ,
	cabridetype  ,
	pickupdate  ,
	appointmentdate , 
	fromfacilityname , 
	fromstreet  ,
	fromstreet2  ,
	fromcity  ,
	fromstate  ,
	fromzip  ,
	fromcounty  ,
	fromphone  ,
	tofacilityname  ,
	tostreet  ,
	tostreet2  ,
	tocity  ,
	tostate  ,
	tozip  ,
	tocounty  ,
	tophone  ,
	numberofriders  ,
	estimatedmileage  ,
	instructions  ,
	modified  ,
	primaryriderstreet1  ,
	primaryriderstreet2  ,
	primaryridercity  ,
	primaryriderstate  ,
	primaryriderzip  ,
	Primaryridercounty  ,
	primaryriderphone  ,
	primaryridergender  ,
	primaryriderdateofbirth , 
	mode )
select * from #ftpteststage

Drop table #ftpteststage

--select * from ftptest
UPDATE ftptest 
SET fromzip4 = SUBSTRING(fromzip,CHARINDEX('-',fromzip)+1,4)

UPDATE ftptest 
SET tozip4 = SUBSTRING(tozip,CHARINDEX('-',tozip)+1,4)

update ftptest 
set fromzip4 = ''
where len(fromzip)<6

update ftptest 
set tozip4 = ''
where len(tozip)<6

UPDATE ftptest 
SET fromzip = SUBSTRING(fromzip,1,5)

UPDATE ftptest 
SET tozip = SUBSTRING(tozip,1,5)



