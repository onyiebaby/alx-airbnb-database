# SQL Subqueries Practice - Airbnb Database
This project demonstrates how to use **correlated** and **non-correlated** subqueries in SQL

---

## Non-Correlated Subquery
**Query:**
```sql
SELECT p.property_id, p.name AS property_name
FROM Properties p
WHERE p.property_id IN (
    SELECT r.property_id
    FROM Reviews r
    GROUP BY r.property_id
    HAVING AVG(r.rating) > 4.0
);



## Correlated Subquery
**Query:**
```sql
SELECT u.users_id, u.name AS user_name
FROM Users u
WHERE (
    SELECT COUNT(*)
    FROM Bookings b
    WHERE b.user_id = u.user_id
) > 3:;
