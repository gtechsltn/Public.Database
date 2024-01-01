DECLARE @Table TABLE ([Name] NVARCHAR(50), Abbreviation NVARCHAR(4))

INSERT INTO @Table VALUES ('Graphics Interchange Format', 'GIF'), ('Joint Photographic Expert Group', 'JPEG'), ('Portable Network Graphics', 'PNG')

MERGE INTO ImageTypes T USING @Table S ON S.[Name] = T.[Name]
WHEN NOT MATCHED BY SOURCE THEN DELETE
WHEN NOT MATCHED BY TARGET THEN INSERT ([Name], Abbreviation, CreatedBy, CreatedOn) VALUES (S.[Name], 1, GETDATE())
WHEN MATCHED THEN UPDATE SET Abbreviation = S.Abbreviation;
GO