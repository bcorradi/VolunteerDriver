CREATE TABLE [dbo].[tblFMPdriverAll] (
    [Alt Number]         NVARCHAR (255) NULL,
    [City]               NVARCHAR (255) NULL,
    [DOB]                DATETIME       NULL,
    [Driver Number]      INT            NOT NULL,
    [Drivers Lic]        NVARCHAR (255) NULL,
    [First Last]         NVARCHAR (255) NULL,
    [First Name]         NVARCHAR (255) NULL,
    [Insurance Provider] NVARCHAR (255) NULL,
    [Last First]         NVARCHAR (255) NULL,
    [Last Name]          NVARCHAR (255) NULL,
    [Phone Number]       NVARCHAR (255) NULL,
    [Policy Expiration]  NVARCHAR (255) NULL,
    [Policy Number]      FLOAT (53)     NULL,
    [State]              NVARCHAR (255) NULL,
    [Street Address]     NVARCHAR (255) NULL,
    [Zip]                NVARCHAR (255) NULL,
    [upsize_ts]          ROWVERSION     NULL,
    CONSTRAINT [aaaaatblFMPdriverAll_PK] PRIMARY KEY NONCLUSTERED ([Driver Number] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'4/4/2014 8:48:41 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:40 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderBy', @value = N'[tblFMPdriverAll].[Driver Number]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'177', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'築឴絼䑼ﾰ됻仆硣', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Alt Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Alt Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Alt Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꚃग़ퟐ䵞龡쳛❌㣈', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'�됒䒹㺚ょ膇舺', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DOB', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DOB', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㗠랆䣍ﶖ픜෎', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Driver Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'腩⿧㔱䗭溗淾겫', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Drivers Lic', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Drivers Lic', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Drivers Lic';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'嶟՛⒅䜨풼犬㢤', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'First Last', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'First Last', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Last';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ቦ稩኿䅚릵㉇삵�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'First Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'First Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'First Name';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'饰䍺몠乙Ⲳ琎㦦翸', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance Provider', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance Provider', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Insurance Provider';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꥣᑈ䰔伿솎嬐蔀ょ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Last First', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Last First', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'𤋮粓꒫侕容㿛뙮微', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Last Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Last Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Last Name';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'찣ɱ滅䜡䇾皆', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Phone Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Phone Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'뒤媲䞤禺Σ炾Ⳣ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Policy Expiration', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Policy Expiration', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Expiration';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'1785', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쥮벢㝤䠶Ắ䤣楊', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Policy Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Policy Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Policy Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'姵꣕窸䋝肳翍直ઋ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'杣跣䈤붿㿁诼﫜', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'훗澤⹤䉔氰呗艆', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblFMPdriverAll_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblFMPdriverAll', @level2type = N'COLUMN', @level2name = N'Zip';

