-- Query 1: Find total number of bookings made by each user using COUNT and GROUP BY
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- Query 2: Rank properties based on total number of bookings using RANK() window function
SELECT property_id, COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS property_rank
FROM bookings
GROUP BY property_id;
