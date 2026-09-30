-- Query 8 — Customer analysis

SELECT
	dc.customer_name,
    COUNT(DISTINCT fs.order_id) AS orders,
    SUM(fs.quantity) AS units,
    ROUND(SUM(fs.sales),2) AS sales,
    ROUND(SUM(fs.profit),2) AS profit
FROM fact_sales fs
JOIN dim_customer dc
	ON fs.customer_key = dc.customer_key
GROUP BY
	dc.customer_name
ORDER BY
	sales DESC
LIMIT 20;