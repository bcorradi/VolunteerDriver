CREATE TABLE [dbo].[tblMergeEzPatientClientLink2] (
    [MergeEzLinkID]     INT          IDENTITY (1, 1) NOT NULL,
    [EZLinkid]          INT          NULL,
    [timestamp]         DATETIME     NULL,
    [Patientid]         INT          NULL,
    [Clientid]          INT          NULL,
    [Addressid]         INT          NULL,
    [ClientInsuranceid] INT          NULL,
    [UserName]          VARCHAR (40) NULL,
    [InsuranceID]       INT          NULL,
    [PrimaryPayerFKey]  INT          NULL,
    [Duplicate]         BIT          NULL,
    [UpdatedDate]       DATETIME     NULL
);

