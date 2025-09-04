-- Insert Users
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
    ('u1', 'Ada', 'Okafor', 'ada@mail.com', 'hashedpassword1', '08012345678', 'host'),
    ('u2', 'John', 'Doe', 'john@mail.com', 'hashedpassword2', '08023456789', 'guest'),
    ('u3', 'Mary', 'Smith', 'mary@mail.com', 'hashedpassword3', '08034567890', 'guest');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night)
VALUES
    ('p1', 'u1', 'Beach House', 'Lovely house by the beach', 'Lagos', 50000),
    ('p2', 'u1', 'City Apartment', 'Modern apartment in city center', 'Abuja', 30000);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
    ('b1', 'p1', 'u2', '2025-09-10', '2025-09-15', 250000, 'confirmed'),
    ('b2', 'p2', 'u3', '2025-10-01', '2025-10-05', 120000, 'pending');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
    ('pay1', 'b1', 250000, 'credit_card');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
    ('r1', 'p1', 'u2', 5, 'Amazing stay, will come again!'),
    ('r2', 'p2', 'u3', 4, 'Nice apartment but a bit noisy.');

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
    ('m1', 'u2', 'u1', 'Hello Ada, is your beach house available next month?'),
    ('m2', 'u1', 'u2', 'Yes, it is available. You can book anytime.');
