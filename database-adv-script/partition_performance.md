\# Partitioning Performance Report



\## Objective

Optimize queries on the large `bookings` table by implementing table partitioning based on `start\_date`.



\## Partitioning Strategy

\- Used \*\*RANGE partitioning\*\* on the `start\_date` column.

\- Created partitions for each year (2023, 2024, 2025).

\- This allows queries filtering by date ranges to scan only relevant partitions, not the entire table.



\## Performance Testing

\- Ran EXPLAIN ANALYZE on queries filtering bookings for June 2025.

\- Before partitioning, the planner scanned the entire bookings table.

\- After partitioning, only the partition covering June 2025 (bookings\_2025) was scanned.



\## Observed Improvements

| Metric                        | Before Partitioning   | After Partitioning   |

|-------------------------------|----------------------|---------------------|

| Partitions Scanned             | Entire Bookings Table | Only relevant partition |

| Query Execution Time           | High (full table scan)| Reduced significantly |

| Disk I/O                       | Higher                | Lower                |



\## Conclusion

Partitioning improved query performance by limiting scans to relevant partitions, thereby reducing disk I/O and execution time.



