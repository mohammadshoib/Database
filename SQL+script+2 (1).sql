USE demoDB
GO

CREATE EXTERNAL FILE FORMAT parquetFileFormat
WITH
(  
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)