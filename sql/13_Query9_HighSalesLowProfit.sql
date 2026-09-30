-- Query 9 — High sales but low profitability

SELECT 
	dp.product_name,
    dp.category,
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
GROUP BY
	dp.product_name,
    dp.category
HAVING
	SUM(fs.sales)>100000
    AND
    SUM(fs.profit)/NULLIF(SUM(fs.sales),0)<0.10
ORDER BY
	sales DESC;