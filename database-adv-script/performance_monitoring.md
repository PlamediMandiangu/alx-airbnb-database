\# Database Performance Monitoring and Refinement



\## Objective

Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.



\## Queries Monitored

1\. Fetch all bookings for a user by email:

&nbsp;  ```sql

&nbsp;  SELECT \* FROM bookings

&nbsp;  JOIN users ON bookings.user\_id = users.id

&nbsp;  WHERE users.email = 'user@example.com';





SELECT \* FROM properties

WHERE city = 'Cape Town';



SELECT \* FROM payments

WHERE booking\_id = 123;



-- Adding index on users.email to improve user lookup

CREATE INDEX idx\_users\_email ON users(email);



-- Adding index on properties.city for faster city-based filtering

CREATE INDEX idx\_properties\_city ON properties(city);



