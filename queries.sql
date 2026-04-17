-- Complaints by state
SELECT state, COUNT(*) AS total_complaints
FROM complaints
GROUP BY state
ORDER BY total_complaints DESC;

-- Complaints over time
SELECT strftime('%Y', date_received) AS year,
       COUNT(*) AS total_complaints
FROM complaints
GROUP BY year
ORDER BY year;

-- Most common issues
SELECT issue, COUNT(*) AS total
FROM complaints
GROUP BY issue
ORDER BY total DESC
LIMIT 10;

-- Complaints by company
SELECT company, COUNT(*) AS total
FROM complaints
GROUP BY company
ORDER BY total DESC
LIMIT 10;

-- Complaints by product
SELECT product, COUNT(*) AS total
FROM complaints
GROUP BY product
ORDER BY total DESC;
