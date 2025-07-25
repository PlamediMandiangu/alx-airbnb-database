# ER Diagram Requirements

This document outlines the structure of the Entity-Relationship Diagram (ERD) for the Airbnb-like platform. The diagram models the core entities, their attributes, and the relationships between them.

## Entities

- **User**: Represents users of the platform (guests and hosts). Key attributes include:
  - `user_id` (Primary Key)
  - `email` (Unique)
  - `role` (guest/host)

- **Property**: Listings created by hosts. Includes:
  - `property_id` (Primary Key)
  - `host_id` (Foreign Key → User)

- **Booking**: Represents a reservation for a property.
  - `booking_id` (Primary Key)
  - `user_id`, `property_id` (Foreign Keys)

- **Payment**: Linked to a booking.
  - `payment_id` (Primary Key)
  - `booking_id` (Foreign Key)

- **Review**: User-generated feedback for properties.
  - `review_id` (Primary Key)
  - `user_id`, `property_id` (Foreign Keys)

- **Message**: Communication between users.
  - `message_id` (Primary Key)
  - `sender_id`, `recipient_id` (Foreign Keys → User)

## Relationships

- A **User** can host multiple **Properties**
- A **User** can make multiple **Bookings**
- A **Booking** is linked to one **Property** and one **User**
- A **Booking** has one **Payment**
- A **Property** can have many **Reviews**
- A **User** can write multiple **Reviews**
- A **User** can send and receive **Messages**

## Normalization

All entities are normalized to **Third Normal Form (3NF)**:
- Each attribute is atomic (1NF)
- All non-key attributes depend on the whole key (2NF)
- No transitive dependencies (3NF)

## Diagram

Refer to the file: `airbnb_er_diagram.png` in this directory.

