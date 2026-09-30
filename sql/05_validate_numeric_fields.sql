-- validate numeric fields

-- checking quantity

SELECT *
FROM retail_analytics.stg_retail_sales
WHERE CAST(TRIM(quantity) AS DECIMAL(18,2)) < 0;

-- checking discount

SELECT *
FROM retail_analytics.stg_retail_sales
WHERE CAST(TRIM(discount) AS DECIMAL(18,2)) < 0
OR CAST(TRIM(discount) AS DECIMAL(18,2)) > 100;

-- checking sales

SELECT *
FROM retail_analytics.stg_retail_sales
WHERE CAST(TRIM(sales) AS DECIMAL(18,2)) < 0;