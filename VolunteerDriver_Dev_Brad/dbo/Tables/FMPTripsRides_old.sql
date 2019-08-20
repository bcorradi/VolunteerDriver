CREATE TABLE [dbo].[FMPTripsRides_old] (
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
    [Meals]                                 MONEY          NULL,
    [Misc]                                  MONEY          NULL,
    [Trips::Driver Reimbursement Rate Used] FLOAT (53)     NULL,
    [Driver Personal Miles]                 INT            NULL,
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
    [Trips::Meals]                          NVARCHAR (255) NULL,
    [Trips::Pick up Fee]                    NVARCHAR (255) NULL,
    [Trips::Drop Off City]                  NVARCHAR (255) NULL,
    [Trips::End Time]                       DATETIME       NULL,
    [Trips::Misc]                           NVARCHAR (255) NULL,
    [Trips::No Show Fee]                    NVARCHAR (255) NULL,
    [Trips::DropOffZip]                     NVARCHAR (255) NULL,
    [Trips::TripTime_1]                     DATETIME       NULL,
    [Trips::Elderly Wavier]                 NVARCHAR (255) NULL,
    [upsize_ts]                             ROWVERSION     NULL,
    CONSTRAINT [aaaaaFMPTripsRides_old_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Client::MemberID]
    ON [dbo].[FMPTripsRides_old]([Client::MemberID] ASC);


GO
CREATE NONCLUSTERED INDEX [Trips::Rep ID]
    ON [dbo].[FMPTripsRides_old]([Trips::Rep ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'3/3/2014 12:31:47 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:06 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'1029', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'聛巺䇄宾ῦ朮', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'꺡蔠듍䥊ځꃠ﷕嫩', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trip Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trip Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䣻풼脟䣊쎣噔箂蛶', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'mm/dd/yyyy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Entry Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Entry Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Entry Date';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'肪셩䭯暡᫫폭', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance Bill sum', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance Bill sum', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Bill sum';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'腅岘䉾⦚秒젼䚔', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$0.00;-$0.00', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver Reimbursement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver Reimbursement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⏕⎏祦䁄碚㴑궩딼', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver Reimbursement Rate Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver Reimbursement Rate Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'겊餴俽羢顋뛁', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ᾂ令㮸丿䲾ဒ⼌瓰', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver::Last First', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver::Last First', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'Α듣酝伱傱玁戕敲', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver::Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver::Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䨛띸옘䘙쒠痞䈆씞', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver::City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver::City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䬢㢾䀧䵛ᾔ踎', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver::State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver::State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::State';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'腩얒㇧䃓޾䣖边差', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver::Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver::Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'慹㾜乧䁁벦茷ꦧ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'Ⅾ杞䥩䶾㛋鴴õ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'BeginOdom', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'BeginOdom', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'BeginOdom';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'箲홐顕䉗撗꒐厰', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Meals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Meals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'媱㳔燍䊛恧聻箏', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$#,##0.00;($#,##0.00)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Misc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Misc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'纼♠ਁ䰤璨裫ꙹ鍤', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Driver Reimbursement Rate Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Driver Reimbursement Rate Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Driver Reimbursement Rate Used';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'‿䦴좆䄸뚽鄬፿�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver Personal Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver Personal Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ଁ퓍䂍릥荮㩙彀', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EndOdom', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EndOdom', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'EndOdom';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'怖�䶵㦸꤃떕', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver Miles Payable', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'19', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver Miles Payable', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Driver Miles Payable';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⩴髫䷹ඍॎ鑍妚', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Trip Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'20', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Trip Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⼠肇䰓캷ၱ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::TripIDFk', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'21', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::TripIDFk', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripIDFk';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'娬쯠冤䮛�ݖᢌ鸩', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Client', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'22', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Client', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Client';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'剕螜ጺ䄤芔쟒ꤨ�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'23', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'돟植䄋Ḧ繬釞', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'24', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::State', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::State';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'灉袈佣鶒胟簡', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'25', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ၫℎ훌䑼떔壟垙尐', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::Last First', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'26', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::Last First', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Last First';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'苝監䓖ᒼ붗籯臘', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'27', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'酥驑첅䀒㺪浺쥌', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'hh:nn:ss', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::SubtotalTripTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'28', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::SubtotalTripTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::SubtotalTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'鿣躻䑶첬﹉䍖', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance Used::Insurance name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'29', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance Used::Insurance name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Insurance Used::Insurance name';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⧵�䈻Ꭰ◹尹', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Insurance Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'30', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Insurance Used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Insurance Used';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'☺蛫䇪ኤ霆ȃ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::MemberID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'31', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::MemberID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'褃݄甍䟋ⶇ놚뽒㞴', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::Client Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'32', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::Client Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'怇㒇쎺䕵삷⠚댘ꋺ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Two Way?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'33', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Two Way?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Two Way?';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⨗곢滺䊺Һ鉪뮗', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client::County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'34', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client::County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Client::County';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'һ䝐亱䂡澿匥臊', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Pick Up Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'35', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Pick Up Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쌂ᣰ꿍侢ᮀ놹䃫ⷆ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Overnight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'36', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Overnight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2160', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'뼙볇푦䷞鎺Ꮝ㷼', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Trip Purpose', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'37', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Trip Purpose', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Purpose';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'꫐湶浄䋯ඛ苾泅', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Mn/DOT Allowable?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'38', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Mn/DOT Allowable?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Mn/DOT Allowable?';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쵽胉賫䕎ᾆ띔샬', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Pick Up City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'39', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Pick Up City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'薡䌅纅닙仆紉', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Loaded Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'40', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Loaded Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Loaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'廻ꛓ䋾綗몠⧯', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Authorization Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'41', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Authorization Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ﶰⱛ䓲䆤纲훻�ꕜ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'mm/dd/yyyy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Trip Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'42', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Trip Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'嘑ꎖ鸗䪥膖䦪⌢', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::PickUpZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'43', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::PickUpZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::PickUpZip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'믈讞䯜䇥被嶿灲�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Unloaded Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'44', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Unloaded Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Unloaded Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'̺䝲Ḽ랠蚦', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Rep ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'45', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Rep ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'锵Ⴛ目䄦䒀᪷항㍽', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Drop Off Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'46', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Drop Off Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'�㺡喓䭰펫耇촔嫹', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'hh\:nn', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'47', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'즐כּ丈予亿먨', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Meals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'48', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Meals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ﰡ⳯䈶侃⎚傍ᦶ㱒', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Pick up Fee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'49', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Pick up Fee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Pick up Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'崈㯯鬂䔸ኸ᣼职礜', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Drop Off City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'50', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Drop Off City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Drop Off City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'鞛緆䟩쮍㎡෮', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'hh\:nn', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'51', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꦰ헸䑚䂲领龁篾', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Misc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'52', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Misc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'茿⵮侃箱ፒ樣ꅊ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::No Show Fee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'53', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::No Show Fee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::No Show Fee';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'梚궩㱕䴉⚍晻鸠衃', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::DropOffZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'54', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::DropOffZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::DropOffZip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'�ࡖ忳䥉銉䚁⩤', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'hh:nn:ss', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::TripTime_1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'55', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::TripTime_1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::TripTime_1';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'酒㖝뎋䈪蠚≮', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trips::Elderly Wavier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'56', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trips::Elderly Wavier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'FMPTripsRides_old_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FMPTripsRides_old', @level2type = N'COLUMN', @level2name = N'Trips::Elderly Wavier';

