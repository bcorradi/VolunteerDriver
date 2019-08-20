CREATE TABLE [dbo].[tblRide] (
    [RideID]               INT            IDENTITY (1, 1) NOT NULL,
    [EntryDate]            DATETIME       DEFAULT (getdate()) NULL,
    [ClientID]             INT            NULL,
    [RPickUpAddress]       NVARCHAR (255) NULL,
    [RPickupCity]          NVARCHAR (255) NULL,
    [RPickupZip]           VARCHAR (15)   NULL,
    [County]               INT            NULL,
    [TripPurposeID]        INT            NULL,
    [TripTypeID]           INT            NULL,
    [RideDate]             DATETIME       NULL,
    [RStartTime]           DATETIME       NULL,
    [REndTime]             DATETIME       NULL,
    [RTripTime]            INT            NULL,
    [RDropoffAddress]      NVARCHAR (255) NULL,
    [RDropoffCity]         NVARCHAR (255) NULL,
    [RDropoffZip]          VARCHAR (15)   NULL,
    [RDropoffCounty]       INT            NULL,
    [LoadedMiles]          INT            NULL,
    [UnloadedMiles]        INT            DEFAULT ((0)) NULL,
    [TotalMiles]           INT            NULL,
    [MNDOTAllow]           BIT            DEFAULT ((0)) NOT NULL,
    [ElderlyWaiver]        BIT            DEFAULT ((0)) NOT NULL,
    [Overnight]            BIT            DEFAULT ((0)) NOT NULL,
    [AuthCode]             NVARCHAR (255) NULL,
    [RepID]                NVARCHAR (255) NULL,
    [PickupFee]            MONEY          NULL,
    [NoShowFee]            MONEY          NULL,
    [FMPRIdeID]            INT            NULL,
    [TripID]               INT            NULL,
    [FMPTripID]            INT            NULL,
    [InsuranceID]          INT            NULL,
    [Rate]                 MONEY          NULL,
    [RideNotes]            NTEXT          NULL,
    [SchedulePickupTime]   DATETIME       NULL,
    [ScheduleApptTime]     DATETIME       NULL,
    [Canceled]             BIT            DEFAULT ((0)) NOT NULL,
    [ReimburseRate]        MONEY          NULL,
    [ReimburseRateID]      INT            NULL,
    [Assigned]             BIT            DEFAULT ((0)) NOT NULL,
    [NoShow]               BIT            DEFAULT ((0)) NOT NULL,
    [OldAccessDbRideID]    INT            NULL,
    [RequireIDandAuth]     BIT            DEFAULT ((0)) NOT NULL,
    [upsize_ts]            ROWVERSION     NULL,
    [DriverID]             INT            NULL,
    [SelectCheck]          BIT            CONSTRAINT [DF_tblRide_SelectCheck] DEFAULT ((0)) NULL,
    [UserCreated]          CHAR (30)      CONSTRAINT [DF_tblRide_UserCreated] DEFAULT (suser_sname()) NULL,
    [UserUpdated]          CHAR (30)      CONSTRAINT [DF_tblRide_UserUpdated] DEFAULT (suser_sname()) NULL,
    [DateUpdated]          DATETIME       CONSTRAINT [DF_tblRide_DateUpdated] DEFAULT (getdate()) NULL,
    [DispatchAccessRideID] INT            NULL,
    [RequireAuthCode]      BIT            CONSTRAINT [DF_tblRide_RequireAuthCode] DEFAULT ((0)) NULL,
    [ClientInsuranceID]    INT            NULL,
    [MemberID]             NCHAR (30)     NULL,
    [Lock]                 BIT            CONSTRAINT [DF_tblRide_Lock] DEFAULT ((0)) NULL,
    [FacilityName]         NVARCHAR (255) NULL,
    [SeqNo]                INT            NULL,
    [PUAddressID]          INT            NULL,
    [DOAddressID]          INT            NULL,
    [RPickupZip4]          CHAR (4)       NULL,
    [RDropOffZip4]         CHAR (4)       NULL,
    [FaciltyZip4]          BIT            CONSTRAINT [DF_tblRide_FaciltyZip4] DEFAULT ((0)) NULL,
    [SeniorFitness]        BIT            CONSTRAINT [DF_tblRide_SeniorFitness] DEFAULT ((0)) NULL,
    [rPickupState]         NCHAR (2)      NULL,
    [rDropOffState]        NCHAR (2)      NULL,
    [rCancelReason]        INT            NULL,
    [InEzClaim]            BIT            CONSTRAINT [DF_tblRide_InEzClaim] DEFAULT ((0)) NULL,
    [MnITSWaver]           BIT            CONSTRAINT [DF_tblRide_MnITSWaver] DEFAULT ((0)) NULL,
    [ChildFamNoWaver]      BIT            CONSTRAINT [DF_tblRide_ChildFamNoWaver] DEFAULT ((0)) NULL,
    [AdultServiceWaver]    BIT            CONSTRAINT [DF_tblRide_AdultServiceWaver] DEFAULT ((0)) NULL,
    [PublicHealthNoWaver]  BIT            CONSTRAINT [DF_tblRide_PublicHealthNoWaver] DEFAULT ((0)) NULL,
    [OnGoing]              BIT            CONSTRAINT [DF_tblRide_OnGoing] DEFAULT ((0)) NULL,
    [NewForRides]          BIT            CONSTRAINT [DF_tblRide_NewForRides] DEFAULT ((0)) NULL,
    [RoundTrip]            BIT            CONSTRAINT [DF_tblRide_RoundTrip] DEFAULT ((0)) NULL,
    [OneWay]               BIT            CONSTRAINT [DF_tblRide_OneWay] DEFAULT ((0)) NULL,
    [Waver]                BIT            NULL,
    [MARide]               BIT            NULL,
    [AdultServiceNoWaiver] BIT            NULL,
    [ACClientMedical]      BIT            NULL,
    [PUAddressTypeID]      INT            NULL,
    [DOAddressTypeID]      INT            NULL,
    [EzLinkID]             INT            NULL,
    [ezclaimphysicianid]   INT            NULL,
    CONSTRAINT [aaaaatblRide_PK] PRIMARY KEY NONCLUSTERED ([RideID] ASC),
    CONSTRAINT [FK_tblRide_tblDriver] FOREIGN KEY ([DriverID]) REFERENCES [dbo].[tblDriver] ([DriverID]),
    CONSTRAINT [tblRide_FK00] FOREIGN KEY ([TripTypeID]) REFERENCES [dbo].[ltblTripType] ([TripTypeID]),
    CONSTRAINT [tblRide_FK01] FOREIGN KEY ([TripPurposeID]) REFERENCES [dbo].[ltlbTripPurpose] ([TripPurposeID]),
    CONSTRAINT [tblRide_FK02] FOREIGN KEY ([County]) REFERENCES [dbo].[ltblCounty] ([CountyID]),
    CONSTRAINT [tblRide_FK03] FOREIGN KEY ([ClientID]) REFERENCES [dbo].[tblClient] ([ClientID]),
    CONSTRAINT [tblRide_FK04] FOREIGN KEY ([TripID]) REFERENCES [dbo].[tblTrip] ([TripID])
);


