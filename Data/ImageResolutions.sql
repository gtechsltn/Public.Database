DECLARE @Table TABLE ([Name] NVARCHAR(25))

INSERT INTO @Table VALUES ('Original'), ('Hd'), ('FullHd')

MERGE INTO ImageResolutions T USING @Table S ON S.[Name] = T.[Name]
WHEN NOT MATCHED BY SOURCE THEN DELETE
WHEN NOT MATCHED BY TARGET THEN INSERT ([Name], CreatedBy, CreatedOn) VALUES (S.[Name], 1, GETDATE());

GO