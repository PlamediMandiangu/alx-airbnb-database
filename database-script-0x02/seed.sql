-- Insert Users
INSERT INTO User (first_name, last_name, email, password_hash, phone_number, role)
VALUES 
  ('Alice', 'Johnson', 'alice@example.com', 'hashed_pass_1', '1234567890', 'host'),
  ('Bob', 'Smith', 'bob@example.com', 'hashed_pass_2', '0987654321', 'guest'),
  ('Carol', 'Davis', 'carol@example.com', 'hashed_pass_3', '1122334455', 'guest');

-- Insert Properties
INSERT INTO Property (host_id, name, description, location, pricePerNight)
VALUES 
  (1, 'Cozy Cottage', 'A lovely cottage with fireplace', 'Nairobi, Kenya', 100.00),
  (1, 'Modern Loft', 'Spacious loft near city center', 'Kampala, Uganda', 150.00);

-- Insert Bookings
INSERT INTO Booking (property_id, user_id, start_date, end_date, total_price, status)
VALUES 
  (1, 2, '2025-08-01', '2025-08-05', 400.00, 'confirmed'),
  (2, 3, '2025-08-10', '2025-08-12', 300.00, 'pending');

-- Insert Payments
INSERT INTO Payment (booking_id, amount, payment_method)
VALUES 
  (1, 400.00, 'credit_card'),
  (2, 300.00, 'paypal');

-- Insert Reviews
INSERT INTO Review (property_id, user_id, rating, comment)
VALUES 
  (1, 2, 5, 'Amazing stay! Clean and cozy.'),
  (2, 3, 4, 'Great location and host.');

-- Insert Messages
INSERT INTO Message (sender_id, recipient_id, message_body)
VALUES 
  (2, 1, 'Hi! Is the cottage available next weekend?'),
  (1, 2, 'Yes, it is! Feel free to book it.'),
  (3, 1, 'Can I check in early at the loft?');
