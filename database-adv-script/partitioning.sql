-- Step 1: Create a partitioned version of the bookings table
CREATE TABLE bookings_partitioned (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL
) PARTITION BY RANGE (start_date);

-- Step 2: Create partitions by year
CREATE TABLE bookings_2023 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE bookings_2025 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Step 3: Example query on partitioned table
EXPLAIN ANALYZE
SELECT *
FROM bookings_partitioned
WHERE start_date BETWEEN '2024-03-01' AND '2024-03-31';
