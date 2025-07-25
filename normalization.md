\# Database Normalization Explanation



This document explains how the database design for the Airbnb-like system adheres to the Third Normal Form (3NF).



---



\## 1. First Normal Form (1NF)



\- All tables have atomic columns (no multiple values in a single field).

\- Each record is unique and identified by a primary key.



\## 2. Second Normal Form (2NF)



\- All non-primary-key attributes are fully functionally dependent on the \*\*whole\*\* primary key.

\- Composite keys are avoided by using surrogate primary keys (e.g., `user\_id`, `property\_id`).



\## 3. Third Normal Form (3NF)



\- There are no transitive dependencies. That is, non-key attributes depend only on the primary key.

\- Examples:

&nbsp; - In the `User` table, attributes like `email`, `phone\_number`, and `role` depend only on `user\_id`.

&nbsp; - In the `Booking` table, `total\_price` is stored for performance reasons, but it depends on `booking\_id` and is not redundant with other attributes.

&nbsp; - All relationships are handled through foreign keys rather than duplicating data.



---



\## Notes



\- `total\_price` in the `Booking` table could be derived from `pricePerNight` and date range, but is retained for performance (denormalized intentionally).

\- No repeating groups or multivalued fields exist.

\- Foreign keys enforce relationships without introducing data redundancy.



---



✅ The database structure is in \*\*Third Normal Form (3NF)\*\* and is optimized for scalability and integrity.



