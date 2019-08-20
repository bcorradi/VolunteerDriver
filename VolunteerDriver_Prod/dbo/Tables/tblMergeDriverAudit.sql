CREATE TABLE [dbo].[tblMergeDriverAudit] (
    [AuditMergeDriverID] INT          IDENTITY (1, 1) NOT NULL,
    [DriverOldID]        INT          NULL,
    [DriverNewID]        INT          NULL,
    [IDAltered]          INT          NULL,
    [TableIDName]        VARCHAR (50) NULL,
    [AlteredTable]       VARCHAR (50) NULL
);

