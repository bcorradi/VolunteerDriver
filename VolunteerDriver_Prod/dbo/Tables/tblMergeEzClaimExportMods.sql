CREATE TABLE [dbo].[tblMergeEzClaimExportMods] (
    [MergeEzExportID] INT          IDENTITY (1, 1) NOT NULL,
    [EzExportID]      INT          NULL,
    [Client]          VARCHAR (55) NULL,
    [RideDate]        DATETIME     NULL,
    [TripID]          INT          NULL,
    [Insurance]       VARCHAR (25) NULL,
    [Mod1]            VARCHAR (8)  NULL,
    [Mod2]            VARCHAR (8)  NULL,
    [Mod3]            VARCHAR (8)  NULL,
    [Mod4]            VARCHAR (8)  NULL,
    [Mod5]            VARCHAR (8)  NULL,
    [Mod6]            VARCHAR (8)  NULL,
    [Mod7]            VARCHAR (8)  NULL,
    [Mod8]            VARCHAR (8)  NULL,
    [UserName]        VARCHAR (50) NULL,
    [ClaimID]         INT          NULL,
    [PatientID]       INT          NULL,
    [ClientID]        INT          NULL
);

