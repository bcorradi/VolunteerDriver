CREATE TABLE [dbo].[tblVehicle] (
    [VehicleID]            INT           IDENTITY (1, 1) NOT NULL,
    [Year]                 INT           NULL,
    [Make]                 VARCHAR (50)  NULL,
    [Model]                VARCHAR (50)  NULL,
    [VIN]                  VARCHAR (100) NULL,
    [LicensePlate]         VARCHAR (50)  NULL,
    [NumberAssigned]       INT           NULL,
    [Type]                 VARCHAR (50)  NULL,
    [MNDOTMaintenanceDate] DATETIME      NULL,
    [Active]               BIT           CONSTRAINT [DF_tblVehicle_Active] DEFAULT ((1)) NOT NULL,
    [DriverID]             INT           NULL,
    [VehicleDesc]          VARCHAR (100) NULL,
    [UserCreated]          VARCHAR (50)  CONSTRAINT [DF_tblVehicle_UserCreated] DEFAULT (suser_sname()) NULL,
    [DateCreated]          DATETIME      CONSTRAINT [DF_tblVehicle_DateCreated] DEFAULT (getdate()) NULL,
    [UserUpdated]          VARCHAR (50)  CONSTRAINT [DF_tblVehicle_UserUpdated] DEFAULT (suser_sname()) NULL,
    [DateUpdated]          DATETIME      CONSTRAINT [DF_tblVehicle_DateUpdated] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_tblVehicle] PRIMARY KEY CLUSTERED ([VehicleID] ASC)
);

