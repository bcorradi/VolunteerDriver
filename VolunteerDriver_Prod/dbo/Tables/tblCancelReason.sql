CREATE TABLE [dbo].[tblCancelReason] (
    [CancelReasonID] INT          IDENTITY (1, 1) NOT NULL,
    [Reason]         VARCHAR (50) NOT NULL,
    [Active]         BIT          CONSTRAINT [DF_tblCancelReason_Active] DEFAULT ((-1)) NOT NULL,
    [DateCreated]    DATETIME     CONSTRAINT [DF_tblCancelReason_DateCreated] DEFAULT (getdate()) NOT NULL,
    [UserCreated]    CHAR (30)    CONSTRAINT [DF_tblCancelReason_UserCreated] DEFAULT (suser_sname()) NOT NULL,
    [DateUpdated]    DATETIME     CONSTRAINT [DF_tblCancelReason_DateUpdated] DEFAULT (getdate()) NOT NULL,
    [UserUpdated]    CHAR (30)    CONSTRAINT [DF_tblCancelReason_UserUpdated] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_tblCancelReason] PRIMARY KEY CLUSTERED ([CancelReasonID] ASC)
);

