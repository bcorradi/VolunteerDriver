CREATE TABLE [dbo].[FMPtblDrivers] (
    [ID]                 INT            IDENTITY (1, 1) NOT NULL,
    [First Name]         NVARCHAR (255) NULL,
    [Insurance Provider] NVARCHAR (255) NULL,
    [Last Name]          NVARCHAR (255) NULL,
    [Policy Number]      FLOAT (53)     NULL,
    [Street Address]     NVARCHAR (255) NULL,
    [Policy Expiration]  NVARCHAR (255) NULL,
    [City]               NVARCHAR (255) NULL,
    [DOB]                DATETIME       NULL,
    [State]              NVARCHAR (255) NULL,
    [Drivers Lic]        NVARCHAR (255) NULL,
    [Zip]                NVARCHAR (255) NULL,
    [Phone Number]       NVARCHAR (255) NULL,
    [Alt Number]         NVARCHAR (255) NULL,
    [ZIP5]               NVARCHAR (255) NULL,
    [LNFN]               NVARCHAR (255) NULL,
    [FMPDriverID]        INT            NULL,
    [upsize_ts]          ROWVERSION     NULL,
    CONSTRAINT [aaaaaFMPtblDrivers_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [FMPDriverID]
    ON [dbo].[FMPtblDrivers]([FMPDriverID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'3/3/2014 11:42:17 AM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:32:24 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'148', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䶈偛樘䞞犊캢�絀', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ᚡ᥷ꪏ䖇ﮢ钖Ֆֺ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'First Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'First Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'륽Ὗ�䎞⾜꾌랞ퟞ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance Provider', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance Provider', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꈆ甧愩丰ખ臘䤎', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Last Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Last Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'1785', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'�ⷲ�䫒⚾퉪暔န', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Policy Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Policy Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'器�틇䱂䆗ꈝ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'헢崔늭䐯劲䒏뼲', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Policy Expiration', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Policy Expiration', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'齵琳㩮仼힗閯䮪', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'嫩鵮豯䈮ঊ᳖࠭煸', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DOB', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DOB', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'뀂蓡哇䂽施Ꮚና끤', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'깫ꮳ区䆈양ᆦ飑撠', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Drivers Lic', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Drivers Lic', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'젝핁䥽粜嗲昬䣳', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'줻ꂌ䷔랶ߠ欋⎾', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Phone Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Phone Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'궇듴䯭�㭦⯡捠', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Alt Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Alt Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㫼㵗퇌䚥貣곆둻', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ZIP5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ZIP5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'ZIP5';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䁛Ｉ侗䃘䶪ܤᛓ鸡', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'LNFN', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'LNFN', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'LNFN';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ԇꦹ䗻麹煝돒', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPDriverID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'FMPDriverID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblDrivers_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblDrivers', @level2type = N'COLUMN', @level2name = N'FMPDriverID';

