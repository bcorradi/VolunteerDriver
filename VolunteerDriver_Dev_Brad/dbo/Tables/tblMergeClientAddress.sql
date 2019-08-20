CREATE TABLE [dbo].[tblMergeClientAddress] (
    [MergeClientAddressID] INT            IDENTITY (1, 1) NOT NULL,
    [ClientAddressID]      INT            NULL,
    [ClientID]             INT            NULL,
    [StartDate]            DATETIME       NULL,
    [EndDate]              DATETIME       NULL,
    [EntryDate]            DATETIME       NULL,
    [ClAddress]            NVARCHAR (255) NULL,
    [ClCity]               NVARCHAR (255) NULL,
    [ClState]              NVARCHAR (255) NULL,
    [ClZip]                NVARCHAR (255) NULL,
    [County]               INT            NULL,
    [AddressType]          NVARCHAR (255) NULL,
    [Active]               BIT            NULL,
    [UserCreated]          CHAR (30)      NULL,
    [UserUpdated]          CHAR (30)      NULL,
    [DateUpdated]          DATETIME       NULL,
    [ClAddressID]          INT            NULL,
    [EzClaimPatientID]     BIGINT         NULL
);

