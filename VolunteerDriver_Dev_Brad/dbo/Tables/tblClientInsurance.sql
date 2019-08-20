CREATE TABLE [dbo].[tblClientInsurance] (
    [ClientInsuranceID]            INT            IDENTITY (1, 1) NOT NULL,
    [ClientID]                     INT            NULL,
    [InsuranceID]                  INT            NULL,
    [StartDate]                    DATETIME       NULL,
    [EndDate]                      DATETIME       NULL,
    [EntryDate]                    DATETIME       DEFAULT (getdate()) NULL,
    [Active]                       BIT            DEFAULT ((-1)) NOT NULL,
    [MemberID]                     NVARCHAR (255) NULL,
    [ClientInsuranceNotes]         NTEXT          NULL,
    [MaxAllowedByInsurancePerTrip] MONEY          NULL,
    [upsize_ts]                    ROWVERSION     NULL,
    [UserCreated]                  CHAR (30)      CONSTRAINT [DF_tblClientInsurance_UserCreate] DEFAULT (suser_sname()) NULL,
    [UserUpdated]                  CHAR (30)      NULL,
    [DateUpdated]                  DATETIME       NULL,
    [GroupID]                      VARCHAR (100)  NULL,
    [RevokeDate]                   DATETIME       NULL,
    [BenefitsCheck]                DATETIME       NULL,
    CONSTRAINT [aaaaatblClientInsurance_PK] PRIMARY KEY NONCLUSTERED ([ClientInsuranceID] ASC),
    CONSTRAINT [tblClientInsurance_FK00] FOREIGN KEY ([ClientID]) REFERENCES [dbo].[tblClient] ([ClientID]),
    CONSTRAINT [tblClientInsurance_FK01] FOREIGN KEY ([InsuranceID]) REFERENCES [dbo].[tblInsurance] ([InsuranceID])
);


GO
CREATE NONCLUSTERED INDEX [ClientID]
    ON [dbo].[tblClientInsurance]([ClientID] ASC);


GO
CREATE NONCLUSTERED INDEX [ClientInsuranceID]
    ON [dbo].[tblClientInsurance]([ClientInsuranceID] ASC);


GO
CREATE NONCLUSTERED INDEX [InsuranceID]
    ON [dbo].[tblClientInsurance]([InsuranceID] ASC);


GO
CREATE NONCLUSTERED INDEX [MemberID]
    ON [dbo].[tblClientInsurance]([MemberID] ASC);


GO
CREATE NONCLUSTERED INDEX [tblClienttblClientInsurance]
    ON [dbo].[tblClientInsurance]([ClientID] ASC);


GO
CREATE NONCLUSTERED INDEX [tblInsurancetblClientInsurance]
    ON [dbo].[tblClientInsurance]([InsuranceID] ASC);


GO
CREATE NONCLUSTERED INDEX [_dta_index_tblClientInsurance_5_1365579903__K3_K7_K2]
    ON [dbo].[tblClientInsurance]([InsuranceID] ASC, [Active] ASC, [ClientID] ASC);


GO
CREATE STATISTICS [_dta_stat_1365579903_2_3]
    ON [dbo].[tblClientInsurance]([ClientID], [InsuranceID]);


GO
CREATE STATISTICS [_dta_stat_1365579903_7_3]
    ON [dbo].[tblClientInsurance]([Active], [InsuranceID]);


GO
CREATE STATISTICS [_dta_stat_1365579903_2_7_3]
    ON [dbo].[tblClientInsurance]([ClientID], [Active], [InsuranceID]);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'3/7/2014 2:04:55 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:39 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'782', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ࠗ飼乹궿ᆏᎤ뽿', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClientInsuranceID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClientInsuranceID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'澩﹐䕳�憪瞬该', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClientID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClientID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'饠꺎侊ᦚ⎰兩㾆', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'InsuranceID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'InsuranceID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'InsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'貜ꮿ囌䀐뾼裂ᓰ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'StartDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'StartDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⫾䌛辷ů扶', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2130', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'Now()', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'዆秘䩛令咛豮⹬', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'纏鸞쬼䎨炽�咬⁑', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'怊蔽麖䔶ᦐ욭⿳ᢩ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'MemberID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'MemberID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꃮ썜䓖璖╭忱㎬', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClientInsuranceNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClientInsuranceNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'TextFormat', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'瑟젇�䩕릍졻禢䤸', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'$#,##0.00;($#,##0.00)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'MaxAllowedByInsurancePerTrip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'MaxAllowedByInsurancePerTrip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientInsurance_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ConstraintText', @value = N'You cannot add, change, or delete this record because of the relationship restriction between the tables ''tblInsurance'' and ''tblClientInsurance''.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientInsurance', @level2type = N'CONSTRAINT', @level2name = N'tblClientInsurance_FK01';