GO
ALTER TABLE [dbo].[tblRide] NOCHECK CONSTRAINT [FK_tblRide_tblDriver];


GO
CREATE CLUSTERED INDEX [_dta_index_tblRide_c_5_274100017__K3]
    ON [dbo].[tblRide]([ClientID] ASC);


GO
CREATE NONCLUSTERED INDEX [AuthCode]
    ON [dbo].[tblRide]([AuthCode] ASC);


GO
CREATE NONCLUSTERED INDEX [ClientID]
    ON [dbo].[tblRide]([ClientID] ASC);


GO
CREATE NONCLUSTERED INDEX [County]
    ON [dbo].[tblRide]([County] ASC);


GO
CREATE NONCLUSTERED INDEX [_dta_index_tblRide_5_274100017__K48_K7]
    ON [dbo].[tblRide]([DriverID] ASC, [County] ASC);


GO
CREATE NONCLUSTERED INDEX [InsuranceID]
    ON [dbo].[tblRide]([InsuranceID] ASC);


GO
CREATE NONCLUSTERED INDEX [ltblTripTypetblRide]
    ON [dbo].[tblRide]([TripTypeID] ASC);


GO
CREATE NONCLUSTERED INDEX [ReimburseRateID]
    ON [dbo].[tblRide]([ReimburseRateID] ASC);


