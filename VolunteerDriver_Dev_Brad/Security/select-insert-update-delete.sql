CREATE ROLE [select-insert-update-delete]
    AUTHORIZATION [dbo];


GO
EXECUTE sp_addrolemember @rolename = N'select-insert-update-delete', @membername = N'AEOA\techsupport';

