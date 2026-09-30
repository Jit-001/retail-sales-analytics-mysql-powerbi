-- Clean text values
SET SQL_SAFE_UPDATES = 0;

UPDATE retail_analytics.clean_retail_sales
SET
	customer_name = TRIM(customer_name),
    region = TRIM(region),
    city = TRIM(city),
    category = TRIM(category),
    sub_category = TRIM(sub_category),
    product_name = TRIM(product_name),
    payment_mode = TRIM(payment_mode);
    
    SET SQL_SAFE_UPDATES = 1;