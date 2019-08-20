EXECUTE sp_addrolemember @rolename = N'db_owner', @membername = N'phone';


GO
EXECUTE sp_addrolemember @rolename = N'db_owner', @membername = N'AEOA\brian.earsley';


GO
EXECUTE sp_addrolemember @rolename = N'db_ddladmin', @membername = N'AEOA\brian.earsley';


GO
EXECUTE sp_addrolemember @rolename = N'db_datareader', @membername = N'AEOA\Jillene.Clapsaddle';


GO
EXECUTE sp_addrolemember @rolename = N'db_datareader', @membername = N'AEOA\Rachel.Butala';


GO
EXECUTE sp_addrolemember @rolename = N'db_datawriter', @membername = N'AEOA\Jillene.Clapsaddle';


GO
EXECUTE sp_addrolemember @rolename = N'db_datawriter', @membername = N'AEOA\Rachel.Butala';

