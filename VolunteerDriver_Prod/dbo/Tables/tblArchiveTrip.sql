CREATE TABLE [dbo].[tblArchiveTrip] (
    [TripID]              INT            IDENTITY (1, 1) NOT NULL,
    [EntryDate]           DATETIME       NULL,
    [DriverReimbursement] MONEY          NULL,
    [InsuranceBill]       MONEY          NULL,
    [DriverID]            INT            NULL,
    [DrFirstName]         NVARCHAR (255) NULL,
    [DrLastName]          NVARCHAR (255) NULL,
    [DrInsuranceProvider] NVARCHAR (255) NULL,
    [DrInsurancePolicyNO] NVARCHAR (255) NULL,
    [DrInsPolicyExp]      DATETIME       NULL,
    [DrLicenseNo]         NVARCHAR (255) NULL,
    [TripCanceled]        BIT            DEFAULT ((0)) NOT NULL,
    [DriverRateID]        INT            NULL,
    [DrMailZip]           NVARCHAR (255) NULL,
    [County]              NVARCHAR (255) NULL,
    [AllowMeals]          BIT            DEFAULT ((0)) NOT NULL,
    [ArchiveUser]         VARCHAR (25)   NULL,
    [ArchiveDateTime]     DATETIME       NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'6/16/2014 11:45:58 AM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:32:21 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'8489', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DriverReimbursement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DriverReimbursement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'InsuranceBill', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'InsuranceBill', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DriverID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DriverID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrFirstName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrFirstName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrLastName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrLastName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrInsuranceProvider', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrInsuranceProvider', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrInsurancePolicyNO', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrInsurancePolicyNO', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrInsPolicyExp', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrInsPolicyExp', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrLicenseNo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrLicenseNo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripCanceled', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripCanceled', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DriverRateID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DriverRateID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrMailZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrMailZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'AllowMeals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'AllowMeals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';

