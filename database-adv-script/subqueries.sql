-- Non-Correlated Subquery:
-- Find all properties where the average rating is greater than 4.0
SELECT p.property_id, p.name AS property_name
FROM Properties p
WHERE p.property_id IN (
  SELECT r.property_id
  FROM Reviews r
  GROUP BY r.property_id
  HAVING AVG(r.rating) > 4.0
);

--Correlated Subquery:
--Find users who have made more than 3 bookings
SELECT u.user_id, u.name AS user_name
FROM Users u
WHERE (
  SELECT COUNT(*)
  FROM Bookings b
  WHERE b.user_id = u.user_id
) > 3;
