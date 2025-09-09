-- INNER JOIN: Retrieve  all bookings and the respective users who made those bookings
 SELECT b.bookings_id, b.property_id, b.users_id, b.check_in, b.check_out, u.name AS user_name, u.email
FROM Bookings b
INNER JOIN Users u ON b.user_id = u.user_id;

-- LEFT JOIN: Retrieve all properties and their reviews including properties that have no reviews.
SELECT 
    p.property_id,
    p.name AS property_name,
    r.review_id,
    r.rating,
    r.comment
FROM properties p
LEFT JOIN reviews r 
    ON p.property_id = r.property_id;


-- FULL OUTER JOIN: Retrieve all users and all bookings even if the user has no booking or a booking is not linked to a user
SELECT u.users_id, u.name AS user_name, b.booking_id, b.property_id, b.check_in, b.check_out
FROM Users u
FULL OUTER JOIN Bookings b ON u.user_id = b.user_id;
