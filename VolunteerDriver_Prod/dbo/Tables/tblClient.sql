CREATE TABLE [dbo].[tblClient] (
    [ClientID]             INT            IDENTITY (1, 1) NOT NULL,
    [Active]               BIT            DEFAULT ((-1)) NOT NULL,
    [EntryDate]            DATETIME       DEFAULT (getdate()) NULL,
    [ClFN]                 NVARCHAR (255) NULL,
    [ClLN]                 NVARCHAR (255) NULL,
    [ClPhone]              NVARCHAR (255) NULL,
    [ClientType]           INT            NULL,
    [Insurance]            INT            NULL,
    [MemberID]             NVARCHAR (255) NULL,
    [FMPClientID]          INT            NULL,
    [ClAddress]            NVARCHAR (255) NULL,
    [ClCity]               NVARCHAR (255) NULL,
    [ClState]              NVARCHAR (255) NULL,
    [ClZip]                NVARCHAR (255) NULL,
    [County]               INT            NULL,
    [ClNotes]              NTEXT          NULL,
    [FMPTripClientName]    NVARCHAR (255) NULL,
    [LNCommaFirst]         NVARCHAR (255) NULL,
    [upsize_ts]            ROWVERSION     NULL,
    [MigrateInsuranceText] NVARCHAR (50)  NULL,
    [UserCreated]          CHAR (30)      CONSTRAINT [DF_tblClient_UserCreate] DEFAULT (suser_sname()) NULL,
    [UserUpdated]          CHAR (30)      NULL,
    [DateUpdated]          DATETIME       CONSTRAINT [DF_tblClient_DateUpdated] DEFAULT (getdate()) NULL,
    [DOB]                  DATE           NULL,
    [ClDOB]                DATETIME       NULL,
    [ClMI]                 CHAR (1)       NULL,
    [Gender]               INT            CONSTRAINT [DF_tblClient_Gender] DEFAULT ((0)) NULL,
    [Suffix]               VARCHAR (10)   NULL,
    [clAltPhone1]          VARCHAR (50)   NULL,
    [clAltPhone2]          VARCHAR (50)   NULL,
    [ClientSocial]         VARCHAR (11)   NULL,
    CONSTRAINT [aaaaatblClient_PK] PRIMARY KEY NONCLUSTERED ([ClientID] ASC),
    CONSTRAINT [tblClient_FK00] FOREIGN KEY ([ClientType]) REFERENCES [dbo].[ltblClientType] ([ClientTypeID])
);


GO
CREATE NONCLUSTERED INDEX [ClientID]
    ON [dbo].[tblClient]([ClientID] ASC);


GO
CREATE NONCLUSTERED INDEX [_dta_index_tblClient_5_1173579219__K1_2_4_5_6_26]
    ON [dbo].[tblClient]([ClientID] ASC)
    INCLUDE([Active], [ClFN], [ClLN], [ClPhone], [ClDOB]);


GO
CREATE NONCLUSTERED INDEX [MemberID]
    ON [dbo].[tblClient]([MemberID] ASC);


GO
CREATE NONCLUSTERED INDEX [_dta_index_tblClient_5_1173579219__K1_4_5]
    ON [dbo].[tblClient]([ClientID] ASC)
    INCLUDE([ClFN], [ClLN]);


GO
CREATE NONCLUSTERED INDEX [_dta_index_tblClient_5_1173579219__K1_K5_4_6_24]
    ON [dbo].[tblClient]([ClientID] ASC, [ClLN] ASC)
    INCLUDE([ClFN], [ClPhone], [DOB]);


GO
CREATE STATISTICS [_dta_stat_1173579219_2_1]
    ON [dbo].[tblClient]([Active], [ClientID]);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'3/3/2014 10:48:16 AM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:37 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'782', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⏆ᨧ丙ꮷ漾肞泔', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClientID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClientID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'龣櫖軆䓚㲯⫆ﬨ捳', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2130', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'Now()', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ൔ丧寬䥾쪅藙ꫢ䣟', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Entry Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㱌務䠫皁䈽৲鯒', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'First Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClFN', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClFN', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㜌듷풇䑜㮃芶�㓐', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Last Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClLN', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClLN', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㟀鮭ⷝ䡸悠逴穚므', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Phone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClPhone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClPhone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'AllowMultipleValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'AllowValueListEdits', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'赿㴁䨥켤崴ﯥ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_BoundColumn', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnCount', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnHeads', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidths', @value = N'0;1440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'111', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_LimitToList', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListRows', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListWidth', @value = N'1440twip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSource', @value = N'SELECT ltblClientType.ClientTypeID, ltblClientType.ClientType
FROM ltblClientType
ORDER BY ClientType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSourceType', @value = N'Table/View/StoredProc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClientType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'ShowOnlyRowSourceValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClientType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'AllowMultipleValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'AllowValueListEdits', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'1440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㙞䞨י䫞᪕�៿歿', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_BoundColumn', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnCount', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnHeads', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidths', @value = N'0;2730', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Delete me (tblClientInsurance)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'111', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_LimitToList', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListRows', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListWidth', @value = N'2730twip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSource', @value = N'SELECT tblInsurance.InsuranceID, tblInsurance.Insurance
FROM tblInsurance
ORDER BY Insurance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSourceType', @value = N'Table/View/StoredProc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'ShowOnlyRowSourceValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2010', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ᣃ닩샜䤀ᲅ簉抚陈', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Delete me (tblClientInsurance)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'MemberID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'MemberID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'혜䚪䎁䋓킙歰ꩭꓝ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPClientID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'FMPClientID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'1440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'걉⛸䮡粉ኪ墓丣', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Delete me (tblClientAddress)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'1440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'燡�䇢ಇ퐽눜', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Delete me (tblClientAddress)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClCity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClCity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'1440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쉶ꀄ廒䝏崕睩', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Delete me (tblClientAddress)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClState', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClState', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'1440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'앤梚욗䗘�蜺ᐡ蜂', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Delete me (tblClientAddress)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowMultipleValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowValueListEdits', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'1440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ജ뱒㐔䌾讚ہﹿ務', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_BoundColumn', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnCount', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnHeads', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidths', @value = N'0;1440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Delete me (tblClientAddress)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'111', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_LimitToList', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListRows', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListWidth', @value = N'1440twip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSource', @value = N'SELECT ltblCounty.CountyID, ltblCounty.County
FROM ltblCounty
ORDER BY County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSourceType', @value = N'Table/View/StoredProc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ShowOnlyRowSourceValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䇤ꨖ䉐⮅ꪭ敧柈', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'TextFormat', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'骯ᚺ෴䑯嶋秖㱲萼', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPTripClientName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'FMPTripClientName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'FMPTripClientName';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'牜張䵳榄덞↰', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'LNCommaFirst', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'LNCommaFirst', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClient_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClient', @level2type = N'COLUMN', @level2name = N'LNCommaFirst';

