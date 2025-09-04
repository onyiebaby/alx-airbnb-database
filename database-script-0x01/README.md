 # Database Schema

This directory contains the SQL script for creating the AirBnB database schema.

## Files
- `schema.sql`: Defines all tables (Users, Properties, Bookings, Payments, Reviews, Messages).
- `README.md`: Explains the database structure and constraints.

## Features
- Users can be guests, hosts, or admins.
- Properties belong to hosts.
- Bookings link users and properties.
- Payments are tied to bookings.
- Reviews are tied to users and properties.
- Messages are exchanged between users.

## Indexing
- Primary keys are indexed automatically.
- Email in Users is indexed for fast lookup.
- Foreign keys are enforced to maintain referential integrity.
