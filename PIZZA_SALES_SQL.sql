create database dev;
use dev;
CREATE TABLE pizza_sales (
    pizza_id INT,
    order_id INT,
    pizza_name_id VARCHAR(50),
    quantity INT,
    order_date VARCHAR(20),
    order_time TIME,
    unit_price DECIMAL(6,2),
    total_price DECIMAL(6,2),
    pizza_size CHAR(1),
    pizza_category VARCHAR(20),
    pizza_ingredients TEXT,
    pizza_name VARCHAR(100)
);