GO
CREATE NONCLUSTERED INDEX [RepID]
    ON [dbo].[tblRide]([RepID] ASC);


GO
CREATE NONCLUSTERED INDEX [RideDate]
    ON [dbo].[tblRide]([RideDate] ASC);


GO
CREATE NONCLUSTERED INDEX [RideID]
    ON [dbo].[tblRide]([RideID] ASC);


GO
CREATE NONCLUSTERED INDEX [tblClienttblRide]
    ON [dbo].[tblRide]([ClientID] ASC);


GO
CREATE NONCLUSTERED INDEX [tblTriptblRide]
    ON [dbo].[tblRide]([TripID] ASC);


GO
CREATE NONCLUSTERED INDEX [TripID]
    ON [dbo].[tblRide]([TripID] ASC);


GO
CREATE NONCLUSTERED INDEX [TripPurposeID]
    ON [dbo].[tblRide]([TripPurposeID] ASC);


GO
CREATE NONCLUSTERED INDEX [TripTypeID]
    ON [dbo].[tblRide]([TripTypeID] ASC);


GO
CREATE NONCLUSTERED INDEX [_dta_index_tblRide_5_274100017__K10D_K3_K29_4_5_6_7_14_15_16_18_19_22_24_25_31_34_35_36_40_48_49_56_58_59_60_62_63_64_65_66_67]
    ON [dbo].[tblRide]([RideDate] DESC, [ClientID] ASC, [TripID] ASC)
    INCLUDE([RPickUpAddress], [RPickupCity], [RPickupZip], [County], [RDropoffAddress], [RDropoffCity], [RDropoffZip], [LoadedMiles], [UnloadedMiles], [ElderlyWaiver], [AuthCode], [RepID], [InsuranceID], [SchedulePickupTime], [ScheduleApptTime], [Canceled], [NoShow], [DriverID], [SelectCheck], [MemberID], [FacilityName], [SeqNo], [PUAddressID], [RPickupZip4], [RDropOffZip4], [FaciltyZip4], [SeniorFitness], [rPickupState], [rDropOffState]);


GO
CREATE NONCLUSTERED INDEX [_dta_index_tblRide_5_274100017__K10_K59_K48_K31_K3_4_5_7_14_15_29_34_35_36_40_49]
    ON [dbo].[tblRide]([RideDate] ASC, [SeqNo] ASC, [DriverID] ASC, [InsuranceID] ASC, [ClientID] ASC)
    INCLUDE([RPickUpAddress], [RPickupCity], [County], [RDropoffAddress], [RDropoffCity], [TripID], [SchedulePickupTime], [ScheduleApptTime], [Canceled], [NoShow], [SelectCheck]);


GO
CREATE NONCLUSTERED INDEX [_dta_index_tblRide_5_274100017__K31_K36_K3_K29_10_11_18_19_24_37_40_56]
    ON [dbo].[tblRide]([InsuranceID] ASC, [Canceled] ASC, [ClientID] ASC, [TripID] ASC)
    INCLUDE([RideDate], [RStartTime], [LoadedMiles], [UnloadedMiles], [AuthCode], [ReimburseRate], [NoShow], [MemberID]);


GO
CREATE NONCLUSTERED INDEX [Insurance_Canceled]
    ON [dbo].[tblRide]([InsuranceID] ASC, [Canceled] ASC, [RideDate] ASC, [NoShow] ASC)
    INCLUDE([ClientID], [LoadedMiles], [UnloadedMiles], [AuthCode], [RepID], [TripID], [ReimburseRate], [MemberID], [SeqNo]);


GO
CREATE STATISTICS [_dta_stat_274100017_3_48]
    ON [dbo].[tblRide]([ClientID], [DriverID]);


GO
CREATE STATISTICS [_dta_stat_274100017_7_3_29]
    ON [dbo].[tblRide]([County], [ClientID], [TripID]);


GO
CREATE STATISTICS [_dta_stat_274100017_48_3_7]
    ON [dbo].[tblRide]([DriverID], [ClientID], [County]);


