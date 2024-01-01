DECLARE @GIF_ID BIGINT, @JPEG_ID BIGINT, @PNG_ID BIGINT

SELECT @GIF_ID = Id FROM ImageTypes WHERE [Name] = 'Graphics Interchange Format';
SELECT @JPEG_ID = Id FROM ImageTypes WHERE [Name] = 'Joint Photographic Expert Group';
SELECT @PNG_ID = Id FROM ImageTypes WHERE [Name] = 'Portable Network Graphics';

DECLARE @Table TABLE (ImageType BIGINT NOT NULL, FileExtension NVARCHAR(4) NOT NULL)

INSERT INTO @Table VALUES (@GIF_ID, 'gif'), (@JPEG_ID, 'jpeg'), (@JPEG_ID, 'jpg'), (@PNG_ID, 'png')

MERGE INTO ImageFileExtensions T USING @Table S ON S.ImageType = T.ImageType AND S.FileExtension = T.FileExtension
WHEN NOT MATCHED BY SOURCE THEN DELETE
WHEN NOT MATCHED BY TARGET THEN INSERT (ImageType, FileExtension, CreatedBy, CreatedOn) VALUES (S.ImageType, S.FileExtension, 1, GETDATE());

GO