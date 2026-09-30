-- Query 6 — Monthly performance

SELECT 
	dd.year,
    dd.month_number,
    dd.month_name,
    dd.Yr_month,
    ROUND(SUM(fs.sales),0) AS sales,
    ROUND(SUM(fs.profit),0) AS profit
FROM fact_sales fs
JOIN dim_date dd
	ON fs.order_date = dd.full_date
GROUP BY
	dd.year,
    dd.month_number,
    dd.month_name,
    dd.Yr_month
ORDER BY
	dd.year,
    dd.month_number;