\# Subqueries: Correlated and Non-Correlated



\## Objective



Practice writing \*\*correlated\*\* and \*\*non-correlated\*\* subqueries using SQL.



\## Tasks



\### 1. Non-Correlated Subquery



\- Find all properties where the \*\*average rating\*\* is greater than 4.0.

\- This uses a standard subquery with `GROUP BY` and `HAVING`.



\### 2. Correlated Subquery



\- Find all users who have made \*\*more than 3 bookings\*\*.

\- This subquery references the outer query (user) and is evaluated row by row.



\## Files



\- `subqueries.sql`: SQL file containing the two subqueries.

\- `README.md`: This documentation file.



\## SQL Tables Used



\- `users`

\- `bookings`

\- `properties`

\- `reviews`



\## Sample Output



\- List of highly rated properties.

\- Users with high booking activity.



