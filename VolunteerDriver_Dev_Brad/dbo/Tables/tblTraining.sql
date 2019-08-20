CREATE TABLE [dbo].[tblTraining] (
    [TrainingID]      INT           IDENTITY (1, 1) NOT NULL,
    [Location]        VARCHAR (50)  NULL,
    [TrainingName]    VARCHAR (50)  NULL,
    [TrainingDesc]    VARCHAR (255) NULL,
    [CertificateName] VARCHAR (50)  NULL,
    [Active]          BIT           DEFAULT ((1)) NOT NULL,
    [UserCreated]     VARCHAR (50)  CONSTRAINT [DF_tblTraining_UserCreated] DEFAULT (suser_sname()) NULL,
    [DateCreated]     DATETIME      CONSTRAINT [DF_tblTraining_DateCreated] DEFAULT (getdate()) NULL,
    [UserUpdated]     VARCHAR (50)  NULL,
    [DateUpdated]     DATETIME      NULL,
    CONSTRAINT [PK_tblTraining] PRIMARY KEY CLUSTERED ([TrainingID] ASC)
);

