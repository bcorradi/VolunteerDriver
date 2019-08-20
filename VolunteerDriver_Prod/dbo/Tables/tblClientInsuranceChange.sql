CREATE TABLE [dbo].[tblClientInsuranceChange] (
    [ClientInsuranceChangeID] INT           IDENTITY (1, 1) NOT NULL,
    [TripID]                  INT           NULL,
    [Client]                  VARCHAR (255) NULL,
    [RideDate]                DATETIME      NULL,
    [Insurance]               VARCHAR (50)  NULL,
    [OriginalInsurance]       VARCHAR (50)  NULL,
    [MemberID]                VARCHAR (30)  NULL,
    [OriginalMemberID]        VARCHAR (30)  NULL,
    [InsuranceCheck]          VARCHAR (20)  NULL,
    [MemberIDCheck]           VARCHAR (20)  NULL,
    [DateMassUpdated]         DATETIME      NULL
);

