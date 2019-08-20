CREATE TABLE [dbo].[tblAddressType] (
    [AddressTypeID] INT          IDENTITY (1, 1) NOT NULL,
    [AddTypeDesc]   VARCHAR (50) NULL,
    [Active]        BIT          CONSTRAINT [DF_tblAddressType_Active] DEFAULT ((-1)) NULL,
    [Modifier]      VARCHAR (10) NULL,
    CONSTRAINT [PK_tblAddressType] PRIMARY KEY CLUSTERED ([AddressTypeID] ASC)
);

