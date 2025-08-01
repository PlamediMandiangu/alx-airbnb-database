\# Index Performance Analysis



\## Queries Tested



\- Query 1: Find bookings for a user by email.

\- Query 2: Join bookings and properties on property\_id.

\- Query 3: List properties filtered by city.



\## Performance Measurement



\- Used `EXPLAIN` to analyze query plans before and after adding indexes.

\- Added indexes on columns frequently used in WHERE and JOIN clauses.



\## Results



| Query                      | Before Index          | After Index           | Improvement              |

|----------------------------|----------------------|----------------------|--------------------------|

| Find bookings by user email| Seq Scan, slow       | Index Scan, faster    | Reduced execution time   |

| Join bookings and properties| Hash Join on seq scan| Index Nested Loop Join| Faster join processing   |

| Filter properties by city  | Seq Scan             | Index Scan           | Faster filtering         |



\## Conclusion



Adding indexes significantly improved the performance of common queries by reducing full table scans and optimizing join operations.



