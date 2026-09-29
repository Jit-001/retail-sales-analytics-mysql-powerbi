GitHub README — Retail Sales Analytics

Retail Sales & Profitability Analytics

End-to-End Data Analytics Project

An end-to-end retail analytics project built using MySQL, SQL and Power BI to analyze sales, profitability, products, customers, regions and payment methods.
The project transforms retail transaction data into an interactive Power BI dashboard designed to support business performance analysis and decision-making.

Project Overview

The objective of this project is to understand retail business performance across different dimensions such as:
•	Sales
•	Profit
•	Profit Margin
•	Products
•	Categories
•	Customers
•	Regions
•	Cities
•	Payment Methods
•	Monthly and Quarterly Performance
The project uses SQL for data preparation and analysis and Power BI for data modeling, DAX calculations and interactive visualization.

Business Objectives

This project was developed to answer important business questions such as:
•	What are the total sales and total profit?
•	How is sales performance changing month by month?
•	Which categories generate the most profit?
•	Which products generate the highest sales and profit?
•	Which regions contribute the most sales?
•	Which cities generate significant sales?
•	Who are the highest-value customers?
•	Which payment methods are most frequently used?
•	How does profitability vary across quarters?
•	What is the overall profit margin?
•	Which products and categories require further investigation?

Technology Stack

•	MySQL
•	MySQL Workbench
•	SQL
•	Power BI
•	DAX
•	CSV
•	GitHub

Data Analytics Workflow

Raw Retail Data
       ↓
MySQL Staging
       ↓
Data Cleaning & Validation
       ↓
Dimensional Modeling
       ↓
Fact & Dimension Tables
       ↓
Power BI Data Model
       ↓
DAX Measures
       ↓
Interactive Power BI Dashboard
       ↓
Business Insights

Dashboard Pages

1. Executive Overview
   
The Executive Overview provides a high-level view of overall retail performance.
It includes:
•	Total Sales
•	Total Profit
•	Total Orders
•	Total Units
•	Profit Margin
•	Average Order Value
•	Monthly Sales & Profit Trend
•	Sales by Category
•	Profit by Category
•	Sales by Region
The dashboard allows users to analyze overall business performance and identify changes in sales and profitability over time.

2. Product & Category Performance
   
This page focuses on product and category-level performance.
It includes:
•	Top 5 Products by Sales
•	Top 5 Products by Profit
•	Sales by Category
•	Profit by Category
•	Subcategory-level analysis
•	Profit Margin %
•	Orders
•	Units
The analysis helps identify products and categories that contribute significantly to sales and profitability.

3. Customer & Geographic Performance
   
This page analyzes customer and geographic performance.
It includes:
•	Total Customers
•	Customers by Region
•	Sales by Region
•	Sales by City
•	Top Customers
•	Customer Orders
•	Units Purchased
•	Sales
•	Profit
•	Maximum and Minimum Spend
The analysis helps understand where sales are generated and which customers contribute significantly to business performance.

4. Business Insights
   
The Business Insights page focuses on deeper business-level analysis.
It includes:
•	Monthly Sales
•	Month-over-Month Sales Change
•	Quarterly Profit
•	Category Sales and Profit
•	Customer Orders by Payment Method
•	Profit Contribution by Quarter
The page is designed to identify changes in performance and provide additional insights beyond basic KPI reporting.

Selected Dashboard Insights

Sales Performance

The dashboard reports total sales of approximately $533.67M and total profit of approximately $79.71M, resulting in an overall profit margin of 14.94%.
Regional Performance
Sales are distributed across four regions:
•	North: approximately $143.58M
•	East: approximately $135.81M
•	West: approximately $131.05M
•	South: approximately $123.23M
Category Profitability
The category analysis shows relatively strong profit contribution across multiple categories, including:
•	Furniture
•	Home Decor
•	Clothing
•	Books
•	Electronics
•	Toys
•	Kitchen
•	Sports
•	Beauty
•	Groceries
Product Performance
The Product & Category page identifies the highest-performing products by sales and profit.
The leading product shown in the dashboard is Headphones Accusantium, with approximately:
•	Sales: $0.86M
•	Profit: $142K
Quarterly Profit
The Business Insights page shows total profit of approximately $79.71M, distributed across the four quarters.
This allows quarterly profitability to be compared and investigated alongside monthly performance.
Payment Methods
The dashboard compares customer orders across:
•	Net Banking
•	Debit Card
•	COD
•	Credit Card
•	UPI
This provides visibility into customer ordering behavior by payment method.

SQL Skills Demonstrated

The SQL portion of the project focuses on preparing and analyzing the retail data.
Skills demonstrated include:
•	Database creation
•	Table creation
•	CSV data ingestion
•	Staging tables
•	Data cleaning
•	NULL handling
•	Duplicate detection
•	Data validation
•	Data type conversion
•	JOINs
•	GROUP BY
•	Aggregations
•	Common Table Expressions (CTEs)
•	Window Functions
•	Fact and Dimension Tables
•	Dimensional Modeling
•	Business Analysis Queries

Power BI Skills Demonstrated

The Power BI solution demonstrates:
•	Data loading
•	Data transformation
•	Data modeling
•	Star schema design
•	Relationships
•	Date-based analysis
•	DAX measures
•	KPI cards
•	Slicers
•	Bookmarks for navigation
•	Interactive filtering
•	Monthly trend analysis
•	Quarter analysis
•	Top N analysis
•	Category analysis
•	Product analysis
•	Customer analysis
•	Geographic analysis
•	Conditional formatting
•	Interactive dashboard design

Data Model

The analytical model is designed around a central sales fact table and supporting dimension tables.
Fact Table
•	fact_sales

Dimension Tables
•	dim_date
•	dim_customer
•	dim_product
•	dim_location
•	dim_payment_mode
The dimensional model supports analysis of sales, profit, customers, products, locations and payment methods.

Project Outcome
This project demonstrates an end-to-end analytics workflow from raw retail data to an interactive business intelligence solution.
The final Power BI dashboard provides a consolidated view of:
Sales → Profit → Products → Customers → Geography → Payment Methods → Business Insights
The project demonstrates how SQL and Power BI can be combined to transform transactional data into meaningful business analysis.

Author
Jitendra Arora
Aspiring Data Analyst | SQL | Power BI | DAX | Data Analytics
