-- joins_queries.sql

-- 1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT bookings.id AS booking_id,
       users.id AS user_id,
       users.name AS user_name,
       bookings.property_id,
       bookings.check_in,
       bookings.check_out
FROM bookings
INNER JOIN users ON bookings.user_id = users.id
ORDER BY bookings.id;

-- 2. LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
SELECT properties.id AS property_id,
       properties.title,
       reviews.id AS review_id,
       reviews.rating,
       reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id
ORDER BY properties.id;

-- 3. FULL OUTER JOIN: Retrieve all users and all bookings
-- (Note: Some SQL engines like MySQL don't support FULL OUTER JOIN natively)
SELECT users.id AS user_id,
       users.name AS user_name,
       bookings.id AS booking_id,
       bookings.property_id
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id
ORDER BY users.id, bookings.id;

-- If FULL OUTER JOIN is not supported, use UNION of LEFT and RIGHT JOINs:
-- SELECT users.id AS user_id,
--        users.name AS user_name,
--        bookings.id AS booking_id,
--        bookings.property_id
-- FROM users
-- LEFT JOIN bookings ON users.id = bookings.user_id
-- UNION
-- SELECT users.id AS user_id,
--        users.name AS user_name,
--        bookings.id AS booking_id,
--        bookings.property_id
-- FROM users
-- RIGHT JOIN bookings ON users.id = bookings.user_id
-- ORDER BY user_id, booking_id;
