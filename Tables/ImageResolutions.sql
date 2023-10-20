CREATE TABLE [dbo].[ImageResolutions]
(
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL

	CONSTRAINT [PK_ImageResolution] PRIMARY KEY CLUSTERED ([Id] ASC)
)