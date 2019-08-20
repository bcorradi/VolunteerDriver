CREATE TABLE [dbo].[ltblRules] (
    [RuleID]        INT            IDENTITY (1, 1) NOT NULL,
    [RuleName]      NVARCHAR (255) NULL,
    [EntryDate]     NVARCHAR (255) NULL,
    [Comments]      NVARCHAR (255) NULL,
    [TableAffected] NVARCHAR (255) NULL,
    [DateCreated]   DATETIME       NULL,
    [CreatedBy]     VARCHAR (30)   NULL,
    [Active]        BIT            CONSTRAINT [DF_ltblRules_Active] DEFAULT ((-1)) NULL
);

