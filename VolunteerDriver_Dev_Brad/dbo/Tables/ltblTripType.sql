CREATE TABLE [dbo].[ltblTripType] (
    [TripTypeID]     INT            IDENTITY (1, 1) NOT NULL,
    [TripType]       NVARCHAR (255) NULL,
    [Active]         BIT            DEFAULT ((-1)) NOT NULL,
    [EntryDate]      DATETIME       DEFAULT (getdate()) NULL,
    [UserCreated]    VARCHAR (25)   CONSTRAINT [DF_ltblTripType_UserCreated] DEFAULT (suser_sname()) NULL,
    [UserUpdated]    VARCHAR (25)   NULL,
    [DateUpdated]    DATETIME       NULL,
    [TripCountValue] INT            NULL,
    CONSTRAINT [aaaaaltblTripType_PK] PRIMARY KEY NONCLUSTERED ([TripTypeID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'3/3/2014 11:00:03 AM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:09 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ltblTripType_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ժ菚写䖇王ᤂ螄磁', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripTypeID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripTypeID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'ltblTripType_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'鞋ﱡ纐䱲몠佊藙㊨', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'ltblTripType_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'金촬㙡䭔檾㸺줎駴', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'ltblTripType_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2130', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'Now()', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쭾㎻䒪折ꃻﾨ똼', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'ltblTripType_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ltblTripType', @level2type = N'COLUMN', @level2name = N'EntryDate';

