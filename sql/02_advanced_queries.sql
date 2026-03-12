-- Advanced SQL Queries

-- 1. Using Joins
SELECT
    a.author_name,
    b.book_title
FROM
    authors a
JOIN
    books b ON a.id = b.author_id;

-- 2. Subquery Example
SELECT
    e.name,
    e.salary
FROM
    employees e
WHERE
    e.salary > (
        SELECT AVG(salary)
        FROM employees
    );

-- 3. Joining Multiple Tables
SELECT
    c.customer_name,
    o.order_date,
    p.product_name
FROM
    customers c
JOIN
    orders o ON c.id = o.customer_id
JOIN
    products p ON o.product_id = p.id;

-- 4. Correlated Subquery
SELECT
    s.store_name,
    (SELECT COUNT(*) FROM sales sa WHERE sa.store_id = s.id) AS total_sales
FROM
    stores s;