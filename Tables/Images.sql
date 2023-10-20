CREATE TABLE [dbo].[Images]
(
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](250) NOT NULL,
	[Resolution] [int] NOT NULL,
	[ImageGroupId] [bigint] NOT NULL,
	
	CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Images_ImageGroups] FOREIGN KEY([Id]) REFERENCES [dbo].[ImageGroups] ([Id])
)