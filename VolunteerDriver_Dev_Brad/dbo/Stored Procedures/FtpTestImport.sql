
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

set @sql = 'BULK INSERT ftptest
    FROM ''' + @fullpath + '''
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = '','',
        ROWTERMINATOR = ''\n''
    )'


--create table ftptest
--(
--vendor varchar(max)
--, seqrideid varchar(max)
--, seqridelegid varchar(max)
--, status varchar(max)
--, ridedate varchar(max)
--, primaryRiderExternalMemberID varchar(max)
--, primaryRiderLastName varchar(max)
--, primaryRiderFirstName varchar(max)
--, primaryridermiddleinitial varchar(max)
--, cabridetype varchar(max)
--, pickupdate varchar(max)
--, appointmentdate varchar(max)
--, fromfacilityname varchar(max)
--, fromstreet varchar(max)
--, fromstreet2 varchar(max)
--, fromcity varchar(max)
--, fromstate varchar(max)
--, fromzip varchar(max)
--, fromcounty varchar(max)
--, fromphone varchar(max)
--, tofacilityname varchar(max)
--, tostreet varchar(max)
--, tostreet2 varchar(max)
--, tocity varchar(max)
--, tostate varchar(max)
--, tozip varchar(max)
--, tocounty varchar(max)
--, tophone varchar(max)
--, numberofriders varchar(max)
--, estimatedmileage varchar(max)
--, instructions varchar(max)
--, modified varchar(max)
--, primaryriderstreet1 varchar(max)
--, primaryriderstreet2 varchar(max)
--, primaryridercity varchar(max)
--, primaryriderstate varchar(max)
--, primaryriderzip varchar(max)
--, Primaryridercounty varchar(max)
--, primaryriderphone varchar(max)
--, primaryridergender varchar(max)
--, primaryriderdateofbirth varchar(max)
--, mode varchar(max)
--)

exec (@sql)

----------------------------------------------------------------------------------------
--select * from ftptest


