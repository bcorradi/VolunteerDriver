CREATE TABLE [dbo].[tblFilter] (
    [FilterID]     INT           IDENTITY (1, 1) NOT NULL,
    [Filter]       VARCHAR (MAX) NULL,
    [Username]     VARCHAR (50)  NULL,
    [CreationDate] DATETIME      CONSTRAINT [DF_tblFilter_CreationDate] DEFAULT (getdate()) NULL,
    [FilterName]   VARCHAR (50)  NULL,
    CONSTRAINT [PK_tblFilter] PRIMARY KEY CLUSTERED ([FilterID] ASC)
);

