
-- Task 5: Partitioning the 'bookings' Table by start_date

-- 1. Drop the original table (only if this is a safe, test database)
DROP TABLE IF EXISTS bookings;

-- 2. Create a partitioned bookings table by RANGE on start_date
CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE NOT NULL,
    end_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (property_id) REFERENCES properties(id)
) PARTITION BY RANGE (start_date);

-- 3. Create individual partitions for quarterly ranges
CREATE TABLE bookings_q1 PARTITION OF bookings
    FOR VALUES FROM ('2025-01-01') TO ('2025-04-01');

CREATE TABLE bookings_q2 PARTITION OF bookings
    FOR VALUES FROM ('2025-04-01') TO ('2025-07-01');

CREATE TABLE bookings_q3 PARTITION OF bookings
    FOR VALUES FROM ('2025-07-01') TO ('2025-10-01');

CREATE TABLE bookings_q4 PARTITION OF bookings
    FOR VALUES FROM ('2025-10-01') TO ('2026-01-01');

-- Add more partitions if needed
