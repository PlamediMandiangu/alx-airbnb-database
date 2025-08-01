-- Index on users.email for faster lookup by email (often used in WHERE)
CREATE INDEX idx_users_email ON users(email);

-- Index on bookings.user_id for faster JOINs between bookings and users
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on bookings.property_id for faster JOINs between bookings and properties
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on properties.city for faster filtering/order by city
CREATE INDEX idx_properties_city ON properties(city);
