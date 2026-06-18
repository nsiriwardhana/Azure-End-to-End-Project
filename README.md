# End-to-End Azure Data Engineering Project

This project demonstrates an end-to-end Azure data engineering pipeline using the AdventureWorks dataset and medallion architecture.

## Architecture

Source files were ingested using Azure Data Factory and stored in the Bronze layer of Azure Data Lake Storage Gen2. Azure Databricks and PySpark were used to clean, transform, and consolidate the data. The transformed datasets were stored in Parquet format in the Silver layer.

Azure Synapse Analytics serverless SQL was then used to query the Silver-layer data and create Gold-layer views for customers, products, sales, returns, territories, and calendar data.

## Technologies

- Azure Data Factory
- Azure Data Lake Storage Gen2
- Azure Databricks
- PySpark
- Azure Synapse Analytics
- SQL
- Parquet
- Microsoft Entra ID
- Medallion Architecture

## Data Flow

Bronze → Silver → Gold

## Key Transformations

- Schema inference and data-type handling
- Column renaming and data cleaning
- Date transformations
- Consolidation of sales data from 2015–2017
- Conversion from CSV to Parquet
- Creation of SQL views for analytics
