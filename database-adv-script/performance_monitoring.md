# Database Monitoring and Performance Refinement

## Objective
The goal was to continuously monitor query performance and refine the database schema to eliminate bottlenecks.

## Monitoring Queries
We analyzed the following query using `EXPLAIN ANALYZE`:

```sql
SELECT b.booking_id, u.name, p.title, b.start_date, b.end_date, b.amount
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
WHERE b.start_date BETWEEN '2024-03-01' AND '2024-03-31';

