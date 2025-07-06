
-- Task 4: Initial Complex Query (Before Optimization)
-- Fetch all bookings with user, property, and payment details

SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.amount,
    pay.status
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.id
JOIN 
    properties p ON b.property_id = p.id
JOIN 
    payments pay ON b.id = pay.booking_id;


-- Task 4: Optimized Complex Query (After Indexing + Minimal Joins)

SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.id
JOIN 
    properties p ON b.property_id = p.id
JOIN 
    payments pay ON pay.booking_id = b.id;
-- Removed redundant columns, ensured use of indexed keys
