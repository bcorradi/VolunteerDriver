CREATE TABLE [dbo].[tblDriverTrainingLink] (
    [DriverTrainingID] INT          IDENTITY (1, 1) NOT NULL,
    [DriverID]         INT          NULL,
    [TrainingID]       INT          NULL,
    [CompletionDate]   DATETIME     NULL,
    [DateCreated]      DATETIME     CONSTRAINT [DF_tblDriverTrainingLink_DateCreated] DEFAULT (getdate()) NULL,
    [UserCreated]      VARCHAR (50) CONSTRAINT [DF_tblDriverTrainingLink_UserCreated] DEFAULT (suser_sname()) NULL,
    [DateUpdated]      DATETIME     NULL,
    [UserUpdated]      VARCHAR (50) NULL,
    CONSTRAINT [PK_tblDriverTrainingLink] PRIMARY KEY CLUSTERED ([DriverTrainingID] ASC)
);

