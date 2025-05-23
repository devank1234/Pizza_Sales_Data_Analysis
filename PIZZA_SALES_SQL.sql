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
SELECT 
    pizza_name, SUM(total_price) AS total_revenue
FROM
    pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC
LIMIT 5;
SELECT 
    SUM(total_price) AS Total_revenue
FROM
    pizza_sales;
    SELECT 
    (SUM(total_price)) / (COUNT(DISTINCT order_id)) AS Avg_order_value
FROM
    pizza_sales;
    SELECT 
    SUM(quantity) AS total_pizza_sold
FROM
    pizza_sales;
    SELECT 
    COUNT(DISTINCT order_id) AS Total_orders
FROM
    pizza_sales;
    SELECT 
    (SUM(quantity) / COUNT(DISTINCT order_id)) AS Avg_pizza_per_order
FROM
    pizza_sales;
    SELECT 
    DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS weekday,
    COUNT(DISTINCT order_id) AS orders
FROM
    pizza_sales
GROUP BY weekday;
SELECT 
    MONTHNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS Month,
    COUNT(DISTINCT order_id) AS orders
FROM
    pizza_sales
GROUP BY Month;
with my_cte as (select pizza_category,sum(total_price) as revenue ,  (select sum(total_price) from pizza_sales) as total_revenue
from pizza_sales
group by pizza_category)

select pizza_category ,revenue , Round((revenue/total_revenue)*100,2) as PCT
from my_cte;
with my_cte as (select pizza_size,sum(total_price) as revenue ,  (select sum(total_price) from pizza_sales) as total_revenue
from pizza_sales
group by pizza_size)
select pizza_size ,revenue , Round((revenue/total_revenue)*100,2) as PCT
from my_cte;

SELECT 
    pizza_category, SUM(quantity) AS Total_quantity_sold
FROM
    pizza_sales
GROUP BY pizza_category;
SELECT 
    pizza_name, SUM(total_price) AS total_revenue
FROM
    pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC
LIMIT 5;
SELECT 
    pizza_name, SUM(total_price) AS total_revenue
FROM
    pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue 
LIMIT 5;
SELECT 
    pizza_name, SUM(quantity) AS Quantity
FROM
    pizza_sales
GROUP BY pizza_name
ORDER BY Quantity DESC
LIMIT 5;
SELECT 
    pizza_name, SUM(quantity) AS Quantity
FROM
    pizza_sales
GROUP BY pizza_name
ORDER BY Quantity 
LIMIT 5;
SELECT 
    pizza_name, COUNT(DISTINCT order_id) AS Total_orders
FROM
    pizza_sales
GROUP BY pizza_name
ORDER BY Total_orders DESC
LIMIT 5;
SELECT 
    pizza_name, COUNT(DISTINCT order_id) AS Total_orders
FROM
    pizza_sales
GROUP BY pizza_name
ORDER BY Total_orders
LIMIT 5;



