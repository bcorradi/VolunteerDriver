CREATE TABLE [dbo].[Switchboard Items] (
    [SwitchboardID] INT            NOT NULL,
    [ItemNumber]    SMALLINT       DEFAULT ((0)) NOT NULL,
    [ItemText]      NVARCHAR (255) NULL,
    [Command]       SMALLINT       NULL,
    [Argument]      NVARCHAR (255) NULL,
    CONSTRAINT [aaaaaSwitchboard Items_PK] PRIMARY KEY NONCLUSTERED ([SwitchboardID] ASC, [ItemNumber] ASC)
);

