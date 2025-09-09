# Index Performance Analysis

This task focuses on analyzing the effect of adding indexes on frequently queried columns in the **Users**, **Bookings**, **Properties**, and **Reviews** tables.

## Before Indexing
- Queries relied on full table scans.
- Example:  
  ```sql
  SELECT * FROM bookings WHERE user_id = 5;
