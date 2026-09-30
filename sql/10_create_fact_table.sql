-- create fact_sales

CREATE TABLE fact_sales
(
	sales_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    order_date DATE NOT NULL,
    cutomer_key INT,
    product_key INT,
    location_key INT,
    payment_mode_key INT,
    quantity INT,
    unit_price DECIMAL(18,2),
    discount DECIMAL(5,2),
    sales DECIMAL(18,2),
    profit DECIMAL(18,2),
    
    CONSTRAINT fk_fact_customer
		FOREIGN KEY (cutomer_key)
        REFERENCES dim_customer(cutomer_key),
        
	CONSTRAINT fk_fact_product
		FOREIGN KEY (product_key)
        REFERENCES dim_product(product_key),
        
	CONSTRAINT fk_fact_location
		FOREIGN KEY (location_key)
        REFERENCES dim_location(location_key),
        
	CONSTRAINT fk_fact_payment
		FOREIGN KEY (payment_mode_key)
        REFERENCES dim_payment_mode(payment_mode_key),
        
	CONSTRAINT fk_fact_date
		FOREIGN KEY (order_date)
        REFERENCES dim_date(full_date)
);