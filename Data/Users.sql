DECLARE @Table TABLE ([Name] NVARCHAR(50), Email NVARCHAR(50))

INSERT INTO @Table VALUES ('System', 'system@system.com')

SET IDENTITY_INSERT Users ON

MERGE INTO Users T USING @Table S ON S.Email = T.Email
WHEN NOT MATCHED BY TARGET THEN INSERT ([Id], [Name], Email, CreatedBy, CreatedOn) VALUES (1, S.[Name], S.Email, 1, GETDATE());

SET IDENTITY_INSERT Users OFF

GO