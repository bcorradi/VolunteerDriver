CREATE TABLE [dbo].[ltblLogType] (
    [LogTypeID]   INT          IDENTITY (1, 1) NOT NULL,
    [LogTypeCode] NCHAR (10)   NOT NULL,
    [LogTypeDesc] VARCHAR (50) NOT NULL,
    [EntryDate]   DATETIME     CONSTRAINT [DF_ltblLogType_EntryDate] DEFAULT (getdate()) NOT NULL,
    [DateUpdated] DATETIME     CONSTRAINT [DF_ltblLogType_DateUpdated] DEFAULT (getdate()) NOT NULL,
    [UserCreated] VARCHAR (30) CONSTRAINT [DF_ltblLogType_UserCreated] DEFAULT (suser_sname()) NOT NULL,
    [UserUpdated] VARCHAR (30) CONSTRAINT [DF_ltblLogType_UserUpdated] DEFAULT (suser_sname()) NOT NULL,
    [Active]      BIT          CONSTRAINT [DF_ltblLogType_Active] DEFAULT ((1)) NOT NULL,
    [AppLogFlag]  BIT          CONSTRAINT [DF_ltblLogType_AppLogFlag] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_ltblLogType] PRIMARY KEY CLUSTERED ([LogTypeID] ASC)
);

