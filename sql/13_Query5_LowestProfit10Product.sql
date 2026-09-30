-- Query 5 — Lowest-profit products

SELECT 
	dp.product_name,
    dp.category,
    SUM(fs.sales) AS sales,
    SUM(fs.profit) AS profit,
    
    ROUND(
		SUM(fs.profit)/
        NULLIF(SUM(fs.sales),0)*100,
        2
    ) AS profit_margin_pct
    
FROM fact_sales fs
JOIN dim_product dp
	ON fs.product_key = dp.product_key

GROUP BY
	dp.product_name,
    dp.category
    
ORDER BY
	profit ASC
LIMIT 10;