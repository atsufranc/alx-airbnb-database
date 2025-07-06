-- Task 2: Aggregations and Window Functions

-- 1. Aggregation: Find the total number of bookings made by each user
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM 
    bookings
GROUP BY 
    user_id;

-- 2. Window Function: Rank properties based on the total number of bookings they have received
SELECT 
    p.id AS property_id,
    p.name AS property_name,
    COUNT(b.id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.id) DESC) AS rank
FROM 
    properties p
LEFT JOIN 
    bookings b ON p.id = b.property_id
GROUP BY 
    p.id, p.name;



SELECT 
    p.id AS property_id,
    p.name AS property_name,
    COUNT(b.id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.id) DESC) AS rank
FROM 
    properties p
LEFT JOIN 
    bookings b ON p.id = b.property_id
GROUP BY 
    p.id, p.name;

