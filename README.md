# Azure End-to-End Data Engineering Project

An end-to-end data engineering project using Azure Data Factory, Azure Data Lake Storage Gen2, Azure Databricks, Azure Synapse Analytics, and Microsoft Power BI to process and analyze sales data.

## 📌 Project Overview

This project demonstrates how sales data can be ingested, stored, transformed, and analyzed using Azure data engineering services. It follows a Bronze-to-Silver data processing architecture and uses Synapse SQL and Power BI to provide business insights through an interactive sales dashboard.

## 🏗️ Architecture

```text
Source Data (HTTP / REST)
          |
          v
Azure Data Factory
          |
          v
Azure Data Lake Storage Gen2
      Bronze Layer
       (Raw CSV)
          |
          v
Azure Databricks + PySpark
          |
          v
Azure Data Lake Storage Gen2
     Silver Layer
   (Transformed Data)
          |
          v
Azure Synapse Analytics
    (SQL Views / Queries)
          |
          v
Microsoft Power BI
 (Interactive Dashboard)
```

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Azure Data Factory (ADF) | Data ingestion and pipeline orchestration |
| Azure Data Lake Storage Gen2 | Storage for raw and transformed datasets |
| Azure Databricks | Distributed data processing |
| PySpark | Data transformation and cleaning |
| Azure Synapse Analytics | SQL queries and analytical data access |
| Microsoft Power BI | Interactive dashboards and visualizations |
| SQL | Data querying and analysis |


## 🔄 Project Workflow

### 1. Data Ingestion — Azure Data Factory

- Configured linked services and datasets to connect to data sources and Azure storage.
- Created a pipeline to ingest source files.
- Used pipeline activities to move data into the Bronze layer.
- Monitored pipeline execution and checked activity status.

### 2. Data Storage — ADLS Gen2

Organized the data lake into layers:

- **Bronze:** Stores ingested raw data in CSV format.
- **Silver:** Stores cleaned and transformed data, including Parquet files where applicable.
- **Gold / Reporting:** Analytics-ready SQL views can be exposed through Synapse. A separate physical Gold layer is not claimed unless explicitly materialized.

### 3. Data Transformation — Azure Databricks

Used PySpark to:

- Read source data from the Bronze layer.
- Inspect schemas and data quality.
- Perform transformations and apply business rules.
- Write transformed datasets to the Silver layer.

### 4. SQL Analytics — Azure Synapse Analytics

- Configured SQL access to data stored in Azure Data Lake Storage.
- Created SQL views or external objects to query transformed datasets.
- Used SQL to prepare data for reporting and analysis.

### 5. Data Visualization — Power BI

Built an interactive **Executive Sales Overview** dashboard with:

- Total Orders
- Total Quantity
- Unique Customers
- Unique Products
- Monthly Order Quantity Trend
- Top 10 Products by Order Quantity
- Orders by Territory
- Date, Territory, and Product slicers

## 📊 Business Metrics

| Metric | Description |
|---|---|
| Total Orders | Number of distinct sales orders |
| Total Quantity | Total units ordered |
| Unique Customers | Number of distinct customers in the sales data |
| Unique Products | Number of distinct products ordered |
| Average Units per Order | Total quantity divided by distinct order count |

These metrics help analyze order volume, product demand, customer activity, and territory-level order performance.

**Note:** The current dashboard measures order activity and quantities, not monetary sales revenue or profit. Revenue analysis requires product price data, and profit analysis additionally requires cost data.

## 📁 Repository Structure

```text
azure-end-to-end-data-engineering/
├── README.md
├── .gitignore
├── architecture/
│   └── architecture.png
├── adf/
│   ├── README.md
│   ├── pipeline/
│   ├── dataset/
│   └── linkedService/
├── databricks/
│   ├── README.md
│   └── silver_transformation.py
├── synapse/
│   ├── README.md
│   └── views.sql
├── powerbi/
│   └── README.md
└── screenshots/
    └── sales_dashboard.png
```

*Include only files and folders that actually exist in your project. Replace example filenames with your exported files.*

## ▶️ How to Explore the Project

1. Review the architecture and pipeline documentation.
2. Inspect the exported Azure Data Factory pipeline JSON files.
3. Review the Databricks notebook source and PySpark transformations.
4. Examine the Synapse SQL scripts.
5. View the Power BI dashboard screenshots or open the `.pbix` file if included.

Azure resources, access permissions, credentials, and storage paths must be configured appropriately to execute the pipeline.

## 🎯 Project Outcomes

- Implemented a cloud-based data ingestion and transformation workflow.
- Practiced Azure Data Factory pipeline orchestration.
- Processed datasets using Databricks and PySpark.
- Enabled SQL-based analysis of transformed data.
- Developed a Power BI dashboard for reporting


## 👨‍💻 Author

**Srinadh Sudi**

Azure Data Engineering | Python | SQL | PySpark | Power BI

