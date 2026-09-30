-- checking duplicate record

SELECT 
	order_id,
    COUNT(*) AS record_count
FROM retail_analytics.stg_retail_sales
GROUP BY order_id
HAVING COUNT(*) > 1;