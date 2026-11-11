-- PORTFOLIO 3: CONCURRENCY CONTROL

-- Session 1: Begin transaction and lock product row
BEGIN;

SELECT *
FROM products
WHERE sku = 'PIG-ACR-001'
FOR UPDATE;

-- Session 1: Release the lock
COMMIT;

-- Session 2: Update the same product
UPDATE products
SET stock_quantity = stock_quantity - 2
WHERE sku = 'PIG-ACR-001';

-- Verify updated stock
SELECT product_name, sku, stock_quantity
FROM products
WHERE sku = 'PIG-ACR-001';