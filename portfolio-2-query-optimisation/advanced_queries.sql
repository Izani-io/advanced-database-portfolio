--6. aggregate query
SELECT 
    c.category_name,
    COUNT(p.product_id) AS total_products,
    AVG(p.unit_price) AS average_price
FROM categories c
LEFT JOIN products p
ON c.category_id = p.category_id
GROUP BY c.category_name
ORDER BY c.category_name;

--7. Calculate total sales per customer
SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_sales
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_sales DESC;

--8. Retrieve individual order details
SELECT
    o.order_id,
    c.customer_name,
    o.order_date,
    o.order_status,
    o.total_amount
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
ORDER BY o.order_date DESC;

--9. Calculate total revenue from completed orders
SELECT
    SUM(total_amount) AS total_completed_revenue,
    COUNT(order_id) AS completed_orders
FROM orders
WHERE order_status = 'Completed';

--10. Find customers with orders above ₦20,000
SELECT
    c.customer_name,
    o.order_id,
    o.total_amount,
    o.order_status
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.total_amount > 20000
ORDER BY o.total_amount DESC;