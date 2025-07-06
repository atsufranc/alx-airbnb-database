
# Task 5: Partition Performance Report

## 🎯 Objective
Improve the performance of date-based queries on the `bookings` table using table partitioning.

## ⚙️ Partitioning Method
- **Type:** RANGE Partitioning
- **Column:** `start_date`
- **Strategy:** Create partitions for each quarter of 2025

## 📊 Performance Test

### Query Example (Before Partitioning):
```sql
SELECT * FROM bookings
WHERE start_date BETWEEN '2025-01-01' AND '2025-03-31';
