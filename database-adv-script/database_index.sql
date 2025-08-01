-- Index on users.email for faster lookup by email
CREATE INDEX idx_users_email ON users(email);

-- Index on bookings.user_id for faster JOINs
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on bookings.property_id for faster JOINs
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on properties.city for filtering by city
CREATE INDEX idx_properties_city ON properties(city);

-- Analyze performance of a query before/after indexing using EXPLAIN ANALYZE

-- Example 1: Check query plan for finding bookings by user_id
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 1;

-- Example 2: Check query plan for joining bookings and properties
EXPLAIN ANALYZE
SELECT b.id, p.name FROM bookings b
JOIN properties p ON b.property_id = p.id;

-- Example 3: Check query plan for filtering properties by city
EXPLAIN ANALYZE
SELECT * FROM properties WHERE city = 'Cape Town';
