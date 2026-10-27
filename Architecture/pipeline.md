
# Data Pipeline Architecture

1. HTTP source provides the input dataset.
2. Azure Data Factory retrieves the source data and writes JSON files to the Bronze layer.
3. Azure Databricks reads Bronze data, performs transformations, and writes Parquet files to Silver.
4. Azure Synapse Analytics exposes processed data through SQL views and external tables for the Gold layer.
5. Power BI connects to Synapse Analytics for reporting and visualization.

## Data Layers
- Bronze: Raw JSON data
- Silver: Transformed Parquet data
- Gold: Analytics-ready data exposed through Synapse SQL objects
