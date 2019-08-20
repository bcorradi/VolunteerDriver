
CREATE procedure [dbo].[InsuranceBillingEzclaimCompare]  (@insuranceid int, @startdate datetime, @enddate datetime)
as
set nocount on
------------------------------------------------------------------------------------------
--Exec  @SID=1,@Name='Arun'
Exec [dbo].[InsuranceBillingRPT]  @insuranceid = @insuranceID, @startdate = @startDate, @enddate = @enddate

set ansi_warnings on