# Azure Data Pipeline Project

A project to build a data pipeline using Azure tools, following the Medallion architecture for efficient data processing and analytics.

## Overview
This project demonstrates how to create a data pipeline using Azure tools to ingest, process, and analyze data from various sources (CRM, ERP, LOB). The pipeline follows a three-layer architecture (Bronze, Silver, Gold) to ensure data quality and enable advanced analytics, BI reporting, and machine learning.

## Pipeline Architecture
![image](https://github.com/user-attachments/assets/9da2ac3f-1999-4ad0-af0e-86920af59bb0)
- **Data Ingestion**: Collect raw data from HTTP endpoint into the Bronze layer.
- **Data Processing**: Clean, filter, and augment data in the Silver layer.
- **Data Transformation**: Transform data into business-level insights in the Gold layer.
- **Analytics & ML**: Support streaming analytics, BI reporting, and data science/ML workflows. However, this project focuses on Power BI reporting.

## Technologies Used
- Azure Data Factory (For ingestion)
- Azure Databricks (For processing)
- Azure Synapse Analytics (For analytics)
- Power BI (For reporting)



## Getting Started
1. Clone the repository:


