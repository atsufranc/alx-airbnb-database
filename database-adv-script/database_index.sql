-- Task 3: Implement Indexes for Optimization

-- Index on 'user_id' in bookings for faster JOINs and WHERE queries
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on 'property_id' in bookings for property-related queries
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on 'start_date' in bookings for date range filtering
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Index on 'user_id' in reviews to speed up user-based review analysis
CREATE INDEX idx_reviews_user_id ON reviews(user_id);

-- Index on 'property_id' in reviews for property-level review insights
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

