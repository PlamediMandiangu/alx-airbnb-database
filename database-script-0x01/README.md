\# Airbnb Clone: Database Schema



This directory contains the SQL schema for the Airbnb-like platform database.



\## Files



\- `schema.sql`: Defines the database tables, constraints, and indexes.

\- `README.md`: Describes the schema and design rationale.



\## Tables



\- \*\*User\*\*: Stores user info (hosts and guests)

\- \*\*Property\*\*: Properties listed by hosts

\- \*\*Booking\*\*: Reservations made by users

\- \*\*Payment\*\*: Payments for bookings

\- \*\*Review\*\*: User reviews of properties

\- \*\*Message\*\*: Messages exchanged between users



\## Design Principles



\- All tables use `SERIAL` for auto-incremented primary keys.

\- Foreign keys enforce data integrity.

\- Indexes added on frequently queried fields for performance.

\- Columns include timestamps for tracking creation.



\## Normalization



The database is normalized up to \*\*3NF\*\*, ensuring no redundancy and optimal data integrity.



