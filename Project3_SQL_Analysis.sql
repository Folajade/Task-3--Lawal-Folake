-- Query 1: View all records
SELECT *
FROM orders;
-- Query 2: Total number of orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Query 3: Display selected columns
SELECT
order_id,
order_date,
customer_id,
product,
quantity,
total_price
FROM orders;

-- Query 4: Total Sales
SELECT
SUM(total_price) AS total_sales
FROM orders;

-- Query 5: Average Order Value (On average, how much does a customer spend per order?)
SELECT
AVG(total_price) AS average_order_value
FROM orders;

-- Query 6: View all unique order statuses
SELECT DISTINCT order_status
FROM orders;

-- Query 7: Count orders by status
SELECT
order_status,
COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;

-- Query 8: Orders with quantity greater than 2
SELECT
order_id,
product,
quantity,
total_price
FROM orders
WHERE quantity > 2;

-- Query 9: Orders above 1000
SELECT
order_id,
product,
total_price
FROM orders
WHERE total_price > 1000;

-- Query 10: Highest value orders
SELECT
order_id,
product,
total_price
FROM orders
ORDER BY total_price DESC;

-- Query 11: Total sales by product
SELECT
    product,
    SUM(total_price) AS total_sales
FROM orders
GROUP BY product
ORDER BY total_sales DESC;

-- Query 12: Quantity sold by product
SELECT
    product,
    SUM(quantity) AS units_sold
FROM orders
GROUP BY product
ORDER BY units_sold DESC;

-- Query 13: Orders by payment method
SELECT
    payment_method,
    COUNT(*) AS total_orders
FROM orders
GROUP BY payment_method
ORDER BY total_orders DESC;

-- Query 14: Orders by referral source
SELECT
    referral_source,
    COUNT(*) AS total_orders
FROM orders
GROUP BY referral_source
ORDER BY total_orders DESC;

-- Query 15: Total sales by referral source
SELECT
    referral_source,
    SUM(total_price) AS total_sales
FROM orders
GROUP BY referral_source
ORDER BY total_sales DESC;

-- Query 16: Average sales by payment method
SELECT
    payment_method,
    AVG(total_price) AS average_sales
FROM orders
GROUP BY payment_method
ORDER BY average_sales DESC;

-- Query 17: Products with total sales greater than 5000
SELECT
    product,
    SUM(total_price) AS total_sales
FROM orders
GROUP BY product
HAVING SUM(total_price) > 5000
ORDER BY total_sales DESC;

-- Query 18: Orders by coupon code
SELECT
    coupon_code,
    COUNT(*) AS total_orders
FROM orders
GROUP BY coupon_code
ORDER BY total_orders DESC;

-- Query 19: Top customers by spending
SELECT
    customer_id,
    SUM(total_price) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;

-- Query 20: Overall business summary
SELECT
    COUNT(*) AS total_orders,
    SUM(total_price) AS total_sales,
    AVG(total_price) AS average_order_value,
    SUM(quantity) AS total_units_sold
FROM orders;