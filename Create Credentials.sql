CREATE DATABASE SCOPED CREDENTIAL cred_rishi
WITH
    IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://projectstorageaccounts.blob.core.windows.net/gold',
    CREDENTIAL = cred_rishi
)


CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

