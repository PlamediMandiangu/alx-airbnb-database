-- Initial Query: Retrieve all bookings with user, property, and payment details (unoptimized)
EXPLAIN ANALYZE
SELECT b.id AS booking_id, u.name AS user_name, p.name AS property_name, pay.amount AS payment_amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;

-- Refactored Query: Optimized by selecting only necessary columns, assuming indexes exist on user_id, property_id, booking_id
EXPLAIN ANALYZE
SELECT b.id AS booking_id, u.name AS user_name, p.name AS property_name, pay.amount AS payment_amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON pay.booking_id = b.id;
