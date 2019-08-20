CREATE TABLE [dbo].[tblTripLog] (
    [LogID]       INT          IDENTITY (1, 1) NOT NULL,
    [TripID]      INT          NOT NULL,
    [LogDateTime] DATETIME     CONSTRAINT [DF_tblTripLog_LogDateTime] DEFAULT (getdate()) NOT NULL,
    [LogTypeID]   INT          NOT NULL,
    [Comment]     NTEXT        NULL,
    [EntryDate]   DATETIME     CONSTRAINT [DF_tblTripLog_EntryDate] DEFAULT (getdate()) NOT NULL,
    [DateUpdated] DATETIME     CONSTRAINT [DF_tblTripLog_DateUpdated] DEFAULT (getdate()) NOT NULL,
    [UserCreated] VARCHAR (30) CONSTRAINT [DF_tblTripLog_UserCreated] DEFAULT (suser_sname()) NOT NULL,
    [UserUpdated] VARCHAR (30) CONSTRAINT [DF_tblTripLog_UserUpdated] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_tblTripLog] PRIMARY KEY CLUSTERED ([LogID] ASC),
    CONSTRAINT [FK_tblTripLog_tblTrip] FOREIGN KEY ([TripID]) REFERENCES [dbo].[tblTrip] ([TripID])
);

