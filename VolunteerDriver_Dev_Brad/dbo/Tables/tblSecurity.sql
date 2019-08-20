CREATE TABLE [dbo].[tblSecurity] (
    [SecurityID]             INT          IDENTITY (1, 1) NOT NULL,
    [UserName]               VARCHAR (50) NULL,
    [LockTrip]               BIT          CONSTRAINT [DF_tblSecurity_LockTrip] DEFAULT ((0)) NOT NULL,
    [PropagateAddress]       BIT          NOT NULL,
    [EzExportAllow]          BIT          CONSTRAINT [DF_tblSecurity_EzExportAllow] DEFAULT ((0)) NOT NULL,
    [Active]                 INT          NULL,
    [AfterExportLock]        BIT          DEFAULT ((0)) NOT NULL,
    [DriverReimbursementRPT] BIT          CONSTRAINT [DF_tblSecurity_DriverReimbursementRPT] DEFAULT ((0)) NOT NULL,
    [UserCreated]            CHAR (30)    CONSTRAINT [DF_tblSecurity_UserCreated] DEFAULT (suser_sname()) NULL,
    [UserUpdated]            CHAR (30)    CONSTRAINT [DF_tblSecurity_UserUpdated] DEFAULT (suser_sname()) NULL,
    [DateCreated]            DATETIME     CONSTRAINT [DF_tblSecurity_DateCreated] DEFAULT (getdate()) NULL,
    [DateUpdated]            DATETIME     CONSTRAINT [DF_tblSecurity_DateUpdated] DEFAULT (getdate()) NULL,
    [EditAddresses]          BIT          NULL,
    [EnterEligibility]       BIT          CONSTRAINT [DF_tblSecurity_EnterEligibility] DEFAULT ((0)) NOT NULL,
    [BillingCounties]        BIT          CONSTRAINT [DF_tblSecurity_BillingCounties] DEFAULT ((0)) NOT NULL,
    [ModifyRideClient]       BIT          CONSTRAINT [DF_tblSecurity_ModifyRideClient] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_tblPropagateLock] PRIMARY KEY CLUSTERED ([SecurityID] ASC)
);

