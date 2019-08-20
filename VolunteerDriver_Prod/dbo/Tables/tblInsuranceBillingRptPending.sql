CREATE TABLE [dbo].[tblInsuranceBillingRptPending] (
    [PendingID]      INT           IDENTITY (1, 1) NOT NULL,
    [TripID]         INT           NULL,
    [Driver]         VARCHAR (255) NULL,
    [DriverPhone]    VARCHAR (255) NULL,
    [DriverPhoneAlt] VARCHAR (255) NULL,
    [RideDate]       DATETIME      NULL,
    [Client]         VARCHAR (255) NULL,
    [AuthCode]       VARCHAR (255) NULL,
    [Insurance]      VARCHAR (255) NULL,
    [ClientID]       INT           NULL,
    [DriverID]       INT           NULL,
    [PaperWork]      VARCHAR (50)  NULL,
    [UserName]       VARCHAR (255) NULL,
    [Note]           VARCHAR (255) NULL,
    [Email]          VARCHAR (50)  NULL,
    CONSTRAINT [PK_tblInsuranceBillingRptPending] PRIMARY KEY CLUSTERED ([PendingID] ASC)
);

