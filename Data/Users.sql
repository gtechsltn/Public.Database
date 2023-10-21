DECLARE @Table TABLE ([Name] NVARCHAR(50), Email NVARCHAR(50))

INSERT INTO @Table VALUES ('System', 'system@system.com')

MERGE INTO Users T USING @Table S ON S.Email = T.Email
WHEN NOT MATCHED BY TARGET THEN INSERT ([Name], Email) VALUES (src.[Name], src.Email);