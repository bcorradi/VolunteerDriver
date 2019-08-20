CREATE TABLE [dbo].[tblAddressVerify] (
    [AddValidID]        INT            IDENTITY (1, 1) NOT NULL,
    [Address]           NVARCHAR (MAX) NULL,
    [City]              NVARCHAR (50)  NULL,
    [State]             NCHAR (2)      NULL,
    [Zip]               NCHAR (10)     NULL,
    [FacilityName]      NVARCHAR (MAX) NULL,
    [OrigDateCreated]   DATETIME       NULL,
    [OrigUserCreated]   VARCHAR (50)   NULL,
    [AddressType]       VARCHAR (20)   NULL,
    [SourcePKID]        INT            NULL,
    [ReviewedNotAdded]  BIT            CONSTRAINT [DF_tblAddressVerify_ReviewedNotAdded] DEFAULT ((0)) NULL,
    [AddedToAddressTbl] BIT            CONSTRAINT [DF_tblAddressVerify_AddedToAddressTbl] DEFAULT ((0)) NULL,
    [DateCreated]       DATETIME       CONSTRAINT [DF_tblAddressVerify_DateCreated] DEFAULT (getdate()) NULL,
    [UserCreated]       NCHAR (30)     CONSTRAINT [DF_tblAddressVerify_UserCreated] DEFAULT (suser_sname()) NULL,
    [DateUpdated]       DATETIME       CONSTRAINT [DF_tblAddressVerify_DateUpdated] DEFAULT (getdate()) NULL,
    [UserUpdated]       NCHAR (30)     CONSTRAINT [DF_tblAddressVerify_UserUpdated] DEFAULT (suser_sname()) NULL,
    [CountyID]          INT            NULL,
    [CombineAddress]    VARCHAR (255)  NULL,
    [Zip4]              CHAR (4)       NULL,
    CONSTRAINT [PK_tblAddressVerify] PRIMARY KEY CLUSTERED ([AddValidID] ASC)
);

