-- PORTFOLIO 2: QUERY OPTIMISATION

-- Check execution plan before indexing
EXPLAIN ANALYZE
SELECT *
FROM products
WHERE sku = 'PIG-ACR-001';

-- Create index on product SKU
CREATE INDEX idx_products_sku
ON products(sku);

-- Check execution plan after indexing
EXPLAIN ANALYZE
SELECT *
FROM products
WHERE sku = 'PIG-ACR-001';

-- Verify created index
SELECT indexname, indexdef
FROM pg_indexes
WHERE tablename = 'products';