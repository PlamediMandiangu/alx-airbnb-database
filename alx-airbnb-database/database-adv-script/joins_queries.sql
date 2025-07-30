-- 1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT 
    bookings.id AS booking_id,
    users.id AS user_id,
    users.name AS user_name,
    bookings.property_id,
    bookings.check_in,
    bookings.check_out
FROM 
    bookings
INNER JOIN 
    users ON bookings.user_id = users.id;


-- 2. LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
SELECT 
    properties.id AS property_id,
    properties.title,
    reviews.id AS review_id,
    reviews.rating,
    reviews.comment
FROM 
    properties
LEFT JOIN 
    reviews ON properties.id = reviews.property_id;


-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
-- Note: FULL OUTER JOIN may not be supported by all SQL engines (e.g., MySQL).
-- If unsupported, use a UNION of LEFT JOIN and RIGHT JOIN.
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.property_id
FROM 
    users
FULL OUTER JOIN 
    bookings ON users.id = bookings.user_id;

-- Alternative if FULL OUTER JOIN is not supported (e.g., in MySQL):
-- SELECT users.id AS user_id, users.name, bookings.id AS booking_id, bookings.property_id
-- FROM users
-- LEFT JOIN bookings ON users.id = bookings.user_id
-- UNION
-- SELECT users.id AS user_id, users.name, bookings.id AS booking_id, bookings.property_id
-- FROM bookings
-- LEFT JOIN users ON users.id = bookings.user_id;
