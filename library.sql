-- Task 2: Library database

-- 1. Create database and table
CREATE DATABASE library;
USE library;  -- PostgreSQL: \c library

CREATE TABLE books (
    id     INT PRIMARY KEY,
    title  VARCHAR(100),
    author VARCHAR(100),
    year   INT,
    price  DECIMAL(10, 2)
);

-- 2. Insert 8 books
INSERT INTO books (id, title, author, year, price) VALUES
(1, 'The Alchemist',          'Paulo Coelho',     1988, 450.00),
(2, 'Atomic Habits',          'James Clear',      2018, 1200.00),
(3, 'Clean Code',             'Robert C. Martin', 2008, 3500.00),
(4, '1984',                   'George Orwell',    1949, 600.00),
(5, 'The Great Gatsby',       'F. Scott Fitzgerald', 1925, 350.00),
(6, 'Python Crash Course',    'Eric Matthes',     2015, 2800.00),
(7, 'To Kill a Mockingbird',  'Harper Lee',       1960, 500.00),
(8, 'Deep Work',              'Cal Newport',      2016, 950.00);

-- 3. Books priced above 500
SELECT * FROM books WHERE price > 500;

-- 4. All books sorted by price (highest first)
SELECT * FROM books ORDER BY price DESC;

-- 5. Total number of books
SELECT COUNT(*) AS total_books FROM books;

-- 6. Update the price of one book using WHERE
UPDATE books SET price = 700.00 WHERE id = 4;
