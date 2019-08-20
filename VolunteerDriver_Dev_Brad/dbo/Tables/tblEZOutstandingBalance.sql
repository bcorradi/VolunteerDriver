CREATE TABLE [dbo].[tblEZOutstandingBalance] (
    [patfirstname]         NCHAR (99)   NULL,
    [patlastname]          NCHAR (99)   NULL,
    [ClaFirstDateTRIG]     DATE         NULL,
    [Units]                INT          NULL,
    [Charges]              MONEY        NULL,
    [ClaTotalAmtAppliedCC] MONEY        NULL,
    [ClaLastExportedDate]  DATE         NULL,
    [ClaTotalBalanceCC]    MONEY        NULL,
    [ClaStatus]            VARCHAR (50) NULL,
    [ClaID]                INT          NULL,
    [username]             VARCHAR (50) NULL
);

