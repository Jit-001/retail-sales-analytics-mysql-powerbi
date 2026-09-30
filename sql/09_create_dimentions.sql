-- create dimention table dim_customer

CREATE TABLE dim_customer
	(
		cutomer_key INT AUTO_INCREMENT PRIMARY KEY,
        customer_name VARCHAR(200) NOT NULL,
        
        UNIQUE KEY uq_customer_name(customer_name)
    );
    
    -- load data into dim_customer table
    
    INSERT INTO dim_customer(customer_name)
    SELECT distinct
		customer_name
	FROM clean_retail_sales
    WHERE customer_name IS NOT NULL;

-- create dimention table dim_product

CREATE TABLE dim_product
(
		product_key INT AUTO_INCREMENT PRIMARY KEY,
        product_name VARCHAR(200) NOT NULL,
        category VARCHAR(100),
        sub_category VARCHAR(100),
        
        UNIQUE KEY uq_product
        (
			product_name,
            category,
            sub_category
        )
    );
    
-- load data into dim_customer table

INSERT INTO dim_product
(
	product_name,
    category,
    sub_category
)
SELECT distinct
	product_name,
    category,
    sub_category
FROM clean_retail_sales
WHERE product_name IS NOT NULL;

-- create dimention table dim_location

CREATE TABLE dim_location
(
	location_key INT AUTO_INCREMENT PRIMARY KEY,
    region VARCHAR(100),
    city VARCHAR(100),
    
    UNIQUE KEY uq_location
    (
		region,
        city
    )
);

-- load data into dim_location table

INSERT INTO dim_location
(
	region,
    city
)
SELECT DISTINCT
region,
city
FROM clean_retail_sales;

-- create dimention table dim_payment_mode

CREATE TABLE dim_payment_mode
(
	payment_mode_key INT AUTO_INCREMENT PRIMARY KEY,
    payment_mode VARCHAR(100) NOT NULL,
    
    UNIQUE KEY uq_payment_mode(payment_mode)
);

-- load data into dim_payment_mode table

INSERT INTO dim_payment_mode
(
	payment_mode
)
SELECT DISTINCT
	payment_mode
FROM clean_retail_sales
WHERE payment_mode IS NOT NULL;

-- create dimention table dim_date

CREATE TABLE dim_date
(
	date_key INT PRIMARY KEY,
    full_date DATE NOT NULL,
    year INT NOT NULL,
    quarter_number INT NOT NULL,
    quarter_name VARCHAR(10) NOT NULL,
    month_number INT NOT NULL,
    month_name VARCHAR(20) NOT NULL,
    Yr_month VARCHAR(7) NOT NULL,
    day_of_month INT NOT NULL,
    day_name VARCHAR(20) NOT NULL
);

-- load data into dim_date table

INSERT INTO dim_date
(
	date_key,
    full_date,
    year,
    quarter_number,
    quarter_name,
    month_number,
    month_name,
    Yr_month,
    day_of_month,
    day_name
)
WITH RECURSIVE dates AS
(
	SELECT MIN(order_date) AS full_date
    FROM clean_retail_sales
    
    UNION ALL
    
    SELECT DATE_ADD(full_date, INTERVAL 1 DAY)
    FROM dates
    WHERE full_date <
    (
		SELECT MAX(order_date)
        FROM clean_retail_sales
    )
)

SELECT
	CAST(DATE_FORMAT(full_date, '%Y%m%d') AS UNSIGNED) AS date_key,
    full_date,
    YEAR(full_date) AS year,
    QUARTER(full_date) AS quarter_number,
    CONCAT('Q', QUARTER(full_date)) AS quarter_name,
    MONTH(full_date) AS month_number,
    MONTHNAME(full_date) AS month_name,
    DATE_FORMAT(full_date, '%Y-%m') AS Yr_month,
    DAY(full_date) AS day_of_month,
    DAYNAME(full_date) AS day_name
    FROM dates;