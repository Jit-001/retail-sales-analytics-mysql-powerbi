📊 Retail Sales & Profitability Analytics
End-to-End Data Analytics & Business Intelligence Project

MySQL · SQL · Power BI · DAX · Data Modeling

An end-to-end retail analytics project that transforms transactional sales data into actionable business insights using MySQL, SQL, and Power BI.

The project analyzes sales, profitability, products, customers, geography, and payment methods through a structured analytical workflow and an interactive Power BI dashboard designed to support business performance analysis and decision-making.

👤 Author
Jitendra Arora

Data Analyst | Business Intelligence | SQL | Power BI

This project is developed and maintained by Jitendra Arora as part of a professional data analytics portfolio.

📌 Project Overview

The objective of this project is to analyze retail business performance across multiple dimensions and identify patterns that can support data-driven decision-making.

Key Areas of Analysis

💰 Sales & Revenue

📈 Profit & Profit Margin

🛍️ Products & Categories

👥 Customers

🌎 Regions & Cities

💳 Payment Methods

📅 Monthly & Quarterly Performance

📊 Business Performance Trends

The project combines SQL-based data preparation and analysis with Power BI data modeling, DAX calculations, and interactive visualization.

🎯 Business Objectives

The analysis was designed to answer key business questions such as:

What are the total sales, profit, and profit margin?

How does sales performance change month over month?

Which product categories generate the most sales and profit?

Which products are the highest performers?

Which regions and cities contribute the most sales?

Who are the highest-value customers?

Which payment methods are most frequently used?

How does profitability vary across quarters?

Which products and categories require further investigation?

What are the major trends in sales and profitability?

🛠️ Technology Stack
Technology	Purpose
MySQL	Database management and data preparation
SQL	Data cleaning, transformation & business analysis
MySQL Workbench	Database development and SQL execution
Power BI	Data modeling and interactive visualization
DAX	Measures, KPIs and analytical calculations
CSV	Source data
GitHub	Version control and project documentation
🔄 Data Analytics Workflow
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

📊 Power BI Dashboard

The Power BI solution is organized into four analytical sections.

1. Executive Overview

Provides a high-level view of overall retail performance.

Key KPIs

Total Sales

Total Profit

Total Orders

Total Units

Profit Margin

Average Order Value

Visual Analysis

Monthly Sales & Profit Trend

Sales by Category

Profit by Category

Sales by Region

This page provides a consolidated view of overall business performance and helps identify changes in sales and profitability over time.

2. Product & Category Performance

Focuses on product- and category-level performance.

Analysis Includes

Top 5 Products by Sales

Top 5 Products by Profit

Sales by Category

Profit by Category

Subcategory Analysis

Profit Margin %

Orders

Units Sold

This analysis helps identify products and categories that contribute significantly to overall sales and profitability.

3. Customer & Geographic Performance

Analyzes customer behavior and geographic sales performance.

Analysis Includes

Total Customers

Customers by Region

Sales by Region

Sales by City

Top Customers

Customer Orders

Units Purchased

Customer Sales

Customer Profit

Maximum & Minimum Spend

This analysis provides visibility into where sales are generated and which customers contribute significantly to business performance.

4. Business Insights

Provides deeper analytical views beyond standard KPI reporting.

Analysis Includes

Monthly Sales

Month-over-Month Sales Change

Quarterly Profit

Category Sales & Profit

Customer Orders by Payment Method

Profit Contribution by Quarter

The purpose of this page is to identify performance trends and provide additional business context for decision-making.

💡 Key Dashboard Insights
💰 Sales & Profitability

The dashboard reports approximately:

KPI	Value
Total Sales	$533.67M
Total Profit	$79.71M
Profit Margin	14.94%

These KPIs provide a consolidated view of the overall financial performance represented in the dataset.

🌎 Regional Performance

Sales are distributed across four regions:

Region	Sales
North	~$143.58M
East	~$135.81M
West	~$131.05M
South	~$123.23M

The regional analysis enables comparison of sales contribution across geographic markets.

🛍️ Category Performance

The dashboard analyzes sales and profitability across multiple categories, including:

Furniture

Home Decor

Clothing

Books

Electronics

Toys

Kitchen

Sports

Beauty

Groceries

This analysis provides visibility into category-level sales and profit contribution.

🏆 Product Performance

The Product & Category Performance page identifies products with the highest sales and profit contribution.

One of the leading products shown in the dashboard is:

Headphones Accusantium

Sales: ~$0.86M

Profit: ~$142K

The dashboard can be used to compare product-level performance and investigate high- and low-performing products.

📅 Quarterly Profitability

