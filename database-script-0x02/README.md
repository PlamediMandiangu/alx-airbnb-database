\# Seed Data for Airbnb Clone Database



This script populates the database with realistic sample data for testing.



\## Tables Seeded



\- \*\*User\*\*: 3 users (1 host, 2 guests)

\- \*\*Property\*\*: 2 properties listed by the host

\- \*\*Booking\*\*: 2 bookings by guests

\- \*\*Payment\*\*: 2 sample payments

\- \*\*Review\*\*: Each property has a review

\- \*\*Message\*\*: Users exchange sample messages



\## Usage



Run `seed.sql` after creating the schema:



```bash

psql -U your\_user -d your\_database -f schema.sql

psql -U your\_user -d your\_database -f seed.sql



