-- Total restaurants
SELECT COUNT(*) FROM Zomato;

-- Unique locations
SELECT COUNT(DISTINCT location) FROM Zomato;

-- Restaurants per location
SELECT location, COUNT(*) AS total_restaurants
FROM Zomato
GROUP BY location
ORDER BY total_restaurants DESC;

-- Top 10 highest rated restaurants
SELECT name, num_rate
FROM zomato
ORDER BY num_rate DESC
LIMIT 10;

-- Average rating per location
SELECT location, AVG(num_rate) AS avg_rating
FROM zomato
GROUP BY location
ORDER BY avg_rating DESC;

-- Online order vs rating
SELECT online_order, AVG(num_rate) AS avg_rating
FROM zomato
GROUP BY online_order;

-- Most popular cuisines
SELECT cuisines, COUNT(*) AS count
FROM zomato
GROUP BY cuisines
ORDER BY count DESC;

-- Cheap & highly rated restaurants
SELECT name, cost, num_rate
FROM zomato
WHERE cost < 300 AND num_rate > 4
ORDER BY num_rate DESC;

-- Cost vs rating trend
SELECT cost, AVG(num_rate) AS avg_rating
FROM zomato
GROUP BY cost
ORDER BY cost;

-- Most voted restaurants
SELECT name, votes
FROM zomato
ORDER BY votes DESC
LIMIT 10;

-- Restaurant type distribution
SELECT rest_type, COUNT(*) AS total
FROM zomato
GROUP BY rest_type
ORDER BY total DESC;

-- Online vs booking trend
SELECT online_order, book_table, COUNT(*) 
FROM zomato
GROUP BY online_order, book_table;