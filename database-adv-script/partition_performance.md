# Partitioning Performance Report

## Objective
We implemented table partitioning on the `bookings` table based on the `start_date` column to improve query performance on large datasets.

## Before Partitioning
- The `bookings` table was a single large table.
- Queries filtering by date ranges scanned the entire table.
- Example query:
  ```sql
  EXPLAIN ANALYZE
  SELECT * FROM bookings WHERE start_date BETWEEN '2024-03-01' AND '2024-03-31';
