-- Basic SQL Queries Examples

-- 1. Selecting all columns from a table
SELECT * FROM table_name;

-- 2. Selecting specific columns from a table
SELECT column1, column2 FROM table_name;

-- 3. Filtering results with WHERE clause
SELECT * FROM table_name WHERE condition;

-- 4. Sorting results with ORDER BY
SELECT * FROM table_name ORDER BY column1 ASC;

-- 5. Joining two tables
SELECT a.column1, b.column2
FROM table1 a
JOIN table2 b ON a.common_column = b.common_column;

-- 6. Grouping results with GROUP BY
SELECT column1, COUNT(*)
FROM table_name
GROUP BY column1;

-- 7. Using HAVING to filter groups
SELECT column1, COUNT(*) AS count
FROM table_name
GROUP BY column1
HAVING COUNT(*) > 1;

-- 8. Inserting data into a table
INSERT INTO table_name (column1, column2) VALUES (value1, value2);

-- 9. Updating data in a table
UPDATE table_name SET column1 = value1 WHERE condition;

-- 10. Deleting data from a table
DELETE FROM table_name WHERE condition;