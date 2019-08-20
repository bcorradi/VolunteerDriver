CREATE TABLE [dbo].[tblGeneralMembers] (
    [GeneralMembersID] INT           IDENTITY (1, 1) NOT NULL,
    [Client]           VARCHAR (100) NULL,
    [Insurance]        VARCHAR (50)  NULL,
    [MemberID]         VARCHAR (30)  NULL,
    [AuthCode]         VARCHAR (255) NULL,
    [RideDate]         DATETIME      NULL,
    [UserName]         VARCHAR (50)  NULL
);

