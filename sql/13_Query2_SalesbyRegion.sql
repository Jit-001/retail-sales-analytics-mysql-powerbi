-- Query 2 — Sales by region

SELECT 
	dl.region,
    COUNT(DISTINCT fs.order_id) AS orders,
    SUM(fs.quantity) as units,
    ROUND(SUM(fs.sales),2) AS sales,
    ROUND(SUM(fs.profit),2) AS profit,
    
    ROUND(
		SUM(fs.profit)/
        NULLIF(SUM(fs.sales),0)*100,
        2
        ) AS profit_margin_pct

FROM fact_sales fs
JOIN dim_location dl
	ON fs.location_key = dl.location_key
GROUP BY dl.region
ORDER BY sales DESC;