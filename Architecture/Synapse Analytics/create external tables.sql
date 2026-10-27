CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'DEFAULT_PASSWORD_1234' 
CREATE DATABASE SCOPED CREDENTIAL cred_srinadh WITH IDENTITY = 'Managed Identity'

---2  external data source---
CREATE EXTERNAL DATA SOURCE souce_silver
WITH(
    LOCATION =  'https://srinadhgen2007.dfs.core.windows.net/silver/',
    CREDENTIAL = cred_srinadh

)
CREATE EXTERNAL DATA SOURCE souce_gold
WITH(
    LOCATION =  'https://srinadhgen2007.dfs.core.windows.net/gold/',
    CREDENTIAL = cred_srinadh

)
CREATE EXTERNAL FILE FORMAT format_parquet
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'


)
  ---creating external tables---
  CREATE EXTERNAL TABLE gold.extsales WITH ( LOCATION = 'ext_sales',DATA_SOURCE = souce_gold,FILE_FORMAT = format_parquet) as select * FROM gold.sales