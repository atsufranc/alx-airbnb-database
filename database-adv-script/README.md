# Task 0: Write Complex Queries with Joins

## 📚 Overview
This task focuses on mastering different types of SQL joins to retrieve data from related tables in the Airbnb database. Understanding how to effectively use joins is critical for querying complex relationships between entities like users, bookings, properties, and reviews.

## ✅ Objectives
- Write complex queries using:
  - INNER JOIN
  - LEFT JOIN
  - FULL OUTER JOIN (simulated with UNION for MySQL)

## 📂 File: `joins_queries.sql`
The following queries were implemented:

---

### 1. 🔗 INNER JOIN: All bookings and the respective users who made those bookings
```sql
SELECT b.*, u.*
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;


SELECT p.*, r.*
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;


SELECT u.*, b.*
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
UNION
SELECT u.*, b.*
FROM users u
RIGHT JOIN bookings b ON u.id = b.user_id;



# Task 1: Practice Subqueries

## 📚 Overview
This task introduces subqueries — powerful tools that allow querying within queries. You'll practice both non-correlated and correlated subqueries for filtering and analysis.

## ✅ Objectives
- Use a non-correlated subquery to filter properties based on their average review rating.
- Use a correlated subquery to identify users who meet certain criteria based on their related data.

## 📂 File: `subqueries.sql`

---

### 1. 🧠 Non-Correlated Subquery: Properties with average rating > 4.0
```sql
SELECT *
FROM properties
WHERE id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);



# Task 2: Apply Aggregations and Window Functions

## 📚 Overview
This task focuses on using SQL aggregation functions and window functions to perform analytical operations on the Airbnb dataset. These tools are essential for reporting and deeper data insights.

## ✅ Objectives
- Count user activities using aggregation (`COUNT` + `GROUP BY`)
- Rank properties using window functions like `RANK()`

## 📂 File: `aggregations_and_window_functions.sql`

---

### 1. 🔢 Aggregation: Total number of bookings made by each user
```sql
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM 
    bookings
GROUP BY 
    user_id;
