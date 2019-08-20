CREATE TABLE [dbo].[tblPendingWorkbookNotes] (
    [PendingWorkID] INT           IDENTITY (1, 1) NOT NULL,
    [TripID]        INT           NULL,
    [Note]          VARCHAR (255) NULL
);

