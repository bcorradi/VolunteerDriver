CREATE TABLE [dbo].[tblClientAddress] (
    [ClientAddressID]  INT            IDENTITY (1, 1) NOT NULL,
    [ClientID]         INT            NULL,
    [StartDate]        DATETIME       NULL,
    [EndDate]          DATETIME       NULL,
    [EntryDate]        DATETIME       DEFAULT (getdate()) NULL,
    [ClAddress]        NVARCHAR (255) NULL,
    [ClCity]           NVARCHAR (255) NULL,
    [ClState]          NVARCHAR (255) NULL,
    [ClZip]            NVARCHAR (255) NULL,
    [County]           INT            NULL,
    [AddressType]      NVARCHAR (255) NULL,
    [Active]           BIT            DEFAULT ((-1)) NOT NULL,
    [UserCreated]      CHAR (30)      CONSTRAINT [DF_tblClientAddress_UserCreated] DEFAULT (suser_sname()) NULL,
    [UserUpdated]      CHAR (30)      CONSTRAINT [DF_tblClientAddress_UserUpdated] DEFAULT (suser_sname()) NULL,
    [DateUpdated]      DATETIME       NULL,
    [ClAddressID]      INT            NULL,
    [EzClaimPatientID] BIGINT         NULL,
    CONSTRAINT [aaaaatblClientAddress_PK] PRIMARY KEY NONCLUSTERED ([ClientAddressID] ASC),
    CONSTRAINT [tblClientAddress_FK00] FOREIGN KEY ([County]) REFERENCES [dbo].[ltblCounty] ([CountyID]),
    CONSTRAINT [tblClientAddress_FK01] FOREIGN KEY ([ClientID]) REFERENCES [dbo].[tblClient] ([ClientID])
);


GO
CREATE NONCLUSTERED INDEX [ClientAddressID]
    ON [dbo].[tblClientAddress]([ClientAddressID] ASC);


GO
CREATE NONCLUSTERED INDEX [ClientID]
    ON [dbo].[tblClientAddress]([ClientID] ASC);


GO
CREATE NONCLUSTERED INDEX [ltblCountytblClientAddress]
    ON [dbo].[tblClientAddress]([County] ASC);


GO
CREATE NONCLUSTERED INDEX [tblClienttblClientAddress]
    ON [dbo].[tblClientAddress]([ClientID] ASC);


GO
CREATE NONCLUSTERED INDEX [_dta_index_tblClientAddress_5_1269579561__K2_K12_7_10]
    ON [dbo].[tblClientAddress]([ClientID] ASC, [Active] ASC)
    INCLUDE([ClCity], [County]);


GO
CREATE STATISTICS [_dta_stat_1269579561_10_12]
    ON [dbo].[tblClientAddress]([County], [Active]);


GO
CREATE STATISTICS [_dta_stat_1269579561_2_10]
    ON [dbo].[tblClientAddress]([ClientID], [County]);


GO
CREATE STATISTICS [_dta_stat_1269579561_12_2_10]
    ON [dbo].[tblClientAddress]([Active], [ClientID], [County]);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'3/7/2014 2:07:13 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayViewsOnSharePointSite', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress';


GO
EXECUTE sp_addextendedproperty @name = N'FilterOnLoad', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress';


GO
EXECUTE sp_addextendedproperty @name = N'HideNewField', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:38 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DefaultView', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_OrderByOn', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Orientation', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblClientAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress';


GO
EXECUTE sp_addextendedproperty @name = N'OrderByOnLoad', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'782', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress';


GO
EXECUTE sp_addextendedproperty @name = N'TotalsRow', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'鲹ᨖ䞝龪凑假짬', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClientAddressID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClientAddressID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㤏㧘㴫䬀馯⸼᜙泖', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClientID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClientID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'玙뚖䯰䨞똾숞쾑', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'StartDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'StartDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'欳倀釅亩犭�ꊸ尽', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EndDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2130', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'Now()', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'쒥슘䔂�➅ࡻ霴', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'ShowDatePicker', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'2325', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ꏥ쾩詘䤤鞠頑轛饋', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Street Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClAddress', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddress';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'1860', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'椅훗葌䁺뾨珫晒旼', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClCity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClCity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClCity';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'ڸ籉ℳ䊐න뎣榨', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClState', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClState', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClState';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'참⻼骒䇤庒ǜ➸✰', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Caption', @value = N'Zip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClZip';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowMultipleValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowValueListEdits', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'碶爙躔䐡塟ࢳ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_BoundColumn', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnCount', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnHeads', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ColumnWidths', @value = N'0;1440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DecimalPlaces', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'111', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_LimitToList', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListRows', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ListWidth', @value = N'1440twip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSource', @value = N'SELECT ltblCounty.CountyID, ltblCounty.County
FROM ltblCounty
ORDER BY County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_RowSourceType', @value = N'Table/View/StoredProc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'ShowOnlyRowSourceValues', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'닆汓犷䰿䂕팡싸ᬹ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'109', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMEMode', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_IMESentMode', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'AddressType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'AddressType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'UnicodeCompression', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'AddressType';


GO
EXECUTE sp_addextendedproperty @name = N'AggregateType', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnHidden', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnWidth', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'DefaultValue', @value = N'-1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'GUID', @value = N'㴏팑俲䌮֋拲踫젬', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DisplayControl', @value = N'106', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Format', @value = N'Yes/No', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblClientAddress_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'TextAlign', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Used in address validation as placeholder for address ID from address table', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'COLUMN', @level2name = N'ClAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_ConstraintText', @value = N'You cannot add, change, or delete this record because of the relationship restriction between the tables ''tblClient'' and ''tblClientAddress''.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClientAddress', @level2type = N'CONSTRAINT', @level2name = N'tblClientAddress_FK01';

