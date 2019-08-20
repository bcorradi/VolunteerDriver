CREATE ROLE [EZClaimAnalysisAdmin]
    AUTHORIZATION [dbo];


GO
EXECUTE sp_addrolemember @rolename = N'EZClaimAnalysisAdmin', @membername = N'AEOA\colette.hanson';


GO
EXECUTE sp_addrolemember @rolename = N'EZClaimAnalysisAdmin', @membername = N'AEOA\cindy.johnson';


GO
EXECUTE sp_addrolemember @rolename = N'EZClaimAnalysisAdmin', @membername = N'AEOA\test.volunteer';


GO
EXECUTE sp_addrolemember @rolename = N'EZClaimAnalysisAdmin', @membername = N'AEOA\Lucia.Snodgrass';

