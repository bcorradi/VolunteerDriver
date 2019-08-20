CREATE TABLE [dbo].[tblMergeClientDriverDistance] (
    [MergeClientDriverID] INT      IDENTITY (1, 1) NOT NULL,
    [ClientDriverID]      INT      NULL,
    [ClientID]            INT      NULL,
    [ClientAddressID]     INT      NULL,
    [DriverID]            INT      NULL,
    [DriverAddressID]     INT      NULL,
    [Active]              BIT      NULL,
    [Distance]            INT      NULL,
    [LastRideDate]        DATETIME NULL
);

