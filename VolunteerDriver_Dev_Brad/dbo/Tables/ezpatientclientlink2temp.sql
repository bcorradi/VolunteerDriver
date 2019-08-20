CREATE TABLE [dbo].[ezpatientclientlink2temp] (
    [EZLinkid]          INT          IDENTITY (1, 1) NOT NULL,
    [timestamp]         DATETIME     NULL,
    [Patientid]         INT          NULL,
    [Clientid]          INT          NULL,
    [Addressid]         INT          NULL,
    [ClientInsuranceid] INT          NULL,
    [UserName]          VARCHAR (40) NULL,
    [InsuranceID]       INT          NULL,
    [PrimaryPayerFKey]  INT          NULL,
    [Duplicate]         BIT          NOT NULL,
    [UpdatedDate]       DATETIME     NULL
);

