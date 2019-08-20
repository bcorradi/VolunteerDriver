CREATE TABLE [dbo].[tblTrip] (
    [TripID]                   INT           IDENTITY (1, 1) NOT NULL,
    [EntryDate]                DATETIME      DEFAULT (getdate()) NULL,
    [DriverReimbursement]      MONEY         NULL,
    [InsuranceBill]            MONEY         NULL,
    [DriverID]                 INT           NULL,
    [TripBegOdometer]          INT           NULL,
    [TripEndOdometer]          INT           NULL,
    [TripMilesTotal]           INT           NULL,
    [TripDriverPersonalMiles]  INT           NULL,
    [TripDriverMilesPayable]   INT           NULL,
    [TripDriverMeals]          MONEY         CONSTRAINT [DF_tblTrip_TripDriverMeals] DEFAULT ((0)) NULL,
    [TripDriverMisc]           MONEY         CONSTRAINT [DF_tblTrip_TripDriverMisc] DEFAULT ((0)) NULL,
    [TripNotes]                NTEXT         NULL,
    [TripCanceled]             BIT           DEFAULT ((0)) NOT NULL,
    [FMPTripID]                INT           NULL,
    [DriverRateID]             INT           NULL,
    [DriverRate]               MONEY         NULL,
    [DriverAddressID]          INT           NULL,
    [TripStartTime]            DATETIME      NULL,
    [TripEndTime]              DATETIME      NULL,
    [DateReceived]             DATETIME      NULL,
    [PaymentMadeDate]          DATETIME      NULL,
    [Paid]                     BIT           DEFAULT ((0)) NOT NULL,
    [PaidDate]                 DATETIME      NULL,
    [MaxReimburse]             INT           NULL,
    [AdjustedInsuranceReimAmt] MONEY         NULL,
    [AllowMeals]               BIT           DEFAULT ((0)) NOT NULL,
    [AllowUnloadedMiles]       BIT           DEFAULT ((0)) NOT NULL,
    [upsize_ts]                ROWVERSION    NULL,
    [UserCreated]              CHAR (30)     CONSTRAINT [DF_tblTrip_UserCreated] DEFAULT (suser_sname()) NULL,
    [UserUpdated]              CHAR (30)     CONSTRAINT [DF_tblTrip_UserUpdated] DEFAULT (suser_sname()) NULL,
    [DateUpdated]              DATETIME      CONSTRAINT [DF_tblTrip_DateUpdated] DEFAULT (getdate()) NULL,
    [DispatchAccessRideID]     INT           NULL,
    [TripTypeId]               INT           NULL,
    [TripIdOrgDup]             INT           NULL,
    [TripdIdOrgSplit]          INT           NULL,
    [TripIdNewSplit]           INT           NULL,
    [Lock]                     BIT           CONSTRAINT [DF_tblTrip_Lock] DEFAULT ((0)) NULL,
    [PendDrConf]               BIT           CONSTRAINT [DF_tblTrip_PendDrConf] DEFAULT ((0)) NULL,
    [RequestReceived]          DATE          NULL,
    [DateReqRec]               DATETIME      NULL,
    [EZClaimClaimID]           INT           NULL,
    [BillingCounty]            INT           NULL,
    [PreAuthMeals]             BIT           CONSTRAINT [DF_tblTrip_PreAuthMeals] DEFAULT ((0)) NULL,
    [tCancelReason]            INT           NULL,
    [unloadedreasonid]         INT           NULL,
    [ElderlyWaiver]            BIT           DEFAULT ((0)) NOT NULL,
    [Overnight]                BIT           DEFAULT ((0)) NULL,
    [SeniorFitness]            BIT           DEFAULT ((0)) NULL,
    [MARide]                   BIT           DEFAULT ((0)) NULL,
    [Waver]                    BIT           DEFAULT ((0)) NULL,
    [ChildFamNoWaver]          BIT           DEFAULT ((0)) NULL,
    [AdultServiceNoWaiver]     BIT           DEFAULT ((0)) NULL,
    [PublicHealthNoWaver]      BIT           DEFAULT ((0)) NULL,
    [ACClientMedical]          BIT           DEFAULT ((0)) NULL,
    [OnGoing]                  BIT           DEFAULT ((0)) NULL,
    [NewForRides]              BIT           DEFAULT ((0)) NULL,
    [RoundTrip]                BIT           DEFAULT ((0)) NULL,
    [OneWay]                   BIT           DEFAULT ((0)) NULL,
    [MIPOnly]                  BIT           DEFAULT ((0)) NULL,
    [WaitTime]                 INT           DEFAULT ((0)) NULL,
    [ActualWaitTime]           INT           DEFAULT ((0)) NULL,
    [DriverContactNotes]       VARCHAR (MAX) NULL,
    [Worker]                   VARCHAR (MAX) NULL,
    CONSTRAINT [aaaaatblTrip_PK] PRIMARY KEY NONCLUSTERED ([TripID] ASC),
    CONSTRAINT [tblTrip_FK00] FOREIGN KEY ([DriverID]) REFERENCES [dbo].[tblDriver] ([DriverID])
);


