CREATE TABLE [dbo].[tblAuditTrail] (
    [AuditTrailID]  INT            IDENTITY (1, 1) NOT NULL,
    [DateTime]      DATETIME       NULL,
    [UserName]      NVARCHAR (MAX) NULL,
    [FormName]      NVARCHAR (MAX) NULL,
    [RecordID]      INT            NULL,
    [FieldName]     NVARCHAR (MAX) NULL,
    [OldValue]      NVARCHAR (MAX) NULL,
    [NewValue]      NVARCHAR (MAX) NULL,
    [Action]        NVARCHAR (MAX) NULL,
    [ChildRecordID] INT            NULL,
    [Other]         NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_tblAuditTrail] PRIMARY KEY CLUSTERED ([AuditTrailID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [_dta_index_tblAuditTrail_5_1970106059__K1]
    ON [dbo].[tblAuditTrail]([AuditTrailID] ASC);

