-- Query 1 — Executive KPIs

SELECT
	COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_units,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    
    ROUND(
		SUM(profit)/NULLIF(SUM(sales),0)*100,
        2
        ) AS profit_margin_pct,
        
	ROUND(
		SUM(sales)/NULLIF(COUNT(DISTINCT order_id),0),
        2
        ) AS avgerage_order_value

FROM fact_sales;