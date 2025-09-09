-- Non-Correlated Subquery:
-- Non-correlated subquery: Properties with average rating > 4.0
SELECT property_id, name AS property_name
FROM properties
WHERE property_id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

--Correlated Subquery:
-- Correlated subquery: Users with more than 3 bookings
SELECT u.user_id, u.name AS user_name
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.user_id
) > 3;
