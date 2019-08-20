CREATE TABLE [dbo].[tblEzClaimDupsOld] (
    [DupsID]           INT          IDENTITY (1, 1) NOT NULL,
    [PatientID]        INT          NULL,
    [PatientFirstName] VARCHAR (50) NULL,
    [PatientLastName]  VARCHAR (50) NULL,
    [Insurance]        VARCHAR (50) NULL
);

