CREATE TABLE [dbo].[FMtblClientInsurance_old] (
    [Client Number]        FLOAT (53)     NULL,
    [ID]                   FLOAT (53)     NOT NULL,
    [Insurance End Date]   NVARCHAR (255) NULL,
    [Insurance ID]         FLOAT (53)     NULL,
    [Insurance Start Date] DATETIME       NULL,
    [upsize_ts]            ROWVERSION     NULL,
    CONSTRAINT [aaaaaFMtblClientInsurance_old_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Insurance ID]
    ON [dbo].[FMtblClientInsurance_old]([Insurance ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'3/10/2014 2:08:57 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:08 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMtblClientInsurance_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'1992', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMtblClientInsurance_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMtblClientInsurance_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMtblClientInsurance_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMtblClientInsurance_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'mm/dd/yyyy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMtblClientInsurance_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMtblClientInsurance_old', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';

