-- PORTFOLIO 3: TRANSACTIONS

-- 1. Begin transaction and update product stock
BEGIN;

UPDATE products
SET stock_quantity = stock_quantity - 5
WHERE sku = 'PIG-ACR-001';

-- Check updated stock
SELECT product_name, stock_quantity
FROM products
WHERE sku = 'PIG-ACR-001';

-- 2. Commit transaction
COMMIT;

-- 3. Begin another transaction
BEGIN;

UPDATE products
SET stock_quantity = stock_quantity - 10
WHERE sku = 'PIG-ACR-002';

-- 4. Roll back the second transaction
ROLLBACK;

-- 5. Verify final stock quantities
SELECT product_name, sku, stock_quantity
FROM products
WHERE sku IN ('PIG-ACR-001', 'PIG-ACR-002');