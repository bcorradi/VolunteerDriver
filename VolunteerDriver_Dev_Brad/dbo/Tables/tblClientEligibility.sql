CREATE TABLE [dbo].[tblClientEligibility] (
    [ClientEligibilityID] INT           IDENTITY (1, 1) NOT NULL,
    [ClientID]            INT           NULL,
    [ClientInsuranceID]   INT           NULL,
    [StartDate]           DATETIME      NULL,
    [EndDate]             DATETIME      NULL,
    [DateEntered]         DATETIME      CONSTRAINT [DF_tblClientEligibility_DateEntered] DEFAULT (getdate()) NULL,
    [UserEntered]         CHAR (30)     CONSTRAINT [DF_tblClientEligibility_UserEntered] DEFAULT (suser_sname()) NULL,
    [Comments]            VARCHAR (MAX) NULL,
    [Eligibility]         BIT           CONSTRAINT [DF_tblClientEligibility_Eligibility] DEFAULT ((0)) NOT NULL,
    [Cancelled]           BIT           CONSTRAINT [DF_tblClientEligibility_Cancelled] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_tblClientEligibility] PRIMARY KEY CLUSTERED ([ClientEligibilityID] ASC)
);

