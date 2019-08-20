CREATE TABLE [dbo].[EzPatientClientLink2] (
    [EZLinkid]          INT          IDENTITY (1, 1) NOT NULL,
    [timestamp]         DATETIME     NULL,
    [Patientid]         INT          NULL,
    [Clientid]          INT          NULL,
    [Addressid]         INT          NULL,
    [ClientInsuranceid] INT          NULL,
    [UserName]          VARCHAR (40) NULL,
    [InsuranceID]       INT          NULL,
    [PrimaryPayerFKey]  INT          NULL,
    [Duplicate]         BIT          DEFAULT ((0)) NOT NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedUser]       VARCHAR (50) NULL,
    CONSTRAINT [PK_EzPatientClientLink2] PRIMARY KEY CLUSTERED ([EZLinkid] ASC)
);

