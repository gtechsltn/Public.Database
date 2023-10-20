DECLARE @Table TABLE
(
    [Value] NVARCHAR(25)
)

INSERT INTO @Values VALUES ('Original'), ('Hd'), ('FullHd')

MERGE INTO ImageResolutions tgt USING @Table src ON I.[Name] = T.[Name]
WHEN NOT MATCHED BY SOURCE THEN DELETE
WHEN NOT MATCHED BY TARGET THEN INSERT ([Name]) VALUES (src.[Name]);