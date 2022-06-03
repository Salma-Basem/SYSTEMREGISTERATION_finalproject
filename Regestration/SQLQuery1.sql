CREATE TABLE [dbo].[SCHEDULE] (
    [StartDay] NVARCHAR (20) NOT NULL,
    [EndDay]   NVARCHAR (20) NOT NULL,
    [fTime]    NVARCHAR (20) NOT NULL,
    [tTime]    NVARCHAR (20) NOT NULL,
    [Group]    NVARCHAR (20) NOT NULL,
    [ID]       NCHAR (10)    NOT NULL,
    [CourseName] NVARCHAR(20) NOT NULL, 
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

