# Query Optimization Report

## Objective
Refactor complex queries to improve performance by analyzing execution plans and applying indexing and query simplifications.

## Initial Query
The initial query retrieved all bookings with user, property, and payment details:

```sql
SELECT 
    b.booking_id,
    b.booking_date,
    u.user_id,
    u.name AS user_name,
    p.property_id,
    p.name AS property_name,
    pay.payment_id,
    pay.amount,
    pay.payment_date
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id;