GO
CREATE STATISTICS [_dta_stat_274100017_29_48_7_3]
    ON [dbo].[tblRide]([TripID], [DriverID], [County], [ClientID]);


GO
CREATE STATISTICS [_dta_stat_274100017_31_48]
    ON [dbo].[tblRide]([InsuranceID], [DriverID]);


GO
CREATE STATISTICS [_dta_stat_274100017_29_48_31]
    ON [dbo].[tblRide]([TripID], [DriverID], [InsuranceID]);


GO
CREATE STATISTICS [_dta_stat_274100017_7_48_31_3]
    ON [dbo].[tblRide]([County], [DriverID], [InsuranceID], [ClientID]);


GO
CREATE STATISTICS [_dta_stat_274100017_3_48_31_29_7_10_59]
    ON [dbo].[tblRide]([ClientID], [DriverID], [InsuranceID], [TripID], [County], [RideDate], [SeqNo]);


GO
CREATE STATISTICS [_dta_stat_274100017_29_31]
    ON [dbo].[tblRide]([TripID], [InsuranceID]);


GO
CREATE STATISTICS [_dta_stat_274100017_36_3_29]
    ON [dbo].[tblRide]([Canceled], [ClientID], [TripID]);


GO
CREATE STATISTICS [_dta_stat_274100017_3_29_31]
    ON [dbo].[tblRide]([ClientID], [TripID], [InsuranceID]);


GO
CREATE STATISTICS [_dta_stat_274100017_3_31_36]
    ON [dbo].[tblRide]([ClientID], [InsuranceID], [Canceled]);


GO
CREATE STATISTICS [_dta_stat_274100017_31_36_29_3]
    ON [dbo].[tblRide]([InsuranceID], [Canceled], [TripID], [ClientID]);


GO
CREATE STATISTICS [_dta_stat_274100017_29_7_31]
    ON [dbo].[tblRide]([TripID], [County], [InsuranceID]);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'3/3/2014 10:47:59 AM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:34:08 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'16551', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'漽Η䘩뾟㯞蘦歝', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RideID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RideID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'Now()', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꨪᚈ禘䱇趵갖޻괣', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Entry Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'頪鋂㑡䏌云훵Þ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Client', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClientID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClientID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'訅Ӕ䐑䜤沿ꕥ㟵卛', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RPickUpAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RPickUpAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickUpAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'뭑॥㪴䐼좥Җ⠯杢', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RPickupCity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RPickupCity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupCity';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쬤⫃䧯䶬즰ዞ玂', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RPickupZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RPickupZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowMultipleValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowValueListEdits', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'귪牫䍱榱騈啃尫', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_BoundColumn', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnCount', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnHeads', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidths', @value = N'0;1440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'111', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_LimitToList', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListRows', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListWidth', @value = N'1440twip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSource', @value = N'SELECT ltblCounty.CountyID, ltblCounty.County
