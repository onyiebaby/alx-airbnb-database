-- Indexes for Users Table
CREATE INDEX idx_users_user_id ON users(user_id);
CREATE INDEX idx_users_name ON users(name);

-- Indexes for Bookings Table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_booking_date ON bookings(booking_date);

-- Indexes for Properties Table
CREATE INDEX idx_properties_property_id ON properties(property_id);
CREATE INDEX idx_properties_name ON properties(name);

-- Indexes for Reviews Table
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Before index
EXPLAIN SELECT * 
FROM bookings 
WHERE user_id = 5;

-- After index
EXPLAIN SELECT * 
FROM bookings 
WHERE user_id = 5;


