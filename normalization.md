https://drive.google.com/file/d/1njbCl1-48fMkYERMW-OFNotkznLC4ct8/view?usp=sharing

 # Database Normalization to 3NF

## Step 1: First Normal Form (1NF)
- All attributes are atomic (no repeating groups).
- Example: Users have a single email, no multiple values in one field.
- Properties, Bookings, Payments, Reviews, and Messages are structured as separate tables.

## Step 2: Second Normal Form (2NF)
- Database is in 1NF.
- All non-key attributes depend on the whole primary key.
- Example: In Booking, `start_date`, `end_date`, `status` depend on `booking_id` (not just `user_id` or `property_id`).

## Step 3: Third Normal Form (3NF)
- Database is in 2NF.
- No transitive dependencies:
  - Property table does not store user details (only `host_id` as FK).
  - Booking does not store property location or host name (retrieved via relationships).
  - Payment depends only on `booking_id`.
  - Review depends only on `review_id` and foreign keys.
  - Message depends only on `message_id`.

## Conclusion
- The schema follows 3NF.
- Redundancy and transitive dependencies are removed.
- All relationships are represented using foreign keys.
