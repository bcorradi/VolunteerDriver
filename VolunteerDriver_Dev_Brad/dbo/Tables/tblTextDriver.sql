CREATE TABLE [dbo].[tblTextDriver] (
    [TextDriverID]       INT           IDENTITY (1, 1) NOT NULL,
    [ClientName]         VARCHAR (100) NULL,
    [TripDate]           VARCHAR (19)  NULL,
    [PickupTime]         VARCHAR (19)  NULL,
    [AppointmentTime]    VARCHAR (19)  NULL,
    [PickupLocation]     VARCHAR (255) NULL,
    [DestinationAddress] VARCHAR (255) NULL,
    [ClientPhone]        VARCHAR (15)  NULL,
    [Username]           VARCHAR (50)  NULL
);

