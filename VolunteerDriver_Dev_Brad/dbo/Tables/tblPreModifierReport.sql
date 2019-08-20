﻿CREATE TABLE [dbo].[tblPreModifierReport] (
    [PreMod_ID] INT           IDENTITY (1, 1) NOT NULL,
    [Client]    VARCHAR (55)  NULL,
    [RideDate]  DATETIME      NULL,
    [TripID]    INT           NULL,
    [Insurance] VARCHAR (25)  NULL,
    [Modifier1] VARCHAR (8)   NULL,
    [Modifier2] VARCHAR (8)   NULL,
    [Modifier3] VARCHAR (8)   NULL,
    [Modifier4] VARCHAR (8)   NULL,
    [Modifier5] VARCHAR (8)   NULL,
    [Modifier6] VARCHAR (8)   NULL,
    [Modifier7] VARCHAR (8)   NULL,
    [Modifier8] VARCHAR (8)   NULL,
    [UserName]  VARCHAR (50)  NULL,
    [Facility]  VARCHAR (255) NULL,
    [Facility1] VARCHAR (255) NULL,
    [Facility2] VARCHAR (255) NULL,
    [Facility3] VARCHAR (255) NULL,
    [Facility4] VARCHAR (255) NULL,
    [Facility5] VARCHAR (255) NULL,
    [Facility6] VARCHAR (255) NULL,
    [Facility7] VARCHAR (255) NULL,
    [Facility8] VARCHAR (255) NULL,
    CONSTRAINT [PK_tblPreModifierReport] PRIMARY KEY CLUSTERED ([PreMod_ID] ASC)
);
