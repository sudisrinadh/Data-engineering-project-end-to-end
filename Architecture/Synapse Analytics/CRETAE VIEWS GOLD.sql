CREATE VIEW gold.customers AS
SELECT *
FROM OPENROWSET(
    BULK 'https://srinadhgen2007.dfs.core.windows.net/silver/customers/',
    FORMAT = 'PARQUET'
) AS query1;

----like these u need to create views for all the tables in silver layer