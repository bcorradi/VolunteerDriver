CREATE TABLE [dbo].[EzClaimTripLink] (
    [EZCTLinkid]          INT          IDENTITY (1, 1) NOT NULL,
    [timestamp]           DATETIME     NULL,
    [Claimid]             INT          NULL,
    [Tripid]              INT          NULL,
    [UserName]            VARCHAR (40) NULL,
    [InsuranceID]         INT          NULL,
    [EzLinkID]            INT          NULL,
    [DifferentFacilityID] INT          NULL,
    [FacilityMatch]       BIT          DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_EzClaimTripLink] PRIMARY KEY CLUSTERED ([EZCTLinkid] ASC)
);

