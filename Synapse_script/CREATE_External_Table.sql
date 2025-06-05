CREATE DATABASE SCOPED CREDENTIAL your_credential_name WITH IDENTITY = 'Managed Identity';

CREATE EXTERNAL DATA SOURCE gold_source 
WITH (
    LOCATION = 'https://apartmentdatastorage.blob.core.windows.net/gold/',
    CREDENTIAL = your_credential_name
);

CREATE EXTERNAL FILE FORMAT parquet_format
WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);

-- CREATE ext_apartment table
CREATE EXTERNAL TABLE gold.ext_apartment WITH 
(
    LOCATION = 'ext_apartment',
    DATA_SOURCE = gold_source,
    FILE_FORMAT = parquet_format
)
AS
SELECT * FROM gold.apartment;

-- TESTING
SELECT * FROM gold.ext_apartment;