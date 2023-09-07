CREATE TABLE [dbo].[ImageResolutions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ImageResolution] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [dbo].[ImageResolutions] ([Name]) VALUES ('Original')
INSERT INTO [dbo].[ImageResolutions] ([Name]) VALUES ('Hd')
INSERT INTO [dbo].[ImageResolutions] ([Name]) VALUES ('FullHd')