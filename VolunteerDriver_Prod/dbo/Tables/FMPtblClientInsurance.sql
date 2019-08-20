CREATE TABLE [dbo].[FMPtblClientInsurance] (
    [ID1]                  INT            IDENTITY (1, 1) NOT NULL,
    [Client Number]        FLOAT (53)     NULL,
    [ID]                   FLOAT (53)     NULL,
    [Insurance End Date]   NVARCHAR (255) NULL,
    [Insurance ID]         FLOAT (53)     NULL,
    [Insurance Start Date] DATETIME       NULL,
    [upsize_ts]            ROWVERSION     NULL,
    CONSTRAINT [aaaaaFMPtblClientInsurance_PK] PRIMARY KEY NONCLUSTERED ([ID1] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ID]
    ON [dbo].[FMPtblClientInsurance]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [Insurance ID]
    ON [dbo].[FMPtblClientInsurance]([Insurance ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'3/26/2014 8:59:39 AM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:32:24 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPtblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'1992', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ₐ姰螄䇭⪁�圽ぢ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ID1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ID1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'◧Ꮦ䝮䇓檘憿孡뚊', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Client Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ﶨ羴뭞䚑䂅衂禂鵫', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㹚螶腂䄻겻�⏐鲞', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance End Date';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'뱄뽧耇䬗檣﹒븁', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance ID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㻮袋烅䁻ಇᓡ㫽', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'mm/dd/yyyy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblClientInsurance', @level2type = N'COLUMN', @level2name = N'Insurance Start Date';

