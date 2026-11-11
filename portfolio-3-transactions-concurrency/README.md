# Portfolio 3: Transactions and Concurrency

## Case Study
Pigmenta Ltd – Paint Manufacturing and Distribution Database.

## Database Environment
- PostgreSQL 18
- pgAdmin 4

## 1. Transaction Management
Demonstrated:
- BEGIN – starting transactions.
- COMMIT – permanently saving changes.
- ROLLBACK – reversing uncommitted changes.

## 2. Transaction Isolation
Used READ COMMITTED isolation level to demonstrate how one database session cannot see another session's uncommitted changes.

## 3. Concurrency Control
Used PostgreSQL row-level locking with SELECT FOR UPDATE.

Session 1 locked a product record while Session 2 attempted to update the same record. Session 2 waited until Session 1 committed and released the lock.

## 4. Evidence and SQL Scripts
This folder contains transaction scripts, concurrency control scripts and screenshots showing transaction execution, isolation and row-level locking.

## Conclusion
This portfolio demonstrates practical transaction management, transaction isolation and concurrency control using PostgreSQL.