GO
CREATE NONCLUSTERED INDEX [DriverAddressID]
    ON [dbo].[tblTrip]([DriverAddressID] ASC);


GO
CREATE NONCLUSTERED INDEX [DriverID]
    ON [dbo].[tblTrip]([DriverID] ASC);


GO
CREATE NONCLUSTERED INDEX [_dta_index_tblTrip_5_1029578706__K1_39]
    ON [dbo].[tblTrip]([TripID] ASC)
    INCLUDE([PendDrConf]);


GO
CREATE NONCLUSTERED INDEX [tblDrivertblTrip]
    ON [dbo].[tblTrip]([DriverID] ASC);


GO
CREATE NONCLUSTERED INDEX [TripID]
    ON [dbo].[tblTrip]([TripID] ASC);


GO
CREATE NONCLUSTERED INDEX [_dta_index_tblTrip_5_1029578706__K1_14_34_39]
    ON [dbo].[tblTrip]([TripID] ASC)
    INCLUDE([TripCanceled], [TripTypeId], [PendDrConf]);


GO
CREATE NONCLUSTERED INDEX [_dta_index_tblTrip_5_1029578706__K1_11_12_21_27_28_32_34_43]
    ON [dbo].[tblTrip]([TripID] ASC)
    INCLUDE([TripDriverMeals], [TripDriverMisc], [DateReceived], [AllowMeals], [AllowUnloadedMiles], [DateUpdated], [TripTypeId], [BillingCounty]);


GO
CREATE NONCLUSTERED INDEX [TripDIDOrgSplitNonCluster]
    ON [dbo].[tblTrip]([TripdIdOrgSplit] ASC)
    INCLUDE([TripID]);


GO
CREATE STATISTICS [_dta_stat_1029578706_39_1]
    ON [dbo].[tblTrip]([PendDrConf], [TripID]);


GO
CREATE STATISTICS [_dta_stat_1029578706_1_34]
    ON [dbo].[tblTrip]([TripID], [TripTypeId]);


GO
CREATE STATISTICS [_dta_stat_1029578706_43_34]
    ON [dbo].[tblTrip]([BillingCounty], [TripTypeId]);


GO
CREATE STATISTICS [_dta_stat_1029578706_43_1]
    ON [dbo].[tblTrip]([BillingCounty], [TripID]);


