## 📊 Sales Dashboard — Metrics and Business Insights

### 1. Overview

The Power BI dashboard analyzes sales order data from the `gold_extsales` table in Azure Synapse Analytics. It helps users understand order volume, product demand, customer activity, and sales territory performance.

### 2. Key Performance Indicators (KPIs)

| KPI | Calculation | Business Purpose |
|---|---|---|
| Total Orders | Distinct count of `OrderNumber` | Measures the number of unique orders received. |
| Total Quantity | Sum of `OrderQuantity` | Measures the total number of units ordered. |
| Unique Customers | Distinct count of `CustomerKey` | Identifies the number of different customers in the sales records. |
| Unique Products | Distinct count of `ProductKey` | Measures the number of different products ordered. |
| Average Units per Order | Total Quantity / Total Orders | Measures the average number of units per order. |

### 3. Dashboard Visualizations

- **Monthly Order Quantity Trend:** Shows how order quantities change over time and helps identify demand patterns.
- **Top 10 Products by Order Quantity:** Identifies the products with the highest quantities ordered.
- **Orders by Territory:** Compares the number of unique orders across sales territories.
- **Date Slicer:** Filters sales activity by a selected date or date range.
- **Territory Slicer:** Enables analysis of individual sales territories.
- **Product Slicer:** Enables users to analyze selected products.

### 4. Business Benefits

- Monitor order volume and product demand.
- Identify popular products for inventory planning.
- Compare order activity across sales territories.
- Analyze changes in demand over time.
- Support data-driven business decisions through interactive reporting.

### 5. Technology Stack

- **Azure Data Factory:** Data ingestion and pipeline orchestration.
- **Azure Data Lake Storage Gen2:** Stores raw and transformed data.
- **Azure Databricks and PySpark:** Data transformation and processing.
- **Azure Synapse Analytics:** SQL-based access to analytics-ready data.
- **Microsoft Power BI:** Interactive dashboard and data visualization.

### 6. Important Note

The current dashboard focuses on order volume and product activity. It does not directly calculate revenue, profit, or sales value because the measures currently use order quantities and identifiers rather than monetary values. Revenue and profit analysis require appropriate product price and cost data.

### 7. Outcome

Developed an end-to-end Azure data engineering solution that processes sales data through a Bronze-to-Silver architecture, exposes analytics-ready data through Synapse SQL, and presents business insights using an interactive Power BI dashboard.



---PLS DON'T MIND THE VISUALIZATION COLOURS TRY TO CHANGE IN YOUR OWN----