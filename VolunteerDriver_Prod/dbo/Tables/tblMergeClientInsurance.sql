CREATE TABLE [dbo].[tblMergeClientInsurance] (
    [MergeClientInsuranceID]       INT            IDENTITY (1, 1) NOT NULL,
    [ClientInsuranceID]            INT            NULL,
    [ClientID]                     INT            NULL,
    [InsuranceID]                  INT            NULL,
    [StartDate]                    DATETIME       NULL,
    [EndDate]                      DATETIME       NULL,
    [EntryDate]                    DATETIME       NULL,
    [Active]                       BIT            NULL,
    [MemberID]                     NVARCHAR (255) NULL,
    [ClientInsuranceNotes]         NTEXT          NULL,
    [MaxAllowedByInsurancePerTrip] MONEY          NULL,
    [upsize_ts]                    ROWVERSION     NULL,
    [UserCreated]                  CHAR (30)      NULL,
    [UserUpdated]                  CHAR (30)      NULL,
    [DateUpdated]                  DATETIME       NULL,
    [GroupID]                      VARCHAR (100)  NULL,
    [RevokeDate]                   DATETIME       NULL,
    [BenefitsCheck]                DATETIME       NULL
);

