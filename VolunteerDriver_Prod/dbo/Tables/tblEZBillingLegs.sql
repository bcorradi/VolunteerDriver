CREATE TABLE [dbo].[tblEZBillingLegs] (
    [LegID]            INT          NOT NULL,
    [PatientID]        INT          NULL,
    [PatientFirstName] VARCHAR (50) NULL,
    [PatientLastName]  VARCHAR (50) NULL,
    [Insurance]        VARCHAR (50) NULL,
    CONSTRAINT [PK_tblEZBillingLegs] PRIMARY KEY CLUSTERED ([LegID] ASC)
);

