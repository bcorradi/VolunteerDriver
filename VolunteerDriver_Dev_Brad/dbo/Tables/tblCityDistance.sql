CREATE TABLE [dbo].[tblCityDistance] (
    [Cityid]   INT          IDENTITY (1, 1) NOT NULL,
    [BaseCity] VARCHAR (50) NULL,
    [TestCity] VARCHAR (50) NULL,
    [Distance] INT          NULL,
    [Rank]     INT          NULL,
    CONSTRAINT [PK_tblCityDistance] PRIMARY KEY CLUSTERED ([Cityid] ASC)
);

