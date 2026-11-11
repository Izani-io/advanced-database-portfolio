// PORTFOLIO 4: NOSQL QUERIES

// 1. Find all products
db.products.find();

// 2. Find acrylic products
db.products.find({
  category: "Acrylic Paints"
});

// 3. Sort products by price (highest first)
db.products.find().sort({
  unit_price: -1
});

// 4. Find completed orders
db.orders.find({
  order_status: "Completed"
});

// 5. Find customers
db.customers.find();