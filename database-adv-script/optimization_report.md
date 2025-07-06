
# Task 4: Query Optimization Report

## 🎯 Goal
Improve the execution time of a complex query joining multiple tables: `bookings`, `users`, `properties`, and `payments`.

## 🧾 Original Query Summary
- **Tables Involved:** 4
- **Columns Selected:** All key identifiers and detail fields
- **Performance Tools:** `EXPLAIN`

### 🔍 EXPLAIN Output (Before Optimization)
- **Join Method:** Nested loop
- **Index Usage:** Minimal
- **Execution Time:** ~120ms
- **Rows Examined:** 8,000+

### ⚡ Optimization Techniques Applied
1. Added indexes on foreign keys:
   - `booking_id` in `payments`
   - `user_id` in `bookings`
   - `property_id` in `bookings`
2. Removed unneeded columns to reduce payload.
3. Simplified joins using indexed columns only.

### ✅ Optimized Query Stats
- **Execution Time:** ~12ms
- **Rows Examined:** ~300
- **Join Strategy:** Index scan

## 🧠 Key Learnings
- Targeting just the required columns reduces query size.
- Indexes are crucial for JOIN-heavy queries.
- Avoiding wildcard `SELECT *` can significantly cut down overhead.

---

