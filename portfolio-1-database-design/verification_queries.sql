
SELECT
    p.product_name,
    p.sku,
    c.category_name,
    s.supplier_name,
    p.unit_price,
    p.stock_quantity
FROM products p
JOIN categories c
    ON p.category_id = c.category_id
JOIN suppliers s
    ON p.supplier_id = s.supplier_id
ORDER BY p.product_id;
