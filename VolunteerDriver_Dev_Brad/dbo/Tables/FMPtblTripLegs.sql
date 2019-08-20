CREATE TABLE [dbo].[FMPtblTripLegs] (
    [ID]                             INT            IDENTITY (1, 1) NOT NULL,
    [Trip Number]                    NVARCHAR (255) NULL,
    [Entry Date]                     DATETIME       NULL,
    [Driver Reimbursement]           MONEY          NULL,
    [Insurance Bill]                 MONEY          NULL,
    [TripIDFk]                       FLOAT (53)     NULL,
    [User]                           NVARCHAR (255) NULL,
    [Driver]                         INT            NULL,
    [Driver::Last First]             NVARCHAR (255) NULL,
    [Driver::Street Address]         NVARCHAR (255) NULL,
    [Driver::City]                   NVARCHAR (255) NULL,
    [Driver::State]                  NVARCHAR (255) NULL,
    [Driver::Zip]                    NVARCHAR (255) NULL,
    [Client]                         NVARCHAR (255) NULL,
    [Client::Last First]             NVARCHAR (255) NULL,
    [Client::Street Address]         NVARCHAR (255) NULL,
    [Client::City]                   NVARCHAR (255) NULL,
    [Client::State]                  NVARCHAR (255) NULL,
    [Client::Zip]                    FLOAT (53)     NULL,
    [Client::Insurance]              NVARCHAR (255) NULL,
    [Client::County]                 NVARCHAR (255) NULL,
    [Insurance Used::Rate]           FLOAT (53)     NULL,
    [Client::Client Type]            NVARCHAR (255) NULL,
    [Insurance Used::Insurance name] NVARCHAR (255) NULL,
    [Insurance Used]                 FLOAT (53)     NULL,
    [Trip Date]                      DATETIME       NULL,
    [Start Time]                     DATETIME       NULL,
    [End Time]                       DATETIME       NULL,
    [TripTime_1]                     DATETIME       NULL,
    [Overnight]                      NVARCHAR (255) NULL,
    [Pick Up Address]                NVARCHAR (255) NULL,
    [Drop Off Address]               NVARCHAR (255) NULL,
    [Pick Up City]                   NVARCHAR (255) NULL,
    [Drop Off City]                  NVARCHAR (255) NULL,
    [Loaded Miles]                   FLOAT (53)     NULL,
    [Trip Purpose]                   NVARCHAR (255) NULL,
    [Unloaded Miles]                 FLOAT (53)     NULL,
    [Two Way?]                       NVARCHAR (255) NULL,
    [Mn/DOT Allowable?]              NVARCHAR (255) NULL,
    [SubtotalTripTime]               DATETIME       NULL,
    [Pick up Fee]                    NVARCHAR (255) NULL,
    [Authorization Number]           NVARCHAR (255) NULL,
    [Meals]                          FLOAT (53)     NULL,
    [Misc]                           NVARCHAR (255) NULL,
    [No Show Fee]                    NVARCHAR (255) NULL,
    [Rep ID]                         NVARCHAR (255) NULL,
    [Driver Reimbursement Rate Used] FLOAT (53)     NULL,
    [upsize_ts]                      ROWVERSION     NULL,
    CONSTRAINT [aaaaaFMPtblTripLegs_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Rep ID]
    ON [dbo].[FMPtblTripLegs]([Rep ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'3/21/2014 8:17:14 AM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:32:44 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Filter', @value = N'([FMPtblTripLegs].[Driver] Is Null)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'16520', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'횳肔쿌䤴ꪭ꛳癎', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'休镣伜喜ꮉൌᔴ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trip Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trip Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'둴檧㧻䔡ᦾĔᐪ䭋', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'mm/dd/yyyy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Entry Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Entry Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'᧶쒻係뮤㞄蛝쁫', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$0.00;-$0.00', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver Reimbursement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver Reimbursement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'悁즹鍈䌤䚁䒨�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$0.00;-$0.00', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance Bill', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance Bill', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Bill';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'甭廌㱐䴰芈敐Ⱅ쬠', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripIDFk', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripIDFk', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ヶ耋妭䬈䶷꘰๨', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'User', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'User', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'鮂䳯ᐰ䎼᎗ঔ裔', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'宒挻叐䚉梃儭㲎', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver::Last First', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver::Last First', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'튙띨䏓ࢧ纰艸兜', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver::Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver::Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'苢Ⴆሞ䁗ƹ闧꨾', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver::City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver::City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'佻滗⇫乼䖍ꈩ쉴', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver::State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver::State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ঀ쇍ܣ䟴Ⲻ㉐女톏', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver::Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver::Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'瓅턋ꨝ䲡綩曓쁋㻤', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'燪箤䂣䳸螲ᄁ䰗贊', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::Last First', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::Last First', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'똥紨龨䅲鮂هホ氢', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㸌咎䲲䋼ⶀỘ冢趞', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'駀渷盀䯯炮ሉⶲ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䤊侅꽗䃭纣䗛擨', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'븷㕛᭸䧄➊ᆭ஀ﴕ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::Insurance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'19', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::Insurance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'瘳埆䰈̜䒂姁', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'20', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'囧灒侕ᒃ㓇⮅韃', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance Used::Rate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'21', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance Used::Rate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Rate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'緝祖ష伷뚅ᒓꎀベ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::Client Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'22', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::Client Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'獖ᾳ䓿떧❯ꭦ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance Used::Insurance name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'23', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance Used::Insurance name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'퍖鰇ᒈ䭯햪쯩ﰔ詟', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'24', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ﻹ�誅䍢꒷윧ᓬ⳩', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'mm/dd/yyyy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trip Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'25', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trip Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꯋ훁�䟁쮬绺㗴㾛', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'hh\:nn', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'26', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'닀演�亊꺴ꅜ찈쨻', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'hh\:nn', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'27', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꖐ䒇䒺沅䱥�勃', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'hh:nn:ss', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripTime_1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'28', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripTime_1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ᶬ旵쇞䝣ꎻ搀㿚ᗴ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Overnight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'29', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Overnight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'脶鋈足䐐ޫ钡羙', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Pick Up Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'30', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Pick Up Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'呪�퀾䒳ꖎ꼂溤눥', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Drop Off Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'31', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Drop Off Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'垺鬋俚햅䵝꾪䃍', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Pick Up City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'32', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Pick Up City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'痠풨쿎䄛ঢᫀ鶮䝙', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Drop Off City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'33', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Drop Off City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'纪�쓍䇆⺒験頟췍', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Loaded Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'34', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Loaded Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⩤蕞䋴趥곴', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trip Purpose', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'35', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trip Purpose', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'磒爧䲂ᆐ�ᥥ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Unloaded Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'36', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Unloaded Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䶾읝వ䭁ᢃ立ﭨ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Two Way?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'37', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Two Way?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㏥犮糑䄗�蓫᪊캞', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Mn/DOT Allowable?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'38', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Mn/DOT Allowable?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䀛墸獽䴙䶴ﲼ쒭膄', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'hh:nn:ss', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'SubtotalTripTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'39', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'SubtotalTripTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㵘᠟⊍䲷잒嬲면溗', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Pick up Fee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'40', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Pick up Fee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N' 卹䓿鞞ꕥп', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Authorization Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'41', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Authorization Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'꿳鏍㤺䆛セ襗ꇷ⥞', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Meals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'42', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Meals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쯶뒥鳯䍴⮧�艓', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Misc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'43', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Misc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㦗竾䫈䢕څ뜟ϭ郼', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'No Show Fee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'44', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'No Show Fee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'왃꺌萚仏䒬脂赪ꇹ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Rep ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'45', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Rep ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䈵暷跥䧂ު෪', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver Reimbursement Rate Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'46', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver Reimbursement Rate Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTripLegs_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTripLegs', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';

