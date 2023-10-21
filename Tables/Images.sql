CREATE TABLE Images
(
	Id BIGINT IDENTITY(1,1) NOT NULL,
	[Guid] UNIQUEIDENTIFIER NOT NULL,
	[Url] NVARCHAR(250) NOT NULL,
	Resolution INT NOT NULL,
	ImageGroupId BIGINT NOT NULL,

	CreatedBy NVARCHAR(50) NOT NULL,
	CreatedOn DATETIME2(0) NOT NULL,
	ModifiedBy NVARCHAR(50) NULL,
	ModifiedOn DATETIME2(0) NULL,
	
	CONSTRAINT PK_Images PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT FK_Images_ImageGroups FOREIGN KEY(Id) REFERENCES ImageGroups (Id)
)