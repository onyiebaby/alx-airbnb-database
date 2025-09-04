# Database Seeding

This directory contains SQL scripts to insert sample data into the AirBnB database.

## Files
- `seed.sql`: Inserts initial test data into the database.
- `README.md`: Explains the purpose of the seed file.

## Sample Data
- **Users**: 3 users (1 host, 2 guests).
- **Properties**: 2 properties listed by the host.
- **Bookings**: 2 bookings made by guests.
- **Payments**: 1 payment recorded for a booking.
- **Reviews**: 2 reviews written by guests.
- **Messages**: 2 sample messages between host and guest.

## Usage
Run the script after creating the schema:

```bash
mysql -u your_username -p your_database < seed.sql
