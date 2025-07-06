
# Task 6: Performance Monitoring and Refinement

## 🔍 Monitoring Tools Used
- `EXPLAIN` / `EXPLAIN ANALYZE`
- `SHOW PROFILE` (for MySQL)
- Query execution time comparison (manual)

---

## 🚩 Identified Bottlenecks

### 1. Slow Join on Users and Bookings
**Query:**
```sql
SELECT u.name, COUNT(b.id)
FROM bookings b
JOIN users u ON b.user_id = u.id
GROUP BY u.name;


