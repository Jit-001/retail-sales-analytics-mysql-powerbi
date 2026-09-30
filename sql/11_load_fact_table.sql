-- load fact_sales

INSERT INTO fact_sales
(
	order_id,
    order_date,
    cutomer_key,
    product_key,
    location_key,
    payment_mode_key,
    quantity,
    unit_price,
    discount,
    sales,
    profit
)

SELECT
	c.order_id,
    c.order_date,
    dc.cutomer_key,
    dp.product_key,
    dl.location_key,
    dpm.payment_mode_key,
    c.quantity,
    c.unit_price,
    c.discount,
    c.sales,
    c.profit
FROM clean_retail_sales c

LEFT JOIN dim_customer dc
	ON c.customer_name = dc.customer_name

LEFT JOIN dim_product dp
	ON c.product_name = dp.product_name
	AND c.category = dp.category
	AND c.sub_category = dp.sub_category
    
LEFT JOIN dim_location dl
	ON c.region = dl.region
	AND c.city = dl.city
   
LEFT JOIN dim_payment_mode dpm
	ON c.payment_mode = dpm.payment_mode;