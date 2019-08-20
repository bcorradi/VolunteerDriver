CREATE TABLE [dbo].[tblOldAccessDriverTrips] (
    [ID1]                             INT            IDENTITY (1, 1) NOT NULL,
    [Client Types]                    NVARCHAR (255) NULL,
    [Counties]                        NVARCHAR (255) NULL,
    [InsuranceInsurance]              NVARCHAR (255) NULL,
    [ID]                              FLOAT (53)     NULL,
    [Assigned]                        BIT            DEFAULT ((0)) NOT NULL,
    [County]                          NVARCHAR (255) NULL,
    [Volunteer Driver TripsInsurance] NVARCHAR (255) NULL,
    [Trip Date]                       DATETIME       NULL,
    [Scheduled Pickup Time]           DATETIME       NULL,
    [Scheduled Appointment Time]      DATETIME       NULL,
    [MNDOT Allowable]                 BIT            DEFAULT ((0)) NOT NULL,
    [Client Name]                     NVARCHAR (255) NULL,
    [Pick Up Street Address]          NVARCHAR (255) NULL,
    [Pick Up City]                    NVARCHAR (255) NULL,
    [Destination Street Address]      NVARCHAR (255) NULL,
    [Destination City]                NVARCHAR (255) NULL,
    [Two Way]                         BIT            DEFAULT ((0)) NOT NULL,
    [Client_Phone]                    NVARCHAR (255) NULL,
    [Authorization Number]            NVARCHAR (255) NULL,
    [Rep ID]                          NVARCHAR (255) NULL,
    [Client Type]                     NVARCHAR (255) NULL,
    [Driver Assigned]                 NVARCHAR (255) NULL,
    [Begin Odom]                      FLOAT (53)     NULL,
    [End Odom]                        FLOAT (53)     NULL,
    [Personal Miles]                  FLOAT (53)     NULL,
    [Start Time]                      DATETIME       NULL,
    [End Time]                        DATETIME       NULL,
    [Meals]                           MONEY          NULL,
    [Misc]                            MONEY          NULL,
    [Overnight]                       BIT            DEFAULT ((0)) NOT NULL,
    [Leg 1 Loaded]                    FLOAT (53)     NULL,
    [Leg 1 Unloaded]                  FLOAT (53)     NULL,
    [Leg 2 Loaded]                    FLOAT (53)     NULL,
    [Leg 2 Unloaded]                  FLOAT (53)     NULL,
    [Leg 3 Loaded]                    NVARCHAR (255) NULL,
    [Leg 3 Unloaded]                  NVARCHAR (255) NULL,
    [Leg 4 Loaded]                    NVARCHAR (255) NULL,
    [Leg 4 Unloaded]                  NVARCHAR (255) NULL,
    [Leg 1 Start Time]                DATETIME       NULL,
    [Leg 1 End Time]                  DATETIME       NULL,
    [Leg 2 Start Time]                DATETIME       NULL,
    [Leg 2 End Time]                  DATETIME       NULL,
    [Leg 3 Start Time]                NVARCHAR (255) NULL,
    [Leg 3 End Time]                  NVARCHAR (255) NULL,
    [Leg 4 Start Time]                NVARCHAR (255) NULL,
    [Leg 4 End Time]                  NVARCHAR (255) NULL,
    [Rate]                            FLOAT (53)     NULL,
    [Notes]                           NVARCHAR (255) NULL,
    [Cancelled]                       BIT            DEFAULT ((0)) NOT NULL,
    [No Show]                         BIT            DEFAULT ((0)) NOT NULL,
    [PU_Zip]                          NVARCHAR (255) NULL,
    [DO_ZIp]                          NVARCHAR (255) NULL,
    [Member_ID]                       NVARCHAR (255) NULL,
    [EW]                              BIT            DEFAULT ((0)) NOT NULL,
    [upsize_ts]                       ROWVERSION     NULL,
    CONSTRAINT [aaaaatblOldAccessDriverTrips_PK] PRIMARY KEY NONCLUSTERED ([ID1] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ID]
    ON [dbo].[tblOldAccessDriverTrips]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [Member_ID]
    ON [dbo].[tblOldAccessDriverTrips]([Member_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [Rep ID]
    ON [dbo].[tblOldAccessDriverTrips]([Rep ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'4/29/2014 8:12:23 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:47 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderBy', @value = N'[tblOldAccessDriverTrips].[Trip Date] DESC', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'4662', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⠅ᴊឳ䦽撑ॊᨐ䅩', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ID1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ID1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID1';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ᔝ溽굥使⦝䍦㪙ᐪ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client Types', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client Types', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Types';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'뭻樒ু䞗储咯ᙷ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Counties', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Counties', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Counties';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'르�㴴䰘ꀞ䢮', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'InsuranceInsurance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'InsuranceInsurance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'InsuranceInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⨥�鄎䟷Ᾱ讎솗', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'땳ὣﷀ䨻엺䦓', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Assigned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Assigned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'욾ᨅ乕劲裁畇◾', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'캲ꗧ⇽䮊놟듲㸾', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Volunteer Driver TripsInsurance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Volunteer Driver TripsInsurance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Volunteer Driver TripsInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N' ς춫䒿蒲킠ꆽ웨', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'dd-mmm-yy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Trip Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Trip Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Trip Date';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'궠⿛꣟䩥㚮嗂臜佻', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Short Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Scheduled Pickup Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Scheduled Pickup Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Pickup Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ൈﴀ㊗䠂晴괽ॳ娂', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Short Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Scheduled Appointment Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Scheduled Appointment Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Scheduled Appointment Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꕁꦪ姸䠨粷⎕ٰ娩', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'MNDOT Allowable', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'MNDOT Allowable', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'MNDOT Allowable';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'1965', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'駀㑾䵔颺逾', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Name';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'會㨎䒷펺寋౞츒', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Pick Up Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Pick Up Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'볦仑≘䋢ꂧЯ૖', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Pick Up City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Pick Up City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Pick Up City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'཯ᡖ鋫䗒⒉둣쇬', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Destination Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Destination Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination Street Address';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'녌ုc䇌ᶋ顾籴槒', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Destination City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Destination City', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Destination City';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쨺埭謹䓀ಂ￨鯒', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Two Way', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Two Way', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Two Way';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'Ꞹ뗱䪬ಫ錇갋�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client_Phone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client_Phone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'阈ᾌ䋑붧럕愾ݧ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Authorization Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'19', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Authorization Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Authorization Number';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⨶铥소䰓䚜퀽糠訧', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Rep ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'20', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Rep ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rep ID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'젖盂ނ䒣悵䃜覌', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Client Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'21', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Client Type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Client Type';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⏳鑧愻䘷膞庖␌', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Driver Assigned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'22', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Driver Assigned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Driver Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'홒ַ삎䅤쒦桸ᶉ崯', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Begin Odom', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'23', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Begin Odom', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Begin Odom';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꨎউ匜䬥䢄쀗䜑�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'End Odom', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'24', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'End Odom', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Odom';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'덄ﵓ䑙獵搵奯찠', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Personal Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'25', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Personal Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Personal Miles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'菋︻ߜ䁺ᆙՋ⒏㿣', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'dd-mmm-yy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'26', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'갻⣾齄䁥岞櫍嬎೥', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'dd-mmm-yy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'27', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㑘蠕䀺검喯鿧殏', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$#,##0.00;($#,##0.00)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Meals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'28', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Meals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Meals';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'圄⡮쨽䐱뚒脽惻闖', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$#,##0.00;($#,##0.00)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Misc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'29', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Misc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Misc';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'抩솷㝝䘅䂺饰뾶勉', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Overnight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'30', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Overnight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'넋艄䃻ӿ冏', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 1 Loaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'31', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 1 Loaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'붭⍹귈佌ﶖ岔皭', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 1 Unloaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'32', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 1 Unloaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㵰괕ﰝ侎ꚦ塢晑', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 2 Loaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'33', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 2 Loaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'欢堽萁䲅鞡趝僻ﶇ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 2 Unloaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'34', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 2 Unloaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쳷뮹녌䂅ꆎ蚿㡔㋐', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 3 Loaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'35', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 3 Loaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'碚ꩱ会⾷ꍌＵ闉', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 3 Unloaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'36', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 3 Unloaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'滍ἶ훮䟓疹⍙�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 4 Loaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'37', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 4 Loaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Loaded';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쨪㌇緖䘥袻⊂◳츝', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 4 Unloaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'38', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 4 Unloaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Unloaded';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'燕摹㈲乤骚↦恸∠', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'dd-mmm-yy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 1 Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'39', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 1 Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꢪ뢨ॣ䒈侐⽱ᔻ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'dd-mmm-yy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 1 End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'40', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 1 End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 1 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'倍啀ྖ䎵溍짱琭别', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'dd-mmm-yy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 2 Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'41', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 2 Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䵼氆쉊䘧튘遂㵶鎱', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'dd-mmm-yy', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 2 End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'42', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 2 End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 2 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'᲋䧷㊆䣼芍ℸ㇨뽾', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 3 Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'43', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 3 Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ₚꐪ빂䔼瞄룦ꢺ慽', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 3 End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'44', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 3 End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 3 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㷦�ꤟ丠宖쓨梡㈏', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 4 Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'45', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 4 Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 Start Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'♠畄㺨䥻ⲖᐱᒠΨ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Leg 4 End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'46', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Leg 4 End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Leg 4 End Time';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⢖౭믶䖴嶾ꮮ꯭�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'General Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Rate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'47', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Rate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'恠㸘瞲䊮�ᝑ栳掠', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Notes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'48', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Notes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㢞졇縆丸殇ꛢ嵅沕', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Cancelled', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'49', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Cancelled', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Cancelled';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'፟ﺬ䧗䦜燺퐏�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'No Show', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'50', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'No Show', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'No Show';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'呏﨩ꬿ䰦ꦤ萸꺵砦', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'PU_Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'51', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'PU_Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'PU_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'붰蕡䙉울⃜쫹䥦', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DO_ZIp', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'52', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DO_ZIp', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'DO_ZIp';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'┦먔䦷㮴蘿ኪ墙', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'@', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Member_ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'53', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Member_ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'Member_ID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'毢㡾➫䣲Ჟ葊쒴䖯', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'54', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EW', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblOldAccessDriverTrips_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblOldAccessDriverTrips', @level2type = N'COLUMN', @level2name = N'EW';

