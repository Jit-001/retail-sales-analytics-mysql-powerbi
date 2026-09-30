-- Query 3 — Category performance

SELECT 
	dp.category,
	SUM(fs.quantity) AS units,
    ROUND(SUM(fs.sales),2) AS sales,
    ROUND(SUM(fs.profit),2) AS profit,
    
    ROUND(
		SUM(fs.profit)/
		NULLIF(SUM(fs.sales),0)*100,
		2
    ) AS profit_margin_pct
    
FROM fact_sales fs
JOIN dim_product dp
	ON fs.product_key = dp.product_key

GROUP BY dp.category
ORDER BY sales DESC;