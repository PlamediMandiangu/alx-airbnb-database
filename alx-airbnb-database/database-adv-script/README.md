# Advanced SQL: Joins and Subqueries

This directory contains advanced SQL scripts that demonstrate the use of different types of **JOINs** and **subqueries** in relational databases, using the context of an Airbnb-like platform.

## 📄 Files

- `joins_queries.sql` – Contains SQL queries demonstrating INNER JOIN, LEFT JOIN, FULL OUTER JOIN.
- `subqueries.sql` – Contains subqueries, both non-correlated and correlated.

---

## 🧠 Objectives

### Joins
- **INNER JOIN**: Retrieve all bookings along with the users who made them.
- **LEFT JOIN**: Retrieve all properties and their reviews, including properties without reviews.
- **FULL OUTER JOIN**: Retrieve all users and bookings, even if no relation exists between them.

### Subqueries
- **Non-Correlated Subquery**: Find all properties where the average rating is greater than 4.0.
- **Correlated Subquery**: Identify users who have made more than 3 bookings.

---

## ✅ Notes

- `ORDER BY` is used to make results easier to interpret.
- If your SQL engine does not support `FULL OUTER JOIN`, a workaround using `UNION` of `LEFT JOIN` and `RIGHT JOIN` is provided.

---

## 📂 Project Structure

