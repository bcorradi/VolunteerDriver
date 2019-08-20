CREATE ROLE [RuralRides]
    AUTHORIZATION [dbo];


GO
EXECUTE sp_addrolemember @rolename = N'RuralRides', @membername = N'AEOA\martin.lepak';


GO
EXECUTE sp_addrolemember @rolename = N'RuralRides', @membername = N'AEOA\amanda.reese';


GO
EXECUTE sp_addrolemember @rolename = N'RuralRides', @membername = N'AEOA\doug.lowthian';


GO
EXECUTE sp_addrolemember @rolename = N'RuralRides', @membername = N'AEOA\Amy.hart';

