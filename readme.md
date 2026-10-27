
# Azure End-to-End Data Engineering Pipeline

## Project Overview
Built an end-to-end cloud data engineering pipeline using Azure services to ingest, transform, store, and visualize data.

## Architecture
HTTP Source → Azure Data Factory → ADLS Gen2 Bronze → Azure Databricks Silver → Synapse Analytics Gold → Power BI

## Technologies Used
- Azure Data Factory
- Azure Data Lake Storage Gen2
- Azure Databricks and PySpark
- JSON and Parquet
- Azure Synapse Analytics
- SQL and Power BI

## Data Pipeline Workflow

### 1. Bronze Layer
- Retrieved data from an HTTP source using Azure Data Factory.
- Created JSON files and stored raw data in ADLS Gen2.

### 2. Silver Layer
- Used Azure Databricks and PySpark to transform the raw data.
- Stored the processed data in Parquet format.

### 3. Gold Layer
- Created SQL views and external tables in Azure Synapse Analytics.
- Prepared processed datasets for analytical queries.

### 4. Power BI
- Connected Power BI to Synapse Analytics.
- Created visualizations and dashboards.

## Repository Structure
- `adf/` - Data Factory pipeline exports
- `databricks/` - Transformation notebooks
- `synapse/` - SQL scripts
- `powerbi/` - Dashboard files and screenshots
- `architecture/` - Architecture diagram
- `screenshots/` - Project execution evidence

## Results
Document the actual datasets processed, transformations performed,
and dashboard insights observed.

## Author
Sudi Srinadh
