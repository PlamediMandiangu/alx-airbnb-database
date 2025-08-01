\# Query Optimization Report



\## Objective

Refactor a complex query that retrieves bookings with user, property, and payment details to improve performance.



\## Initial Query Analysis

The initial query joined the `bookings`, `users`, `properties`, and `payments` tables using INNER JOINs and selected columns from each.



Performance analysis using `EXPLAIN ANALYZE` showed:

\- Sequential scans on large tables.

\- Hash Joins where index scans could be used.



\## Optimization Techniques Applied

\- Created indexes on `bookings.user\_id`, `bookings.property\_id`, and `payments.booking\_id`.

\- Replaced unnecessary INNER JOIN with LEFT JOIN on `payments` (assuming some bookings might not have payments).

\- Selected only required columns to reduce payload.

\- Confirmed that EXPLAIN ANALYZE now shows Index Scans instead of Seq Scans.



\## Result

After optimization:

\- Reduced query execution time.

\- Eliminated full table scans on large tables.

\- Improved join efficiency by using indexes.





