CREATE TABLE sql_project (
    order_id VARCHAR(50) PRIMARY KEY,
    order_date DATE,
    ship_mode VARCHAR(50),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_id VARCHAR(50),
    quantity INTEGER,
    discount FLOAT,
    sale_price FLOAT,
    profit FLOAT
);


