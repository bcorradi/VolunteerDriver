CREATE TABLE [dbo].[tblClientInsuranceRideUpdateAudit] (
    [CLRide_id]         INT           IDENTITY (1, 1) NOT NULL,
    [TripID]            INT           NULL,
    [ClientInsuranceID] INT           NULL,
    [ClientID]          INT           NULL,
    [InsuranceID]       INT           NULL,
    [MemberID]          NCHAR (30)    NULL,
    [ReimburseRateID]   INT           NULL,
    [RequireAuthCode]   BIT           DEFAULT ((0)) NULL,
    [RequireIDandAuth]  BIT           DEFAULT ((0)) NULL,
    [UserName]          VARCHAR (255) NULL,
    [DateUpdated]       DATETIME      NULL,
    [ReimburseRate]     MONEY         NULL
);

