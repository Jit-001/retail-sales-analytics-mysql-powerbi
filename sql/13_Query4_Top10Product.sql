-- Query 4 — Top 10 products

SELECT
	dp.product_name,
    dp.category,
    dp.sub_category,
    SUM(fs.quantity) AS units,
    ROUND(SUM(fs.sales),2) AS sales,
    ROUND(SUM(fs.profit),2) AS profit
    
FROM fact_sales fs
JOIN dim_product dp
	ON fs.product_key = dp.product_key
    
GROUP BY
	dp.product_name,
    dp.category,
    dp.sub_category
ORDER BY
	sales DESC
LIMIT 10;