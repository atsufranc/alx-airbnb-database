
# Task 3: Index Performance Report

## 🔍 Goal
Improve the performance of queries by indexing frequently used columns, especially in `bookings` and `reviews` tables.

## 🗂️ Indexes Created
| Table     | Column       | Index Name               |
|-----------|--------------|--------------------------|
| bookings  | user_id      | idx_bookings_user_id     |
| bookings  | property_id  | idx_bookings_property_id |
| bookings  | start_date   | idx_bookings_start_date  |
| reviews   | user_id      | idx_reviews_user_id      |
| reviews   | property_id  | idx_reviews_property_id  |

## 📊 Performance Comparison

### ✅ Query: Get all bookings for a specific user
```sql
EXPLAIN SELECT * FROM bookings WHERE user_id = 101;

EXPLAIN SELECT * FROM bookings WHERE start_date BETWEEN '2025-01-01' AND '2025-03-01';


EXPLAIN SELECT * FROM bookings WHERE start_date BETWEEN '2025-01-01' AND '2025-03-01';
