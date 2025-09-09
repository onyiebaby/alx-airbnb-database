-- Initial query with WHERE and AND
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
JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.booking_date >= '2024-01-01'
  AND u.user_id IS NOT NULL;

-- Analyze performance of the initial query
EXPLAIN ANALYZE
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
JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.booking_date >= '2024-01-01'
  AND u.user_id IS NOT NULL;

-- Refactored query: optimized version
SELECT 
    b.booking_id,
    b.booking_date,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.booking_date >= '2024-01-01'
  AND u.user_id IS NOT NULL;

-- Analyze performance of refactored query
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.booking_date,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.booking_date >= '2024-01-01'
  AND u.user_id IS NOT NULL;
