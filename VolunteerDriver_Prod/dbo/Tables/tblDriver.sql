CREATE TABLE [dbo].[tblDriver] (
    [DriverID]              INT            IDENTITY (1, 1) NOT NULL,
    [Active]                BIT            DEFAULT ((-1)) NOT NULL,
    [EntryDate]             DATETIME       DEFAULT (getdate()) NULL,
    [DrFirstName]           NVARCHAR (255) NULL,
    [DrLastName]            NVARCHAR (255) NULL,
    [DrDOB]                 DATETIME       NULL,
    [DrStreetAddress]       NVARCHAR (255) NULL,
    [DrMailAddress]         NVARCHAR (255) NULL,
    [DrCity]                NVARCHAR (255) NULL,
    [DrState]               NVARCHAR (2)   DEFAULT ('MN') NULL,
    [DrZip]                 INT            NULL,
    [DrPhone1]              NVARCHAR (255) NULL,
    [DrPhoneAlt]            NVARCHAR (255) NULL,
    [DrInsuranceProvider]   NVARCHAR (255) NULL,
    [DrInsurancePolicyNO]   NVARCHAR (255) NULL,
    [DrInsPolicyExp]        DATETIME       NULL,
    [DrLicenseNo]           NVARCHAR (255) NULL,
    [FMPDriverID]           INT            NULL,
    [DrNotes]               NTEXT          NULL,
    [LNFN]                  NVARCHAR (255) NULL,
    [upsize_ts]             ROWVERSION     NULL,
    [Email]                 NVARCHAR (50)  NULL,
    [DrMI]                  NVARCHAR (50)  NULL,
    [RRMed]                 NCHAR (10)     NULL,
    [DrLicenseExpires]      DATE           NULL,
    [MDRCheck]              DATE           NULL,
    [BackgroundCheck]       DATE           NULL,
    [DirectDeposit]         INT            NULL,
    [Vehicle]               NVARCHAR (50)  NULL,
    [Plate]                 NCHAR (10)     NULL,
    [VIN]                   NVARCHAR (50)  NULL,
    [HandicappedNumber]     NVARCHAR (50)  NULL,
    [HandicapExp]           DATE           NULL,
    [HandicapIssued]        DATE           NULL,
    [UserCreate]            CHAR (30)      CONSTRAINT [DF_tblDriver_UserCreate] DEFAULT (suser_sname()) NULL,
    [UserUpdated]           CHAR (30)      NULL,
    [DateUpdated]           DATETIME       NULL,
    [BuddyList]             BIT            NULL,
    [CountyID]              INT            NULL,
    [DuluthOnly]            BIT            NULL,
    [BuddyAdvocate]         NVARCHAR (50)  NULL,
    [LicenseExpires]        DATETIME       NULL,
    [DrMDRCheck]            DATETIME       NULL,
    [BGCheck]               DATETIME       NULL,
    [EmergencyContactName]  NCHAR (50)     NULL,
    [EmergencyContactPhone] NCHAR (30)     NULL,
    [TrainingDate]          DATETIME       NULL,
    [Deleted]               BIT            NULL,
    [Availability]          VARCHAR (255)  NULL,
    CONSTRAINT [aaaaatblDriver_PK] PRIMARY KEY NONCLUSTERED ([DriverID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [DriverID]
    ON [dbo].[tblDriver]([DriverID] ASC);


GO
CREATE NONCLUSTERED INDEX [_dta_index_tblDriver_5_1461580245__K1_20]
    ON [dbo].[tblDriver]([DriverID] ASC)
    INCLUDE([LNFN]);


GO
CREATE NONCLUSTERED INDEX [_dta_index_tblDriver_5_1461580245__K1_4_5_20]
    ON [dbo].[tblDriver]([DriverID] ASC)
    INCLUDE([DrFirstName], [DrLastName], [LNFN]);


GO
CREATE STATISTICS [_dta_stat_1461580245_4_1]
    ON [dbo].[tblDriver]([DrFirstName], [DriverID]);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'3/3/2014 10:47:45 AM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:39 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'192', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'胛쌢䛋䴿咒햽衁竡', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DriverID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DriverID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'弔휉墼䘁鮩桄₝', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2130', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'Now()', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'蘤樊㿦䕴宬⯓⏸廙', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Entry Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ঊ门䢷እ䳣', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'First Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrFirstName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrFirstName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'때討浍佽㖃老쫔㺾', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Last Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrLastName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrLastName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLastName';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'덵콟䧂䮾墔樇臍', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'DOB', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrDOB', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrDOB', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrDOB';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꍤ༩浕䜩֤谾䳣蝯', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Delete me (in tblDriverAddress)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrStreetAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrStreetAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrStreetAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'雄ꍱ⾕䃱��綴楿', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Mailing Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Delete me (in tblDriverAddress)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrMailAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrMailAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'揉၍䠿䢴㩳ｮ獣', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Delete me (in tblDriverAddress)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrCity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrCity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'"MN"', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'螆癍밳䳨ㆥ痶䤡撲', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Delete me (in tblDriverAddress)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrState', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrState', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'얧᛭誦䯢ꊯ卆訿챒', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Delete me (in tblDriverAddress)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'聶Ꚋ䀅ኅ虣宖竂', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Phone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrPhone1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrPhone1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhone1';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'僰ࡉᦒ䵫䆬鱠汔壸', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Alt Phone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrPhoneAlt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrPhoneAlt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrPhoneAlt';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'듆ꇧ䝾䕡ᾘ啺뤪洩', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Vehicle Insurance Company', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrInsuranceProvider', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrInsuranceProvider', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsuranceProvider';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㟎嶹䳗ﾓԤ愬', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Policy Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrInsurancePolicyNO', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrInsurancePolicyNO', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsurancePolicyNO';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'Ė᫻砙䂻뚧௻뉀꨸', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Policy Expiration', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrInsPolicyExp', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrInsPolicyExp', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrInsPolicyExp';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ᐯ㳘䑄斈沑㌋꟮', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'DL Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrLicenseNo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrLicenseNo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrLicenseNo';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'薟㵱䈏꺻竌Ὼ還', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPDriverID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'FMPDriverID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'19', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'末ȭ목䈗Ⴂ寍㮣牕', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'TextFormat', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'20', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'뗙鴣䠔㾲劇⪬똺', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'LNFN', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'19', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'LNFN', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriver_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'USE ME - NOT DRLicenseExpired - THIS IS RIGHT DATATYPE', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'LicenseExpires';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'USE ME - NOT MDRCHECK - THIS IS RIGHT DATATYPE', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'DrMDRCheck';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'USE ME FOR BACKGROUND CHECK DATE - NOT BackgroundCheck - THIS IS RIGHT DATATYPE', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriver', @level2type = N'COLUMN', @level2name = N'BGCheck';

