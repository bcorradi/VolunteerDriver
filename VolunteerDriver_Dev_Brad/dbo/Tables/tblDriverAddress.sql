CREATE TABLE [dbo].[tblDriverAddress] (
    [DriverAddressID] INT            IDENTITY (1, 1) NOT NULL,
    [DriverID]        INT            NULL,
    [StartDate]       DATETIME       NULL,
    [EndDate]         DATETIME       NULL,
    [EntryDate]       DATETIME       DEFAULT (getdate()) NULL,
    [Active]          BIT            DEFAULT ((0)) NOT NULL,
    [DrAddress]       NVARCHAR (255) NULL,
    [DrCity]          NVARCHAR (255) NULL,
    [DrState]         NVARCHAR (255) NULL,
    [DrZip]           NVARCHAR (255) NULL,
    [County]          INT            NULL,
    [DrMailAddress]   NVARCHAR (255) NULL,
    [DrMailCity]      NVARCHAR (255) NULL,
    [DrMailState]     NVARCHAR (255) NULL,
    [DrMailZip]       NVARCHAR (255) NULL,
    [UserCreated]     CHAR (30)      CONSTRAINT [DF_tblDriverAddress_UserCreated] DEFAULT (suser_sname()) NULL,
    [UserUpdated]     CHAR (30)      NULL,
    [DateUpdated]     DATETIME       NULL,
    [DrAddressID]     INT            NULL,
    CONSTRAINT [aaaaatblDriverAddress_PK] PRIMARY KEY NONCLUSTERED ([DriverAddressID] ASC),
    CONSTRAINT [tblDriverAddress_FK00] FOREIGN KEY ([DriverID]) REFERENCES [dbo].[tblDriver] ([DriverID])
);


GO
CREATE NONCLUSTERED INDEX [DriverAddressID]
    ON [dbo].[tblDriverAddress]([DriverAddressID] ASC);


GO
CREATE NONCLUSTERED INDEX [DriverID]
    ON [dbo].[tblDriverAddress]([DriverID] ASC);


GO
CREATE NONCLUSTERED INDEX [tblDrivertblDriverAddress]
    ON [dbo].[tblDriverAddress]([DriverID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'3/7/2014 2:52:05 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:40 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'173', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'款፷ञ䏵䦊๾ೕ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DriverAddressID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DriverAddressID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쭇沞᱙䠾캼䡨럁誗', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DriverID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DriverID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'̍ꨬ风䨛䮚겪⯎⡭', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'StartDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'StartDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'댔Ậ꺘䕦馔﨓愻ઝ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2130', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'Now()', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ฐ덕㒎䘹客꓅㓏侫', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'缨ᦟᑾ䲰犅둃塚', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2535', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'휆哨⼡䣽䷟Ⴘ䢊', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'鐱졹ㅸ䎆莠걀ꤥ芖', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrCity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrCity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrCity';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ᒳ猔蜗䦝�䈍宄提', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrState', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrState', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrState';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'퀀ﬓ�䅲뚁穠幊▎', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrZip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowMultipleValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowValueListEdits', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ᕆ㧩ာ侄䲛࡞쬑', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_BoundColumn', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnCount', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnHeads', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidths', @value = N'0;1440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'111', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_LimitToList', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListRows', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListWidth', @value = N'1440twip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSource', @value = N'SELECT ltblCounty.CountyID, ltblCounty.County
FROM ltblCounty
ORDER BY County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSourceType', @value = N'Table/View/StoredProc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ShowOnlyRowSourceValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䛁ꐝ鶏䈧늉謰猪冬', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrMailAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrMailAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'঻⤢䎛花̙ۙ䌧', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrMailCity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrMailCity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailCity';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'籧녾秔䲖躼ꖣ荱�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrMailState', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrMailState', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailState';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'þ﫯뷀䙦熍ᰟ뤇', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DrMailZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DrMailZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblDriverAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrMailZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Used in address validation - holds value of existing address record rather than free typed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'COLUMN', @level2name = N'DrAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ConstraintText', @value = N'You cannot add, change, or delete this record because of the relationship restriction between the tables ''tblDriver'' and ''tblDriverAddress''.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDriverAddress', @level2type = N'CONSTRAINT', @level2name = N'tblDriverAddress_FK00';

