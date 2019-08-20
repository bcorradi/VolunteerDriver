CREATE TABLE [dbo].[FMPtblTrips] (
    [ID]                                    INT            IDENTITY (1, 1) NOT NULL,
    [Trip Number]                           NVARCHAR (255) NULL,
    [Entry Date]                            DATETIME       NULL,
    [Insurance Bill sum]                    FLOAT (53)     NULL,
    [Driver Reimbursement]                  MONEY          NULL,
    [Driver Reimbursement Rate Used]        FLOAT (53)     NULL,
    [Driver]                                INT            NULL,
    [Driver::Last First]                    NVARCHAR (255) NULL,
    [Driver::Street Address]                NVARCHAR (255) NULL,
    [Driver::City]                          NVARCHAR (255) NULL,
    [Driver::State]                         NVARCHAR (255) NULL,
    [Driver::Zip]                           NVARCHAR (255) NULL,
    [Driver Miles]                          FLOAT (53)     NULL,
    [BeginOdom]                             FLOAT (53)     NULL,
    [Meals]                                 FLOAT (53)     NULL,
    [Misc]                                  NVARCHAR (255) NULL,
    [Trips::Driver Reimbursement Rate Used] FLOAT (53)     NULL,
    [Driver Personal Miles]                 NVARCHAR (255) NULL,
    [EndOdom]                               FLOAT (53)     NULL,
    [Driver Miles Payable]                  FLOAT (53)     NULL,
    [Trips::Trip Number]                    INT            NULL,
    [Trips::TripIDFk]                       FLOAT (53)     NULL,
    [Trips::Client]                         INT            NULL,
    [Client::City]                          NVARCHAR (255) NULL,
    [Client::State]                         NVARCHAR (255) NULL,
    [Client::Zip]                           FLOAT (53)     NULL,
    [Client::Last First]                    NVARCHAR (255) NULL,
    [Client::Street Address]                NVARCHAR (255) NULL,
    [Trips::SubtotalTripTime]               DATETIME       NULL,
    [Insurance Used::Insurance name]        NVARCHAR (255) NULL,
    [Trips::Insurance Used]                 FLOAT (53)     NULL,
    [Client::MemberID]                      NVARCHAR (255) NULL,
    [Client::Client Type]                   NVARCHAR (255) NULL,
    [Trips::Two Way?]                       NVARCHAR (255) NULL,
    [Client::County]                        NVARCHAR (255) NULL,
    [Trips::Pick Up Address]                NVARCHAR (255) NULL,
    [Trips::Overnight]                      NVARCHAR (255) NULL,
    [Trips::Trip Purpose]                   NVARCHAR (255) NULL,
    [Trips::Mn/DOT Allowable?]              NVARCHAR (255) NULL,
    [Trips::Pick Up City]                   NVARCHAR (255) NULL,
    [Trips::Loaded Miles]                   FLOAT (53)     NULL,
    [Trips::Authorization Number]           NVARCHAR (255) NULL,
    [Trips::Trip Date]                      DATETIME       NULL,
    [Trips::PickUpZip]                      NVARCHAR (255) NULL,
    [Trips::Unloaded Miles]                 FLOAT (53)     NULL,
    [Trips::Rep ID]                         NVARCHAR (255) NULL,
    [Trips::Drop Off Address]               NVARCHAR (255) NULL,
    [Trips::Start Time]                     DATETIME       NULL,
    [Trips::Meals]                          FLOAT (53)     NULL,
    [Trips::Pick up Fee]                    NVARCHAR (255) NULL,
    [Trips::Drop Off City]                  NVARCHAR (255) NULL,
    [Trips::End Time]                       DATETIME       NULL,
    [Trips::Misc]                           NVARCHAR (255) NULL,
    [Trips::No Show Fee]                    NVARCHAR (255) NULL,
    [Trips::DropOffZip]                     NVARCHAR (255) NULL,
    [Trips::TripTime_1]                     DATETIME       NULL,
    [Trips::Elderly Wavier]                 NVARCHAR (255) NULL,
    [upsize_ts]                             ROWVERSION     NULL,
    CONSTRAINT [aaaaaFMPtblTrips_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Client::MemberID]
    ON [dbo].[FMPtblTrips]([Client::MemberID] ASC);


GO
CREATE NONCLUSTERED INDEX [Trips::Rep ID]
    ON [dbo].[FMPtblTrips]([Trips::Rep ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'3/21/2014 8:17:44 AM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:04 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderBy', @value = N'[FMPtblTrips].[Driver]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'16532', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ᥝ�㜝䬋ឍ矴킔⹌', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ൊ졥룛䀗ᢅ쏢⢮燐', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trip Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trip Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꢁ䛏㬤䷖鲹儖逜䔽', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'mm/dd/yyyy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Entry Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Entry Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'똅蘂ぜ䕕⦱ꗬ됝雛', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance Bill sum', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance Bill sum', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'鹠煈ꢝ䦆疿爇泬楮', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$0.00;-$0.00', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver Reimbursement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver Reimbursement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'᛼㪷墺䀏⎾⟙൉▭', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver Reimbursement Rate Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver Reimbursement Rate Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'袯镨⪢䕣뢟⣒氊돎', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䫂ᖔ䁈䝶힗ꃚ鱉嬉', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver::Last First', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver::Last First', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'꽄쪍牌䯎䦂㬼덋儬', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver::Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver::Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'骿尗壒䚓龶闍∲', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver::City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver::City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쵣礮꺡䈎澂柮ꔧ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver::State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver::State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꥦ釣옫䉨즔꩕ᨡᐔ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver::Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver::Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䟷�盒䬰ꊛ텞敉歽', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쐲ㅄ䈃梗撜楃쉚', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'BeginOdom', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'BeginOdom', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'褡懰�䡂ꢪৣ䬵䳑', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Meals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Meals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㄁ㄚ珡䧀澍ষ⡁과', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Misc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Misc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'袝ꍇ滐䋥厗遢朢ບ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Driver Reimbursement Rate Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Driver Reimbursement Rate Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'誒㽰賩亩掣ꉠ�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver Personal Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver Personal Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'袊㘺馠伂䦳삆⧲瓋', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EndOdom', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EndOdom', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㔱狵홪䒐ザ秪嗌', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver Miles Payable', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'19', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver Miles Payable', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'Ṽ첊ᔳ䉝垚뗨瀼', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Trip Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'20', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Trip Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'�洎䁲캮掃杠纺', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::TripIDFk', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'21', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::TripIDFk', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'懹佲骽䣰躖馗铙㯛', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Client', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'22', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Client', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'駦鏮九誢침�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'23', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ᘂኈ电䰾ꊀ콴৆ກ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'24', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'片悎ᐍ䏹ខ謕묐', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'25', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'错衳䘀䲶Უ旰ҧ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::Last First', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'26', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::Last First', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㟏啲孂䵕↡ꏆ想', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'27', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'찖ᄖ塸䙭鲼�ꅅ埜', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'hh:nn:ss', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::SubtotalTripTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'28', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::SubtotalTripTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'╾눷䫹ꆼ懀牤', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance Used::Insurance name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'29', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance Used::Insurance name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ၕ쁳腟䜐羂甚쏮', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Insurance Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'30', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Insurance Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'�늺䡶䓺蟦ﱹႊ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::MemberID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'31', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::MemberID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'幈珪䢜窔ꥷ娢汅', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::Client Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'32', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::Client Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'厴莯䝲ﲄꋢ왁୞', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Two Way?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'33', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Two Way?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䠹络䶺趬읆埰갤', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'34', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'鲢愵ﻳ串ʡॣ᱅葳', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Pick Up Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'35', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Pick Up Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꗹ럷䂠ᦨ᾿녫逋', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Overnight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'36', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Overnight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'뗊㼄픆䣰殳̠窕䃃', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Trip Purpose', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'37', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Trip Purpose', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㯐凉䞞侜뚝ੋ⁽䕾', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Mn/DOT Allowable?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'38', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Mn/DOT Allowable?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'倿伀뎎㲈', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Pick Up City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'39', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Pick Up City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⇝륇싖且⦔㋕嘤椾', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Loaded Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'40', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Loaded Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'춠䓭͖䧦䂪寴엏�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Authorization Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'41', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Authorization Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'稞焍ၒ䱦졟ƶ骐', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'mm/dd/yyyy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Trip Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'42', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Trip Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㋾焈鏾䮋튑豌뎎₲', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::PickUpZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'43', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::PickUpZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'崒㩆꽀䘑甓뉽', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Unloaded Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'44', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Unloaded Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'巀杫ꎽ䀶嶈უꅅ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Rep ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'45', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Rep ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'Ҋ꼟⪞䪪ন₱䆹', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Drop Off Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'46', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Drop Off Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'៍纚莂䢘亳储ꏖ镛', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'hh\:nn', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'47', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'꩑鮼栜䕔ﾘ徻找泣', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Meals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'48', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Meals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'߃箇굅俰ꢫ듍읢ቼ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Pick up Fee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'49', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Pick up Fee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'怶蠋ᓴ䟾⢐⋮跎', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Drop Off City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'50', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Drop Off City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'襘㼻놖䖍治肕韁', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'hh\:nn', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'51', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䟄提坏䇦㲦崼뼠熎', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Misc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'52', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Misc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'蒕煎䠟Ⲋ헱�⮎', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::No Show Fee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'53', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::No Show Fee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䏞ꫝ♑䋝岕聨찊䥭', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::DropOffZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'54', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::DropOffZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'椥⃇獱䓟ﻮ蜖饶', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'hh:nn:ss', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::TripTime_1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'55', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::TripTime_1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'楲⎮铋䌋⒙ꮶ텙뤰', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Elderly Wavier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'56', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Elderly Wavier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPtblTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPtblTrips', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';