The Business Insights page analyzes profit across the four quarters.

With total profit of approximately $79.71M, quarterly analysis provides a way to compare profitability over time and investigate seasonal or performance-related changes.

💳 Payment Method Analysis

Customer orders are analyzed across the following payment methods:

Net Banking

Debit Card

Cash on Delivery (COD)

Credit Card

UPI

This provides visibility into customer ordering behavior and payment-method usage.

🗄️ SQL Analysis

The SQL component focuses on preparing, validating, modeling, and analyzing the retail dataset.

SQL Skills Demonstrated

Database Creation

Table Creation

CSV Data Ingestion

Staging Tables

Data Cleaning

NULL Handling

Duplicate Detection

Data Validation

Data Type Conversion

JOINs

GROUP BY

Aggregate Functions

Common Table Expressions (CTEs)

Window Functions

Fact & Dimension Tables

Dimensional Modeling

Business Analysis Queries

📈 Power BI Skills Demonstrated

The Power BI solution demonstrates practical business intelligence and visualization skills:

Data Loading

Data Transformation

Data Modeling

Star Schema Design

Table Relationships

Date-Based Analysis

DAX Measures

KPI Cards

Slicers

Interactive Filtering

Bookmarks & Navigation

Monthly Trend Analysis

Quarterly Analysis

Top-N Analysis

Category Analysis

Product Analysis

Customer Analysis

Geographic Analysis

Conditional Formatting

Interactive Dashboard Design

🧩 Data Model

The analytical model follows a dimensional modeling approach centered around a sales fact table and supporting dimension tables.

Fact Table
fact_sales

Dimension Tables
dim_date
dim_customer
dim_product
dim_location
dim_payment_mode

Model Structure
                 dim_date
                    │
                    │
dim_customer ── fact_sales ── dim_product
                    │
                    │
              dim_location
                    │
                    │
            dim_payment_mode


This model supports analysis across:

Sales → Profit → Products → Customers → Geography → Payment Methods → Time

📂 Project Structure
retail-sales-analytics-mysql-powerbi/
│
├── screenshots/
│   ├── executive-overview.png
│   ├── product-category.png
│   ├── customer-geographic.png
│   └── business-insights.png
│
├── sql/
│   ├── database-creation.sql
│   ├── data-cleaning.sql
│   ├── data-validation.sql
│   └── business-analysis.sql
│
├── powerbi/
│   └── retail-sales-dashboard.pbix
│
└── README.md

📸 Dashboard Preview
Executive Overview

Add dashboard screenshot here.

Product & Category Performance

Add dashboard screenshot here.

Customer & Geographic Performance

Add dashboard screenshot here.

Business Insights

Add dashboard screenshot here.

🎯 Project Outcome

This project demonstrates an end-to-end data analytics and business intelligence workflow, starting from raw transactional data and progressing through:

Raw Data
   ↓
SQL Data Preparation
   ↓
Data Validation
   ↓
Dimensional Modeling
   ↓
Power BI Data Model
   ↓
DAX Calculations
   ↓
Interactive Dashboard
   ↓
Business Insights


The final solution provides a consolidated analytical view of:

Sales → Profit → Products → Customers → Geography → Payment Methods → Business Performance

The project demonstrates how SQL and Power BI can be combined to transform transactional data into structured business analysis and interactive reporting.

👤 Skills Demonstrated
Data Analytics

Data Cleaning

Data Validation

Exploratory Data Analysis

Business Analysis

KPI Analysis

Trend Analysis

SQL

Joins

Aggregations

CTEs

Window Functions

Data Modeling

Analytical Queries

Power BI

Data Modeling

Star Schema

DAX

KPI Development

Interactive Dashboards

Data Visualization

Business Reporting

Business Intelligence

Sales Performance Analysis

Profitability Analysis

Customer Analysis

Product Analysis

Geographic Analysis

Business Insight Generation

📌 Summary

Retail Sales & Profitability Analytics is an end-to-end portfolio project demonstrating practical experience with SQL, MySQL, Power BI, DAX, data modeling, data visualization, and business analysis.

The project focuses on converting raw retail transaction data into a structured analytical solution that enables users to explore sales, profitability, products, customers, geography, payment methods, and business performance trends.


© Copyright & Usage

© 2026 Jitendra Arora. All Rights Reserved.

This repository and its contents—including code, SQL scripts, Power BI files, dashboards, screenshots, documentation, and original analysis—are the intellectual property of Jitendra Arora.

This repository is provided for viewing and portfolio purposes only. No permission is granted to copy, reproduce, modify, redistribute, republish, or present any part of this project as your own work without prior written permission from the author.

All Rights Reserved.
