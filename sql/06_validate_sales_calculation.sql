-- Validate sales calculation
SELECT order_id,
CAST(TRIM(quantity) AS DECIMAL(18,2)) AS quantity,
CAST(TRIM(unit_price) AS DECIMAL(18,2)) AS unit_price,
CAST(TRIM(discount) AS DECIMAL(18,2)) AS discount,
CAST(TRIM(sales) AS DECIMAL(18,2)) AS recorded_sales,
ROUND(
CAST(TRIM(quantity) AS DECIMAL(18,2)) * 
CAST(TRIM(unit_price) AS DECIMAL(18,2)) * 
(1 - CAST(TRIM(discount) AS DECIMAL(18,2))/100),
2
) AS calculated_sales
FROM retail_analytics.stg_retail_sales
LIMIT 20;

-- Now identify mismatch
SELECT order_id,
CAST(TRIM(sales) AS DECIMAL(18,2)) AS recorded_sales,
ROUND(
CAST(TRIM(quantity) AS DECIMAL(18,2)) * 
CAST(TRIM(unit_price) AS DECIMAL(18,2)) * 
(1 - CAST(TRIM(discount) AS DECIMAL(18,2))/100),
2
) AS calculated_sales
FROM retail_analytics.stg_retail_sales
WHERE ABS(
	CAST(TRIM(sales) AS DECIMAL(18,2))
	-
	(
		CAST(TRIM(quantity) AS DECIMAL(18,2)) * 
		CAST(TRIM(unit_price) AS DECIMAL(18,2)) * 
		(1 - CAST(TRIM(discount) AS DECIMAL(18,2))/100)
	)
) > 0.01;