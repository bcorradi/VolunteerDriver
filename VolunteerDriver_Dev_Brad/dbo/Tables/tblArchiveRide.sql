CREATE TABLE [dbo].[tblArchiveRide] (
    [RideID]                       INT            IDENTITY (1, 1) NOT NULL,
    [EntryDate]                    DATETIME       NULL,
    [ClientID]                     INT            NULL,
    [ClFN]                         NVARCHAR (255) NULL,
    [ClLN]                         NVARCHAR (255) NULL,
    [ClPhone]                      NVARCHAR (255) NULL,
    [tblClient_ClientType]         INT            NULL,
    [tblClient_MemberID]           NVARCHAR (255) NULL,
    [ClNotes]                      NTEXT          NULL,
    [ltblClientType_ClientType]    NVARCHAR (255) NULL,
    [tblClientInsurance_MemberID]  NVARCHAR (255) NULL,
    [ClientInsuranceNotes]         NTEXT          NULL,
    [MaxAllowedByInsurancePerTrip] MONEY          NULL,
    [RPickupZip]                   INT            NULL,
    [tblRide_County]               INT            NULL,
    [ltblCounty_County]            NVARCHAR (255) NULL,
    [ltblCounty_MIPCountyCode]     NVARCHAR (255) NULL,
    [TripPurposeID]                INT            NULL,
    [TripPurpose]                  NVARCHAR (255) NULL,
    [TripTypeID]                   INT            NULL,
    [TripType]                     NVARCHAR (255) NULL,
    [RDropoffCounty]               INT            NULL,
    [ltblCounty_2_County]          NVARCHAR (255) NULL,
    [ltblCounty_2_MIPCountyCode]   NVARCHAR (255) NULL,
    [Insurance]                    NVARCHAR (255) NULL,
    [RequireIDandAuth]             BIT            DEFAULT ((0)) NOT NULL,
    [ArchiveUser]                  VARCHAR (25)   NULL,
    [ArchiveDateTime]              DATETIME       NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide';


GO
EXECUTE sp_addextendedproperty @name = N'DateCreated', @value = N'6/16/2014 11:44:52 AM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide';


GO
EXECUTE sp_addextendedproperty @name = N'LastUpdated', @value = N'6/20/2014 1:33:26 PM', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide';


GO
EXECUTE sp_addextendedproperty @name = N'RecordCount', @value = N'16551', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide';


GO
EXECUTE sp_addextendedproperty @name = N'Updatable', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RideID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RideID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RideID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'EntryDate', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClientID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClientID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClFN', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClFN', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClFN';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClLN', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClLN', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClLN';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClPhone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClPhone', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClPhone';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblClient_ClientType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'tblClient_ClientType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblClient_MemberID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'tblClient_MemberID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClient_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblClientType_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblClientType_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblClientType_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblClientType_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblClientType_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ltblClientType_ClientType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblClientType_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblClientType_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblClientType_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblClientType_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ltblClientType_ClientType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblClientType_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblClientType_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblClientType_ClientType';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClientInsurance_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClientInsurance_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClientInsurance_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClientInsurance_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClientInsurance_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblClientInsurance_MemberID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClientInsurance_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClientInsurance_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClientInsurance_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClientInsurance_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'tblClientInsurance_MemberID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClientInsurance_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClientInsurance_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblClientInsurance_MemberID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ClientInsuranceNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ClientInsuranceNotes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ClientInsuranceNotes';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'MaxAllowedByInsurancePerTrip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'MaxAllowedByInsurancePerTrip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'MaxAllowedByInsurancePerTrip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RPickupZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RPickupZip', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RPickupZip';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblRide_County';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblRide_County';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblRide_County';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblRide_County';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblRide_County';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'tblRide_County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblRide_County';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblRide_County';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblRide_County';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblRide_County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'tblRide_County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblRide_County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblRide_County';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'tblRide_County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_County';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_County';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_County';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_County';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_County';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ltblCounty_County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_County';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_County';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_County';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ltblCounty_County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_County';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ltblCounty_MIPCountyCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ltblCounty_MIPCountyCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripPurposeID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripPurposeID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurposeID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurpose';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurpose';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurpose';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurpose';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurpose';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripPurpose', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurpose';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'19', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurpose';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurpose';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurpose';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripPurpose', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurpose';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurpose';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripPurpose';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripTypeID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'20', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripTypeID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'TripType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'21', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'TripType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'TripType';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RDropoffCounty', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'22', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RDropoffCounty', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RDropoffCounty';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_County';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_County';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_County';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_County';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_County';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ltblCounty_2_County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_County';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'23', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_County';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_County';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ltblCounty_2_County', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_County';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_County';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_County';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'ltblCounty_2_MIPCountyCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'24', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'ltblCounty_2_MIPCountyCode', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'ltblCounty_2_MIPCountyCode';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'Insurance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'25', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'255', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'Insurance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'Insurance';


GO
EXECUTE sp_addextendedproperty @name = N'AllowZeroLength', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'AppendOnly', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'Attributes', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'CollatingOrder', @value = N'1033', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'DataUpdatable', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'Name', @value = N'RequireIDandAuth', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'OrdinalPosition', @value = N'26', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'Required', @value = N'False', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'Size', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'SourceField', @value = N'RequireIDandAuth', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'tblArchiveRide_local', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';


GO
EXECUTE sp_addextendedproperty @name = N'Type', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblArchiveRide', @level2type = N'COLUMN', @level2name = N'RequireIDandAuth';

