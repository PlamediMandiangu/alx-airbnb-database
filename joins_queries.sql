-- 1. INNER JOIN: Get all bookings and the respective users who made those bookings
SELECT
  bookings.id AS booking_id,
  users.id AS user_id,
  users.name AS user_name,
  bookings.start_date,
  bookings.end_date
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- 2. LEFT JOIN: Get all properties and their reviews (including properties without reviews)
SELECT
  properties.id AS property_id,
  properties.title AS property_title,
  reviews.id AS review_id,
  reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id;

-- 3. FULL OUTER JOIN: Get all users and all bookings, even if unrelated
SELECT
  users.id AS user_id,
  users.name AS user_name,
  bookings.id AS booking_id,
  bookings.start_date,
  bookings.end_date
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;
