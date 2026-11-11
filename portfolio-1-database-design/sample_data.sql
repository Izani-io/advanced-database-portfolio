
-- PIGMENTA LTD: SAMPLE DATABASE RECORDS

-- 1. PRODUCT CATEGORIES
INSERT INTO categories (category_name, description)
VALUES
('Acrylic Paints', 'Artist-grade acrylic paints'),
('Emulsion Paints', 'Interior and exterior wall paints'),
('Industrial Paints', 'Protective and industrial coatings');

-- 2. SUPPLIERS
INSERT INTO suppliers (supplier_name, contact_person, email, phone, address)
VALUES
('Prime Chemical Supplies', 'John James',
 'prime@example.com', '08012345678', 'Lagos, Nigeria'),
('ColourTech Industries', 'Mary Okoro',
 'colourtech@example.com', '08087654321', 'Port Harcourt, Nigeria');

-- 3. PRODUCTS
INSERT INTO products
(product_name, sku, category_id, supplier_id,
 unit_price, stock_quantity, reorder_level)
VALUES
('Titanium White Acrylic', 'PIG-ACR-001',
 (SELECT category_id FROM categories WHERE category_name = 'Acrylic Paints'),
 (SELECT supplier_id FROM suppliers WHERE supplier_name = 'Prime Chemical Supplies'),
 8500.00, 120, 20),

('Crimson Red Acrylic', 'PIG-ACR-002',
 (SELECT category_id FROM categories WHERE category_name = 'Acrylic Paints'),
 (SELECT supplier_id FROM suppliers WHERE supplier_name = 'Prime Chemical Supplies'),
 9000.00, 85, 15),

('Premium Interior Emulsion', 'PIG-EML-001',
 (SELECT category_id FROM categories WHERE category_name = 'Emulsion Paints'),
 (SELECT supplier_id FROM suppliers WHERE supplier_name = 'ColourTech Industries'),
 25000.00, 60, 10),

('Industrial Protective Coating', 'PIG-IND-001',
 (SELECT category_id FROM categories WHERE category_name = 'Industrial Paints'),
 (SELECT supplier_id FROM suppliers WHERE supplier_name = 'ColourTech Industries'),
 45000.00, 35, 5);

-- 4. CUSTOMERS
INSERT INTO customers (customer_name, email, phone, address)
VALUES
('David Enterprises', 'david@example.com',
 '08011112222', 'Port Harcourt, Nigeria'),

('Grace Interiors', 'grace@example.com',
 '08033334444', 'Lagos, Nigeria'),

('Bright Homes Ltd', 'bright@example.com',
 '08055556666', 'Abuja, Nigeria');

-- 5. CUSTOMER ORDERS
INSERT INTO orders (customer_id, order_status, total_amount)
VALUES
((SELECT customer_id FROM customers WHERE email = 'david@example.com'),
 'Completed', 17000.00),

((SELECT customer_id FROM customers WHERE email = 'grace@example.com'),
 'Processing', 50000.00),

((SELECT customer_id FROM customers WHERE email = 'bright@example.com'),
 'Pending', 45000.00);

-- 6. ORDER ITEMS
INSERT INTO order_items (order_id, product_id, quantity, unit_price)
VALUES
((SELECT o.order_id FROM orders o
  JOIN customers c ON o.customer_id = c.customer_id
  WHERE c.email = 'david@example.com'),
 (SELECT product_id FROM products WHERE sku = 'PIG-ACR-001'),
 2, 8500.00),

((SELECT o.order_id FROM orders o
  JOIN customers c ON o.customer_id = c.customer_id
  WHERE c.email = 'grace@example.com'),
 (SELECT product_id FROM products WHERE sku = 'PIG-EML-001'),
 2, 25000.00),

((SELECT o.order_id FROM orders o
  JOIN customers c ON o.customer_id = c.customer_id
  WHERE c.email = 'bright@example.com'),
 (SELECT product_id FROM products WHERE sku = 'PIG-IND-001'),
 1, 45000.00);
