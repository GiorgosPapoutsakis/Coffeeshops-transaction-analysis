Analysis Report - Business Intelligence & Big Data Analysis

Overview

This project is a comprehensive analysis of coffee sales data, conducted as part of the Business Intelligence and Big Data Analysis course. The analysis includes data preprocessing, database creation, ETL processes, cube generation, data visualization, and data mining techniques.

Dataset

Source: Kaggle (Coffee Sales Dataset)

Period: 01/01/2023 – 30/06/2023

Size: 149,116 rows, 11 columns

Main Attributes: transaction_id, transaction_date, store_id, product_id, unit_price, etc.

Data Cleaning

Identified and resolved transaction ID inconsistencies.

No duplicate or null values found.

Outlier analysis confirmed reasonable pricing variations.

Added new calculated columns (e.g., time_of_day, day_name, latitude, longitude).

Cleaned dataset stored as a new CSV file.

Database Schema

Implemented a Star Schema in SQL Server:

Fact Table: Transactions

Dimension Tables: Store, Product, Date, Time

Database setup in SQL Server Management Studio.

ETL Process

Utilized SQL Server Integration Services (SSIS).

Extracted data from CSV, transformed it, and loaded it into the database.

Staging table used for temporary data storage.

Automated workflows for efficient data ingestion.

OLAP Cube

Built using SQL Server Analysis Services (SSAS).

Created a cube for multidimensional data analysis.

Included Fact Table as measure group and Dimension Tables for slicing and dicing.

Processed and validated using the SSAS browser.

Data Visualization

Tool Used: Power BI Desktop

Visuals Created:

Column & Line Charts (Revenue & Transactions over Time)

Geospatial Map (Store Locations & Sales Volume)

Pie & Bar Charts (Sales by Product Category/Type)

Matrix Table (Product Sales Quantities)

Filters Implemented: Store Selection, Month, Weekday

Created supporting tables for proper sorting of months and weekdays.

Data Mining

Clustering (K-Means)

Grouped transactions based on purchased product types.

Optimal clusters: 5, representing different customer preferences.

Clusters:

Warm Beverage Enjoyers

Gourmet Coffee Lovers

Espresso Fans

Classic Coffee Lovers

Chai Tea Enthusiasts

Association Rules (Apriori Algorithm)

Identified frequent product pairs purchased together.

Minimum support: 4%, Lift: > 1.

Extracted top 5 rules with highest confidence scores.

Tools & Technologies

Programming & Scripting: Python (Jupyter Notebook)

Database & ETL: SQL Server, SSMS, SSIS

Analytics & Visualization: SSAS, Power BI

Machine Learning: Scikit-learn (K-Means), MLxtend (Apriori)

