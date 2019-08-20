CREATE TABLE [dbo].[tblImportMasterDriverList] (
    [ID]                    INT            IDENTITY (1, 1) NOT NULL,
    [Lastname]              NVARCHAR (255) NULL,
    [Firstname]             NVARCHAR (255) NULL,
    [MI]                    NVARCHAR (255) NULL,
    [RR/ Med]               NVARCHAR (255) NULL,
    [Street Address]        NVARCHAR (255) NULL,
    [City]                  NVARCHAR (255) NULL,
    [State]                 NVARCHAR (255) NULL,
    [Zip]                   NVARCHAR (255) NULL,
    [Home Phone]            NVARCHAR (255) NULL,
    [Cell Phone]            NVARCHAR (255) NULL,
    [Email]                 NVARCHAR (255) NULL,
    [License Expires]       DATETIME       NULL,
    [Insurance Expires]     DATETIME       NULL,
    [License #]             NVARCHAR (255) NULL,
    [MDR Checked]           DATETIME       NULL,
    [Background Checked]    DATETIME       NULL,
    [Insurer]               NVARCHAR (255) NULL,
    [Direct Deposit]        NVARCHAR (255) NULL,
    [Vehicle]               NVARCHAR (255) NULL,
    [Plate]                 NVARCHAR (255) NULL,
    [VIN]                   NVARCHAR (255) NULL,
    [Handicapped Placard #] NVARCHAR (255) NULL,
    [Date Issued]           DATETIME       NULL,
    [Expires]               DATETIME       NULL,
    [Notes]                 NVARCHAR (255) NULL,
    [County]                INT            NULL,
    CONSTRAINT [aaaaatblImportMasterDriverList_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC),
    CONSTRAINT [tblImportMasterDriverList_FK00] FOREIGN KEY ([County]) REFERENCES [dbo].[ltblCounty] ([CountyID])
);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'5/12/2014 8:17:46 AM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:40 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'58', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Lastname', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Lastname', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Firstname', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Firstname', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'MI', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'MI', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MI';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RR/ Med', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RR/ Med', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'RR/ Med';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Home Phone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Home Phone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Home Phone';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Cell Phone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Cell Phone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'm/d/yyyy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'License Expires', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'License Expires', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License Expires';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'm/d/yyyy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance Expires', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance Expires', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurance Expires';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'License #', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'License #', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'License #';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'm/d/yyyy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'MDR Checked', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'MDR Checked', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'MDR Checked';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'm/d/yyyy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Background Checked', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Background Checked', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Background Checked';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Insurer';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'm/d/yyyy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Direct Deposit', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Direct Deposit', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Direct Deposit';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Vehicle', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'19', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Vehicle', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Vehicle';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Plate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'20', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Plate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Plate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'VIN', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'21', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'VIN', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'VIN';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Handicapped Placard #', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'22', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Handicapped Placard #', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Handicapped Placard #';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'm/d/yyyy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Date Issued', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'23', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Date Issued', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Date Issued';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'm/d/yyyy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Expires', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'24', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Expires', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Expires';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Notes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'25', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Notes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowMultipleValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowValueListEdits', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_BoundColumn', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnCount', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnHeads', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidths', @value = N'0;1440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'111', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_LimitToList', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListRows', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListWidth', @value = N'1440twip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSource', @value = N'SELECT ltblCounty.CountyID, ltblCounty.County
FROM ltblCounty
ORDER BY County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSourceType', @value = N'Table/View/StoredProc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'40', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ShowOnlyRowSourceValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblImportMasterDriverList_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblImportMasterDriverList', @level2type = N'COLUMN', @level2name = N'County';

