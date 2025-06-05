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

## About parameters_config.json:
I used this JSON File to config a dynamic 

## Getting Started
1. Create Azure Free Account.
2. Create a new resource group to hold related resources within an Azure solution.
3. Create Azure Data Factory (ADF):
   ![image](https://github.com/user-attachments/assets/65c1909b-21eb-4934-b5f0-7d322bced27f)
   - In ADF, click on Author tab and create a Pipeline with 3 activities: Lookup, ForEach and CopyData for copying data from HTTP source and store its raw data in bronze container.
4. Create Databricks and using PySpark script for cleaning data.
5. In the end, we will use Synapse script to query datas from silver container and serving in Power BI for analyze. To connect to Azure Data Lake Gen2 via Power BI, we need 2 important components: MASTER KEY and Serverless SQL End-point. After the connection is successfully, we will be able to analyze these insights, the image below is my example analysis:
   ![image](https://github.com/user-attachments/assets/9f8362df-1b03-41d9-acfe-2135b2fd37fb)



