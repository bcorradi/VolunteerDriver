CREATE TABLE [dbo].[tblInsurance] (
    [InsuranceID]             INT            IDENTITY (1, 1) NOT NULL,
    [NEWInsuranceID]          INT            NULL,
    [Insurance]               NVARCHAR (255) NULL,
    [FMPInsuranceNumber]      INT            NULL,
    [Active]                  BIT            DEFAULT ((-1)) NOT NULL,
    [EntryDate]               DATETIME       DEFAULT (getdate()) NULL,
    [FundNum]                 INT            NULL,
    [AllowsMeals]             BIT            DEFAULT ((0)) NOT NULL,
    [AllowUnloadedMiles]      BIT            DEFAULT ((0)) NOT NULL,
    [InsuranceNotes]          NTEXT          NULL,
    [Description]             NVARCHAR (255) NULL,
    [FMPBegDate]              DATETIME       NULL,
    [FMPEndDate]              DATETIME       NULL,
    [FMPRate]                 MONEY          NULL,
    [upsize_ts]               ROWVERSION     NULL,
    [UserCreated]             CHAR (30)      CONSTRAINT [DF_tblInsurance_UserCreated] DEFAULT (suser_sname()) NULL,
    [UserUpdated]             CHAR (30)      NULL,
    [DateUpdated]             DATETIME       NULL,
    [EzClaimPayerID]          INT            NULL,
    [EZClaimContractID]       INT            NULL,
    [EZClaimDiagnosisCode]    VARCHAR (10)   NULL,
    [EZRenderPhyID]           INT            NULL,
    [EZUnloadedMilesModifier] VARCHAR (5)    NULL,
    CONSTRAINT [aaaaatblInsurance_PK] PRIMARY KEY NONCLUSTERED ([InsuranceID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [FundNum]
    ON [dbo].[tblInsurance]([FundNum] ASC);


GO
CREATE NONCLUSTERED INDEX [InsuranceID]
    ON [dbo].[tblInsurance]([InsuranceID] ASC);


GO
CREATE NONCLUSTERED INDEX [NEWInsuranceID]
    ON [dbo].[tblInsurance]([NEWInsuranceID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'3/3/2014 10:58:05 AM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:41 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_LinkChildFields', @value = N'InsuranceProviderID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_LinkMasterFields', @value = N'InsuranceID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SubdatasheetName', @value = N'Table.tblRate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'䇻�䂸鶂䚌≂ୀ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'InsuranceID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'InsuranceID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'뛴棕꽐䒢閬㰐蠐詞', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'use for making rate table - will then delete duplicate records where insurance is in this table more than once', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'NEWInsuranceID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'NEWInsuranceID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'NEWInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'3390', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'瑔搧⓮䶽嚱縸﫝铆', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2085', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ⲏꞳҧ䃕ﺍ鋿ᗒ鋷', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPInsuranceNumber', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'FMPInsuranceNumber', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPInsuranceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'祐鰏샸䔏�鯅穃簈', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2130', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'Now()', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⏺࠼酶䃆�톧鿗', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'욯民䵑䪏뺐彾ធ㽘', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Fund', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FundNum', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'FundNum', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FundNum';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'1605', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'꛼ണ橽䂡咧핓뷮ﷸ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'delete me (tblRate)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'AllowsMeals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'AllowsMeals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'畏궎♒䊮醾罔쾿셅', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'delete me (tblRate)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'AllowUnloadedMiles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'AllowUnloadedMiles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'1875', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'蚇怐땗䧙⪄ᙦ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'InsuranceNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'InsuranceNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'TextFormat', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'4620', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'۱⻧䝯䍿戼桿䐕', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'delete me (tblRate)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'控꾎切䕢ኇ駳椕镑', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'delete me (tblRate)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPBegDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'FMPBegDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPBegDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'뤃魯툊䊄玏䤬wᜌ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'delete me (tblRate)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPEndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'FMPEndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'渨㹸䉲伧鸩釃', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'delete me (tblRate)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$#,##0.00;($#,##0.00)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPRate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'FMPRate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsurance', @level2type = N'COLUMN', @level2name = N'FMPRate';