GO
CREATE STATISTICS [_dta_stat_1029578706_1_34_43]
    ON [dbo].[tblTrip]([TripID], [TripTypeId], [BillingCounty]);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'3/3/2014 10:47:29 AM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:36 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'8489', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'੽珻槳䳦䮳씓楊懮', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2130', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'Now()', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⥁ᣎL䷱⎧ܒ㌧', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Entry Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⇜豉荄你ઑ洮餹', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Driver Reimbursement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stored calculation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$#,##0.00;($#,##0.00)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DriverReimbursement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DriverReimbursement', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverReimbursement';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⯳ۋ�䳛ʿ荪칓㉍', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Insurance Bill', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stored calculation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$#,##0.00;($#,##0.00)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'InsuranceBill', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'InsuranceBill', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'InsuranceBill';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㋥柂�䫾莎Żஓ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Driver', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DriverID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DriverID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ᝃ懏䆿䎈媺㯽視', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Begin Odometer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripBegOdometer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripBegOdometer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripBegOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'핚ᰙ䬤பઙ秃', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'End Odometer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripEndOdometer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripEndOdometer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndOdometer';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꊁ髤쫀䅅筞륳잒', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Driver Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stored calculation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripMilesTotal', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripMilesTotal', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripMilesTotal';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'偿使䟬撐�ㄑ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Personal Miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripDriverPersonalMiles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripDriverPersonalMiles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverPersonalMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ಸ﨓展䮸஋좌郪', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Driver Miles Payable', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'stored calculation - trip miles total less driver personal miles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripDriverMilesPayable', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripDriverMilesPayable', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMilesPayable';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㜩䳿駔䮹袖뫽侙ڮ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Meals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$#,##0.00;($#,##0.00)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripDriverMeals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripDriverMeals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMeals';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㖻鎥䶈讦驼䧥踧', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Misc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$#,##0.00;($#,##0.00)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripDriverMisc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripDriverMisc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripDriverMisc';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䴻耋䘃፷䵲⃨', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'TextFormat', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ﱪ팽斨䣙಴⧷�⏭', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripCanceled', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripCanceled', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripCanceled';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'귪쮰舸䝟䂙鯡䒤녅', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPTripID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'FMPTripID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'FMPTripID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'黪㰅遊䈎薂�卌䧲', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tie to RateID? Only Active RateIDs where the related insurance ID is NOT insurance type? Or only to Agency insurance for rate?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DriverRateID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DriverRateID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRateID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'촭땤뉺䁢䎗ꪟ㓟袉', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'copy from rate table', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$#,##0.00;($#,##0.00)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DriverRate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DriverRate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverRate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'1935', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'緾⛏襤䗹嚩兜⛶죮', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'link to which address driver began trip from', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DriverAddressID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DriverAddressID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DriverAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'뾜Ɱว䠴䞶讅', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_InputMask', @value = N'00:00;0;_', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripStartTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripStartTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripStartTime';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'᳀煝㰮䒋⦽쐡⚆�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_InputMask', @value = N'00:00;0;_', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripEndTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'19', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripEndTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'TripEndTime';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'훳筼蠪䤣馐䖾ᐴ뫡', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Enter Date paperwork  received from driver', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'MS_InputMask', @value = N'99/99/00;;_', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'DateReceived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'20', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'DateReceived', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'캿鹃븆䬎Ⓘ嬧㐏', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Date Payment Made', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_InputMask', @value = N'99/99/00;;_', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'PaymentMadeDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'21', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'PaymentMadeDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaymentMadeDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꌑ綵ٷ䈡폊䟮', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Paid', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'22', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Paid', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'Paid';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䇎Ꮜ꿏䣥誃塻㬑', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'PaidDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'23', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'PaidDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'PaidDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⽒쇄㿧侼讉䂮エ瓎', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Maximum Authorized to be Reimbursed by Insurance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'MaxReimburse', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'24', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'MaxReimburse', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'MaxReimburse';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⌝稀䷏ꊼ፧ߋ퍅', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Adjusted Reimbursement Amount to be billed to Insurance - use when indicated by insurance company', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$#,##0.00;($#,##0.00)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'AdjustedInsuranceReimAmt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'25', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'AdjustedInsuranceReimAmt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AdjustedInsuranceReimAmt';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꤢᰘ㷁䰣邶븒क़纩', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'AllowMeals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'26', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'AllowMeals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowMeals';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쮛퉧흎䲓�詠巷', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'AllowUnloadedMiles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'27', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'AllowUnloadedMiles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblTrip_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'DO NOT USE _ WRONG DATATYPE', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'COLUMN', @level2name = N'RequestReceived';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ConstraintText', @value = N'You cannot add, change, or delete this record because of the relationship restriction between the tables ''tblDriver'' and ''tblTrip''.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTrip', @level2type = N'CONSTRAINT', @level2name = N'tblTrip_FK00';

