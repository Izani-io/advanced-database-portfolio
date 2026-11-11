-- PORTFOLIO 2: DATABASE VIEW

-- Create product inventory view
CREATE VIEW product_inventory_view AS
SELECT
    p.product_name,
    p.sku,
    c.category_name,
    p.unit_price,
    p.stock_quantity
FROM products p
JOIN categories c
ON p.category_id = c.category_id;

-- Retrieve data from the view
SELECT *
FROM product_inventory_view;