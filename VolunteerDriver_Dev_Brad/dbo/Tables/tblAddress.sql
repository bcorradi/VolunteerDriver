CREATE TABLE [dbo].[tblAddress] (
    [AddressID]          INT           IDENTITY (1, 1) NOT NULL,
    [FacilityName]       VARCHAR (100) NULL,
    [Address]            VARCHAR (70)  NOT NULL,
    [City]               VARCHAR (25)  NOT NULL,
    [State]              CHAR (2)      CONSTRAINT [DF_tblAddress_State] DEFAULT ('MN') NOT NULL,
    [Zip]                CHAR (5)      NOT NULL,
    [CountyID]           INT           NULL,
    [Active]             BIT           CONSTRAINT [DF_tblAddress_Active] DEFAULT ((-1)) NOT NULL,
    [EntryDate]          DATETIME      CONSTRAINT [DF_tblAddress_EntryDate] DEFAULT (getdate()) NOT NULL,
    [UserCreated]        VARCHAR (50)  CONSTRAINT [DF_tblAddress_UserCreated] DEFAULT (suser_sname()) NOT NULL,
    [DateUpdated]        DATETIME      CONSTRAINT [DF_tblAddress_DateUpdated] DEFAULT (getdate()) NOT NULL,
    [UserUpdated]        VARCHAR (50)  CONSTRAINT [DF_tblAddress_UserUpdated] DEFAULT (suser_sname()) NOT NULL,
    [CombineAddress]     VARCHAR (255) NULL,
    [Zip4]               CHAR (4)      NULL,
    [AddressTypeID]      INT           NULL,
    [EZClaimPhysicianID] BIGINT        NULL,
    CONSTRAINT [PK_tblAddress] PRIMARY KEY CLUSTERED ([AddressID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Active_Address]
    ON [dbo].[tblAddress]([Active] ASC)
    INCLUDE([AddressID], [FacilityName], [Address], [City], [State], [Zip], [CountyID], [Zip4], [AddressTypeID]);

