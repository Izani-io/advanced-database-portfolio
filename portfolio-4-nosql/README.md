# Portfolio 4: NoSQL and Advanced Data Models

## Case Study
Pigmenta Ltd – Paint Manufacturing and Distribution Database.

## Database Environment
- MongoDB Atlas
- MongoDB Document Database

## 1. Database Design
Created a NoSQL database named `pigmenta_nosql` with three collections:
- Products
- Customers
- Orders

## 2. Document Implementation
Inserted sample documents:
- 4 product records
- 3 customer records
- 3 order records

## 3. NoSQL Queries
Implemented:
- Document retrieval using find().
- Filtering products by category.
- Sorting products by price.
- Filtering orders by status.

## 4. Data Modelling
Used embedded documents within order records to store purchased product details, including SKU, product name, quantity and unit price.

## 5. Evidence and Implementation
Screenshots and the `nosql_queries.js` script provide evidence of database creation, document insertion, filtering and sorting.

## Conclusion
MongoDB provides a flexible document-based model for Pigmenta Ltd. It supports product, customer and order data without requiring the same fixed relational table structure used in the PostgreSQL implementation.