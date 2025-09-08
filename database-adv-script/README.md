# SQL Joins Practice - Airbnb Database
This project demonstrates different types of SQL joins using an Airbnb-like schema with **Users**, **Bookings**, **Properties**, and **Reviews**.

---

##  INNER JOIN
**Query:**
```sql
SELECT b.booking_id, b.property_id, b.user_id, b.check_in, b.check_out, u.name AS user_name, u.email
FROM Bookings b
INNER JOIN Users u ON b.user_id = u.user_id;

##  LEFT JOIN
**Query:**
```sql
SELECT p.property_id, p.name AS property_name, r.review_id, r.rating, r.comment
FROM Properties p
LEFT JOIN Reviews r ON p.property_id = r.property_id;

##  FULL OUTER JOIN
**Query:**
```sql
SELECT u.user_id, u.name AS user_name, b.booking_id, b.property_id, b.check_in, b.check_out
FROM Users u
FULL OUTER JOIN Bookings b ON u.user_id = b.user_id;


