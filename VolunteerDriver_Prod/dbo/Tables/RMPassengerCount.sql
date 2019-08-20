CREATE TABLE [dbo].[RMPassengerCount] (
    [PassengersID] INT          IDENTITY (1, 1) NOT NULL,
    [County]       VARCHAR (25) NULL,
    [Year]         INT          NULL,
    [Month]        VARCHAR (10) NULL,
    [Passengers]   INT          NULL
);

