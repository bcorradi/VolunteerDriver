CREATE TABLE [dbo].[EzBillingTripLink] (
    [EZBTLinkid]    INT          IDENTITY (1, 1) NOT NULL,
    [timestamp]     DATETIME     NULL,
    [BillingItemID] INT          NULL,
    [Claimid]       INT          NULL,
    [Tripid]        INT          NULL,
    [UserName]      VARCHAR (40) NULL,
    [InsuranceID]   INT          NULL,
    [EzLinkID]      INT          NULL,
    CONSTRAINT [PK_EzBillingTripLink] PRIMARY KEY CLUSTERED ([EZBTLinkid] ASC)
);

