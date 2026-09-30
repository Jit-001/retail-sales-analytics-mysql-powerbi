-- Add indexes

CREATE INDEX idx_fact_order_date
ON fact_sales(order_date);

CREATE INDEX idx_fact_customer
ON fact_sales(customer_key);

CREATE INDEX idx_fact_product
ON fact_sales(product_key);

CREATE INDEX idx_fact_location
ON fact_sales(location_key);

CREATE INDEX idx_fact_payment
ON fact_sales(payment_mode_key);