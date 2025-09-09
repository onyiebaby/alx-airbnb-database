# Aggregations and Window Functions

This task demonstrates how to use SQL aggregation and window functions to analyze booking and property data.

## Queries Implemented

1. **Total Bookings by User (Aggregation)**
   - Uses `COUNT()` and `GROUP BY` to calculate the total number of bookings each user has made.
   - Helps identify the most active users on the platform.
   - Example:
     ```sql
     SELECT 
         u.user_id,
         u.name AS user_name,
         COUNT(b.booking_id) AS total_bookings
     FROM users u
     LEFT JOIN bookings b ON u.user_id = b.user_id
     GROUP BY u.user_id, u.name
     ORDER BY total_bookings DESC;
     ```

2. **Ranking Properties by Bookings (Window Functions)**
   - Uses `ROW_NUMBER()` and `RANK()` window functions to rank properties based on their total number of bookings.
   - `ROW_NUMBER()` assigns a unique sequence number to each property.
   - `RANK()` assigns the same rank to properties with equal booking counts.
   - Example:
     ```sql
     SELECT 
         p.property_id,
         p.name AS property_name,
         COUNT(b.booking_id) AS total_bookings,
         ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS row_number_rank,
         RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS rank_position
     FROM properties p
     LEFT JOIN bookings b ON p.property_id = b.property_id
     GROUP BY p.property_id, p.name
     ORDER BY total_bookings DESC;
     ```

## Key Concepts Learned
- **Aggregations:** Summarizing data with functions like `COUNT`, `SUM`, `AVG`, `MAX`, and `MIN`.
- **GROUP BY:** Grouping rows to perform aggregate calculations per user or property.
- **Window Functions:** Performing calculations across sets of rows without collapsing them into a single output row.
- **ROW_NUMBER vs. RANK:** Understanding the difference between sequential numbering and rank assignment with ties.

This task strengthens the ability to perform advanced SQL analysis for reporting and insights.

