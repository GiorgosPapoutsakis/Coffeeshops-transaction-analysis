# Analysis Report - Business Intelligence & Big Data Analysis

## Overview
Α comprehensive analysis of coffee sales data, conducted as part of the **Business Intelligence and Big Data Analysis** course. The analysis includes:
- Data preprocessing
- Database creation
- ETL processes
- OLAP cube generation
- Data visualization
- Data mining techniques

## Dataset
- **Source:** [Kaggle - Coffee Sales Dataset](https://www.kaggle.com/datasets/ahmedabbas757/coffee-sales)
- **Size:** 149,116 rows, 11 columns
- **Period:** 01/01/2023 – 30/06/2023

## Data Cleaning
- Identified and resolved transaction ID inconsistencies.
- Outlier analysis confirmed reasonable pricing variations.
- Cleaned dataset stored as a new CSV file.

## Database Schema
- Implemented a Star Schema in SQL Server:
- Database setup in SQL Server Management Studio (SSMS).

## ETL Process
- Utilized SQL Server Integration Services (SSIS).
- Extracted data from CSV, transformed it, and loaded it into the database.
- Automated workflows for efficient data ingestion.

## OLAP Cube
- Built using SQL Server Analysis Services (SSAS) for multidimensional data analysis.
- Included Fact Table as measure group and Dimension Tables for slicing and dicing.

## Data Visualization
- **Tool Used:** Power BI Desktop
- **Visuals Created:**
  - Revenue over time
  - Transactions over time
  - Geospatial map
  - Transactions by time of the day
  - Sales by product category
  - Product sales quantities matrix
- **Filters Implemented:**
  - Store Selection
  - Month
  - Weekday

## Data Mining
### Clustering (K-Means)
- Grouped transactions based on purchased product types.
- **Clusters Identified:**
  1. Warm Beverage Enjoyers
  2. Gourmet Coffee Lovers
  3. Espresso Fans
  4. Classic Coffee Lovers
  5. Chai Tea Enthusiasts

### Association Rules (Apriori Algorithm)
- Identified frequent product pairs purchased together.
- Extracted top 5 rules with highest confidence scores.

## Tools & Technologies
| Category         | Tools Used |
|-----------------|------------|
| **Programming** | Python (Jupyter Notebook) |
| **Database & ETL** | SQL Server, SSMS, SSIS |
| **Visualization** | Power BI |
| **Machine Learning** | Scikit-learn (K-Means), MLxtend (Apriori) |
