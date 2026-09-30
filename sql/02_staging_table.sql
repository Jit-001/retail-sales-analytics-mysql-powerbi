USE Retail_Analytics;

DROP TABLE IF EXISTS stg_retail_sales;

-- creating staging table

CREATE TABLE stg_retail_sales
(
order_id VARCHAR(50),
order_date VARCHAR(50),
customer_name VARCHAR(200),
region VARCHAR(100),
city VARCHAR(100),
category VARCHAR(100),
sub_category VARCHAR(100),
product_name VARCHAR(200),
quantity VARCHAR(50),
unit_price VARCHAR(50),
discount VARCHAR(50),
sales VARCHAR(50),
profit VARCHAR(50),
payment_mode VARCHAR(100)
);