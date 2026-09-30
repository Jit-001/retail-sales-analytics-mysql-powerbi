-- Drop tables if exists
USE retail_analytics;
DROP TABLE IF EXISTS clean_retail_sales;

-- Create cleaned table

CREATE TABLE  clean_retail_sales AS
		SELECT 
			CAST(TRIM(order_id) AS UNSIGNED) AS order_id,
            STR_TO_DATE(
				TRIM(order_date),
                '%m/%d/%Y'
            ) AS order_date,
            NULLIF(TRIM(customer_name),'') AS customer_name,
            NULLIF(TRIM(region),'') AS region,
            NULLIF(TRIM(city),'') AS city,
            NULLIF(TRIM(category),'') AS category,
            NULLIF(TRIM(sub_category),'') AS sub_category,
            NULLIF(TRIM(product_name),'') AS product_name,
            CAST(TRIM(quantity) AS UNSIGNED) AS quantity,
            CAST(TRIM(unit_price) AS DECIMAL(18,2)) AS unit_price,
            CAST(TRIM(discount) AS DECIMAL(5,2)) AS discount,
            CAST(TRIM(sales) AS DECIMAL(18,2)) AS sales,
            CAST(TRIM(profit) AS DECIMAL(18,2)) AS profit,
            NULLIF(TRIM(payment_mode),'') AS payment_mode
		FROM retail_analytics.stg_retail_sales;