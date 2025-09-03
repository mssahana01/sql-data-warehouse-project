# Data Warehouse and Analytics project


---


## 🚀 Project Overview
**Goal:** Build a modern data warehouse on **SQL Server** to consolidate sales data from two source systems (ERP and CRM). Deliver a clean, integrated data model and SQL-based analytics that provide actionable insights into customer behavior, product performance, and sales trends.

---

## Objectives
### Data Engineering (Data Warehouse)
- Consolidate ERP and CRM CSV exports into a single, analytics-ready data model on SQL Server.
- Cleanse and resolve data-quality issues prior to loading.
- Integrate both sources into a user-friendly dimensional model optimized for analytical queries.
- Scope limited to the **latest dataset only** — historization (slowly changing dimensions / time travel) is **not** required.

### Analytics & Reporting (Data Analysis)
- Provide SQL-based analytics delivering:
  - **Customer behavior** (e.g., retention, purchase frequency, revenue by customer)
  - **Product performance** (top products, product-level revenue, returns)
  - **Sales trends** (time-series sales, channel comparisons)
- Deliver sample queries and documentation so business users and analysts can easily adopt and extend analyses.

---

## Project Specifications
### Data Sources
- Two CSV files supplied:
  - `erp_sales.csv` — transactional sales & product master fields from ERP
  - `crm_customers.csv` — customer master & activity information from CRM

### Data Quality
- Validate and standardize key fields (IDs, dates, currency amounts).
- Handle missing/invalid values (impute, remove, or flag per documented business rules).
- Deduplicate records where appropriate.

### Integration & Data Model
- Recommended model: **star schema** with:
  - Fact table: `fact_sales` (one row per sales transaction)
  - Dimension tables: `dim_customer`, `dim_product`, `dim_date`, `dim_sales_channel`
- Focus on simplest normalized approach to support SQL analytics.

### Documentation
- Provide ER diagram (PDF or PNG) and schema DDL (CREATE TABLE scripts).
- Include data dictionary describing every field, expected values, and transformation rules.

---