FROM ltblCounty
ORDER BY County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSourceType', @value = N'Table/View/StoredProc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ShowOnlyRowSourceValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'社욄ῢ䩢橹❥䮔', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Trip Purpose', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripPurposeID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripPurposeID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'蓓็ﯪ䢠릲烫㭸', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripTypeID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripTypeID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ߍ癉烞䜞붵紐䈺', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Trip Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_InputMask', @value = N'99/99/00;;_', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RideDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RideDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'홚⶟⛡䝐庙⒆᱆碿', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Ride Start Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_InputMask', @value = N'00:00;0;_', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RStartTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RStartTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'흦�䯔ꞈ錅┸偔', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Ride End Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_InputMask', @value = N'00:00;0;_', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'REndTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'REndTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'REndTime';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'艳䉖䴴⦉畸쪅', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Ride Time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.calculated - date diff start time and end time with date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RTripTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RTripTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RTripTime';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ᅕ钨ೣ䅅嚺᛭뛸ꉹ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Drop Off Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RDropoffAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RDropoffAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'醳ᚉച䡘黌◘', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RDropoffCity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RDropoffCity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCity';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'熒믂接䵮㪤焃ꋮ᳘', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RDropoffZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RDropoffZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffZip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'AllowMultipleValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'AllowValueListEdits', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'殗쵦곮䆟隷㤬ፗ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_BoundColumn', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnCount', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnHeads', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidths', @value = N'0;1440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'111', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_LimitToList', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListRows', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListWidth', @value = N'0twip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSource', @value = N'SELECT ltblCounty.CountyID, ltblCounty.County
FROM ltblCounty
ORDER BY County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSourceType', @value = N'Table/View/StoredProc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RDropoffCounty', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'ShowOnlyRowSourceValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RDropoffCounty', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'鞻흃䓬䫴춞�峤', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Loaded Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.calculated - total miles less unloaded miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'LoadedMiles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'LoadedMiles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'LoadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'┓ꬰ䨈溫❖⪳꧰', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Unloaded Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.Entered', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'UnloadedMiles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'UnloadedMiles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'UnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'侯땝꧅佝螩ꈾ㖰', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Total Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'calculated using pickup and dropoff addresses and google', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TotalMiles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'19', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TotalMiles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TotalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'繻譈혋䊂ﾧ躷悹艶', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'MNDOTAllow', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'20', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'MNDOTAllow', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꂧ㴀╧䈬뚼焩긻퓯', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Elderly Waiver', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ElderlyWaiver', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'21', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ElderlyWaiver', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ElderlyWaiver';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䨯䖲龘蝷昲♖', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Overnight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Overnight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'22', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Overnight', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Overnight';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'컽ꑯ郐䆈鞕歋ૉ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Authorization Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'AuthCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'23', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'AuthCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'AuthCode';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'豅鱯䀮릘๥큍脝', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Rep ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RepID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'24', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RepID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RepID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'惔靵紮䈉䢂઎୦ᛘ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Pickup Fee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$#,##0.00;($#,##0.00)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'PickupFee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'25', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'PickupFee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'PickupFee';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'୧ꗅ書䄂톸ɻᜄ㬞', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'No Show Fee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$#,##0.00;($#,##0.00)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'NoShowFee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'26', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'NoShowFee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShowFee';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'盏荟諐䧢ﲯਟｳꟆ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPRIdeID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'27', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'FMPRIdeID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPRIdeID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'攽뫢妡䱜ꖩ臚�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'28', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'僡복⃟䴠璫つ魎↙', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPTripID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'29', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'FMPTripID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ᒺ㜔ꦨ䰌ƅ셡焁鞢', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'InsuranceID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'30', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'InsuranceID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'＾䄽盓䄉ᒮ戳ю�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$#,##0.00;($#,##0.00)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Rate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'31', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Rate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'촓诋淽䓅炛뀎쐂隤', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RideNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'32', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RideNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'TextFormat', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RideNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⧡읐佭ࢎ⟼Ⱨ⽇', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_InputMask', @value = N'00:00;0;_', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'SchedulePickupTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'33', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'SchedulePickupTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'SchedulePickupTime';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'戺䳚㚱䂗㾥몦䃕', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_InputMask', @value = N'00:00;0;_', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ScheduleApptTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'34', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ScheduleApptTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ScheduleApptTime';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'뼹惋ȫ仕ঞ펔�뙏', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Canceled', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'35', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Canceled', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Canceled';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⡎ԇ뭗䡹冕努ԅ抶', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$#,##0.00;($#,##0.00)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ReimburseRate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'36', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ReimburseRate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'턺숳㫧䑤蠿棽ɼ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ReimburseRateID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'37', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ReimburseRateID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'ReimburseRateID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'霷吽俈䇿䎠წ锦≅', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Assigned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'38', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Assigned', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'Assigned';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㤦鱞䜟䕜첮휹䐵텋', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'NoShow', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'39', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'NoShow', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'NoShow';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ິ钔곈䗦ႄ㪒喲䩦', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'OldAccessDbRideID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'40', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'OldAccessDbRideID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'OldAccessDbRideID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'漙첇䷪�ꈹ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RequireIDandAuth', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'41', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RequireIDandAuth', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ConstraintText', @value = N'You cannot add, change, or delete this record because of the relationship restriction between the tables ''tblTrip'' and ''tblRide''.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRide', @level2type = N'CONSTRAINT', @level2name = N'tblRide_FK04';

