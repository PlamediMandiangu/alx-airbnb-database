\# Airbnb Clone - Backend Requirements



This document defines the technical and functional requirements for the core backend features of the Airbnb Clone project, including User Authentication, Property Management, and Booking System.



\## User Authentication



Enables both guests and hosts to register, log in, and manage sessions securely using JSON Web Tokens (JWT).



\*\*API Endpoints:\*\*

\- `POST /api/register`

\- `POST /api/login`

\- `GET /api/logout`



\## Property Management



Allows hosts to create and manage property listings.



\*\*API Endpoints:\*\*

\- `POST /api/properties`



\## Booking System



Allows users to book listed properties.



\*\*API Endpoints:\*\*

\- `POST /api/bookings`



\## Example Combined Flow



\### 🔐 Registration Request

```json

{

&nbsp; "email": "user@example.com",

&nbsp; "password": "securePassword123"

}

```



\### ✅ Registration Response

```json

{

&nbsp; "message": "Registration successful",

&nbsp; "token": "JWT\_TOKEN"

}

```



\### 🔐 Login Request

```json

{

&nbsp; "email": "user@example.com",

&nbsp; "password": "securePassword123"

}

```



\### ✅ Login Response

```json

{

&nbsp; "message": "Login successful",

&nbsp; "token": "JWT\_TOKEN"

}

```



\### 🚪 Logout Response

```json

{

&nbsp; "message": "Logout successful"

}

```



\### 🏡 Property Listing Request

```json

{

&nbsp; "title": "Cozy Cabin",

&nbsp; "description": "A quiet getaway in the woods",

&nbsp; "price": 120,

&nbsp; "location": "Cape Town"

}

```



\### ✅ Property Listing Response

```json

{

&nbsp; "message": "Property listed",

&nbsp; "property\_id": 102

}

```



\### 📆 Booking Request

```json

{

&nbsp; "property\_id": 102,

&nbsp; "check\_in": "2025-08-01",

&nbsp; "check\_out": "2025-08-05",

&nbsp; "guests": 2

}

```



\### ✅ Booking Response

```json

{

&nbsp; "message": "Booking confirmed",

&nbsp; "booking\_id": 304

}

```



