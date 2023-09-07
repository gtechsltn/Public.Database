CREATE TABLE [dbo].[Images](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](250) NOT NULL,
	[Resolution] [int] NOT NULL,
	[ImageGroupId] [bigint] NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_ImageGroups] FOREIGN KEY([Id])
REFERENCES [dbo].[ImageGroups] ([Id])
GO

ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_ImageGroups]
GO