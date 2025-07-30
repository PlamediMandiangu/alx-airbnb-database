-- INNER JOIN to get all bookings with user info
SELECT users.id, users.name, bookings.id, bookings.check_in
FROM users
INNER JOIN bookings ON users.id = bookings.user_id;

-- LEFT JOIN to get all properties and reviews (including properties with no reviews)
SELECT properties.id, properties.title, reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id;

-- FULL OUTER JOIN to get all users and all bookings (even unmatched)
SELECT users.id AS user_id, bookings.id AS booking_id
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;


