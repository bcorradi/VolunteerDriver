﻿CREATE TABLE [dbo].[tblEzClaimBillingHistory] (
    [EzBillingHistoryID] INT              IDENTITY (1, 1) NOT NULL,
    [ClientID]           INT              NULL,
    [TripID]             INT              NULL,
    [FromDate]           DATETIME         NULL,
    [ToDate]             DATETIME         NULL,
    [SeqNo]              INT              NULL,
    [EW]                 BIT              NULL,
    [OverNight]          BIT              NULL,
    [Canceled]           BIT              NULL,
    [NoShow]             BIT              NULL,
    [SF]                 BIT              NULL,
    [InEzClaim]          BIT              NULL,
    [Pickup]             VARCHAR (255)    NULL,
    [DropOff]            VARCHAR (255)    NULL,
    [Start Time]         DATETIME         NULL,
    [End Time]           DATETIME         NULL,
    [Place]              VARCHAR (5)      NULL,
    [Diagnosis]          VARCHAR (10)     NULL,
    [Charges]            MONEY            NULL,
    [Fdays]              INT              NULL,
    [LineItemGuid]       UNIQUEIDENTIFIER NULL,
    [CPT]                VARCHAR (48)     NULL,
    [Modifier]           VARCHAR (20)     NULL,
    [AllowedAmount]      MONEY            NULL,
    [PayorAmountPaid]    MONEY            NULL,
    [PurSvcCharge]       MONEY            NULL,
    [CurrencyCol1]       MONEY            NULL,
    [CurrencyCol2]       MONEY            NULL,
    [CurrencyCol3]       MONEY            NULL,
    [CurrencyCol4]       MONEY            NULL,
    [CurrencyCol5]       MONEY            NULL,
    [CurrencyCol6]       MONEY            NULL,
    [CurrencyCol7]       MONEY            NULL,
    [CurrencyCol8]       MONEY            NULL,
    [CoPayAmountDue]     MONEY            NULL,
    [ApprovedAmt]        MONEY            NULL,
    [PUAddressID]        INT              NULL,
    [DOAddressID]        INT              NULL,
    [ExportedDatetime]   DATETIME         NULL,
    [ExportedUserName]   VARCHAR (50)     NULL,
    [InsuranceID]        INT              NULL,
    CONSTRAINT [PK_tblEzClaimBillingHistory] PRIMARY KEY CLUSTERED ([EzBillingHistoryID] ASC)
);

