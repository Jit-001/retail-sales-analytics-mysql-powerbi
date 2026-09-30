-- Query 7 — Payment analysis

SELECT
	dpm.payment_mode,
    COUNT(DISTINCT fs.order_id) AS orders,
    SUM(fs.quantity) AS units,
    ROUND(SUM(fs.sales),2) AS sales,
    ROUND(SUM(fs.profit),2) AS profit
FROM fact_sales fs
JOIN dim_payment_mode dpm
	ON fs.payment_mode_key = dpm.payment_mode_key
GROUP BY
	dpm.payment_mode
ORDER BY
	sales DESC;