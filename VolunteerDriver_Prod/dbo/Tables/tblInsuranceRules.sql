CREATE TABLE [dbo].[tblInsuranceRules] (
    [InsuranceRulesID]    INT       IDENTITY (1, 1) NOT NULL,
    [BegDate]             DATETIME  NOT NULL,
    [EndDate]             DATETIME  NULL,
    [Active]              BIT       DEFAULT ((-1)) NOT NULL,
    [EntryDate]           DATETIME  DEFAULT (getdate()) NULL,
    [InsuranceProviderID] INT       NOT NULL,
    [FMPInsuranceID]      INT       NULL,
    [AllowsMeals]         BIT       DEFAULT ((0)) NOT NULL,
    [AllowUnloadedMiles]  BIT       DEFAULT ((0)) NOT NULL,
    [MNDOTAllow]          BIT       DEFAULT ((0)) NOT NULL,
    [RequireAuthIDandRep] BIT       DEFAULT ((0)) NOT NULL,
    [RuleID]              INT       NOT NULL,
    [UserCreated]         CHAR (30) CONSTRAINT [DF_tblInsuranceRules_UserCreated] DEFAULT (suser_sname()) NULL,
    [UserUpdated]         CHAR (30) NULL,
    [DateUpdated]         DATETIME  NULL,
    CONSTRAINT [aaaaatblInsuranceRules_PK] PRIMARY KEY NONCLUSTERED ([InsuranceRulesID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [FMPInsuranceID]
    ON [dbo].[tblInsuranceRules]([FMPInsuranceID] ASC);


GO
CREATE NONCLUSTERED INDEX [InsuranceRuleID]
    ON [dbo].[tblInsuranceRules]([RuleID] ASC);


GO
CREATE NONCLUSTERED INDEX [RateID]
    ON [dbo].[tblInsuranceRules]([InsuranceRulesID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'6/13/2014 10:25:51 AM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:41 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblInsuranceRules_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'濾Х䄪䵳隲뷍펅횔', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'InsuranceRulesID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'InsuranceRulesID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsuranceRules_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceRulesID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'萁儹榽䝂Ꮁ좩䴬ᚗ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Valid Start Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'BegDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'BegDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsuranceRules_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'BegDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쀽握繤䚊톢檈頢脼', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Valid End Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsuranceRules_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'⛨芖쬗䏁ᎅ刦凙綦', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsuranceRules_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2250', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'Now()', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꂸ듪㔧䎦햚逥쾖㔷', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsuranceRules_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowMultipleValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowValueListEdits', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2115', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'翷�䫢꾗㎛枽�', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_BoundColumn', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnCount', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnHeads', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidths', @value = N'0;2880', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'111', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_LimitToList', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListRows', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListWidth', @value = N'0twip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSource', @value = N'SELECT tblInsurance.InsuranceID, tblInsurance.Insurance, tblInsurance.Active
FROM tblInsurance
WHERE (((tblInsurance.Active)=1))', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSourceType', @value = N'Table/View/StoredProc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'InsuranceProviderID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'ShowOnlyRowSourceValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'InsuranceProviderID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsuranceRules_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'InsuranceProviderID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ࢎᴤ첈䙟咒忋ⱹᩝ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'FMPInsuranceID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'FMPInsuranceID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsuranceRules_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'FMPInsuranceID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꯄ⯢䯓䊄펤쭚�᜼', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'AllowsMeals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'AllowsMeals', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsuranceRules_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowsMeals';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쫭催䋯龷핫녵穿', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'AllowUnloadedMiles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'AllowUnloadedMiles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsuranceRules_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'AllowUnloadedMiles';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꃫ홊ꁃ俥颹ꗬ☬䈲', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'MNDOTAllow', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'MNDOTAllow', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsuranceRules_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'MNDOTAllow';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'单肢臵以皕Ѽ꿺磓', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RequireAuthIDandRep', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RequireAuthIDandRep', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsuranceRules_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RequireAuthIDandRep';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowMultipleValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowValueListEdits', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2475', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ảサ䭰䆎粜梦黺谶', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_BoundColumn', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnCount', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnHeads', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidths', @value = N'0;2100', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'111', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_LimitToList', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListRows', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListWidth', @value = N'2100twip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSource', @value = N'SELECT [ltblRules].[RuleID], [ltblRules].[RuleName] FROM ltblRules ORDER BY [RuleName]; ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSourceType', @value = N'Table/View/StoredProc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RuleID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'ShowOnlyRowSourceValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RuleID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblInsuranceRules_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblInsuranceRules', @level2type = N'COLUMN', @level2name = N'RuleID';

