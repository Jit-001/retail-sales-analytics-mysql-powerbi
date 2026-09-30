-- Checking missing values
SELECT
	COUNT(*) AS total_rows,
	SUM(
		CASE
			WHEN order_id IS NULL OR TRIM(order_id)=''
            THEN 1 ELSE 0
        END
	) AS missing_order_id,
        
	SUM(
		CASE
			WHEN order_date IS NULL OR TRIM(order_date)=''
            THEN 1 ELSE 0
        END
    ) AS missing_order_date,
    
	SUM(
		CASE
			WHEN customer_name IS NULL OR TRIM(customer_name)=''
            THEN 1 ELSE 0
        END
    ) AS missing_customer_name,
    
    SUM(
		CASE
			WHEN region IS NULL OR TRIM(region)=''
            THEN 1 ELSE 0
        END
    ) AS missing_region,
    
    SUM(
		CASE
			WHEN city IS NULL OR TRIM(city)=''
            THEN 1 ELSE 0
        END
    ) AS missing_city,
    
    SUM(
		CASE
			WHEN category IS NULL OR TRIM(category)=''
            THEN 1 ELSE 0
        END
    ) As missing_category,
    
    SUM(
		CASE
			WHEN sub_category IS NULL OR TRIM(sub_category)=''
            THEN 1 ELSE 0
        END
    ) As missing_sub_category,
    
    SUM(
		CASE
			WHEN product_name IS NULL OR TRIM(product_name)=''
            THEN 1 ELSE 0
        END
    ) As missing_product_name,
    
    SUM(
		CASE
			WHEN quantity IS NULL OR TRIM(quantity)=''
            THEN 1 ELSE 0
        END
    ) As missing_quantity,
    
    SUM(
		CASE
			WHEN unit_price IS NULL OR TRIM(unit_price)=''
            THEN 1 ELSE 0
        END
    ) As missing_unit_price,
    
    SUM(
		CASE
			WHEN discount IS NULL OR TRIM(discount)=''
            THEN 1 ELSE 0
        END
    ) As missing_discount,
    
    SUM(
		CASE
			WHEN sales IS NULL OR TRIM(sales)=''
            THEN 1 ELSE 0
        END
    ) As missing_sales,
    
    SUM(
		CASE
			WHEN profit IS NULL OR TRIM(profit)=''
            THEN 1 ELSE 0
        END
    ) As missing_profit,
    
    SUM(
		CASE
			WHEN payment_mode IS NULL OR TRIM(payment_mode)=''
            THEN 1 ELSE 0
        END
    ) As missing_payment_mode
    
from retail_analytics.stg_retail_sales;