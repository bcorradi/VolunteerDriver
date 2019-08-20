CREATE TABLE [dbo].[tblNoShow] (
    [NoShowID]      INT          IDENTITY (1, 1) NOT NULL,
    [AuthNum]       VARCHAR (50) NULL,
    [MemberID]      VARCHAR (30) NULL,
    [CLFN]          VARCHAR (50) NULL,
    [CLLN]          VARCHAR (50) NULL,
    [FullOrPartial] VARCHAR (12) NULL,
    [LegsCanceled]  VARCHAR (10) NULL,
    [tripid]        INT          NULL,
    [UserName]      VARCHAR (50) NULL,
    [RideDate]      DATETIME     NULL,
    CONSTRAINT [PK_tblNoShow] PRIMARY KEY CLUSTERED ([NoShowID] ASC)
);

