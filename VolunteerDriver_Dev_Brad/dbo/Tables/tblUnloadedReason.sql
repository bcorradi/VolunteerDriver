CREATE TABLE [dbo].[tblUnloadedReason] (
    [UnloadedReasonID] INT          IDENTITY (1, 1) NOT NULL,
    [Reason]           VARCHAR (50) NULL,
    [Active]           BIT          CONSTRAINT [DF_tblUnloadedReason_Active] DEFAULT ((-1)) NULL,
    [DateCreated]      DATETIME     CONSTRAINT [DF_tblUnloadedReason_DateCreated] DEFAULT (getdate()) NULL,
    [UserCreated]      VARCHAR (50) CONSTRAINT [DF_tblUnloadedReason_UserCreated] DEFAULT (suser_sname()) NULL,
    [DateUpdated]      DATETIME     CONSTRAINT [DF_tblUnloadedReason_DateUpdated] DEFAULT (getdate()) NULL,
    [UserUpdated]      VARCHAR (50) CONSTRAINT [DF_tblUnloadedReason_UserUpdated] DEFAULT (suser_sname()) NULL,
    CONSTRAINT [PK_tblUnloadedReason] PRIMARY KEY CLUSTERED ([UnloadedReasonID] ASC)
);

