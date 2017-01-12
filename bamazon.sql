CREATE DATABASE Bamazon;
USE Bamazon;
CREATE TABLE products (
    item_id INT NOT NULL,
    product_name VARCHAR(250) NOT NULL,
    department_name VARCHAR(100) NOT NULL,
    price DECIMAL(10 , 2 ) NOT NULL,
    stock_quantity INT NOT NULL,
    UNIQUE KEY (item_id)
);
INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (12, 'football', 'sporting goods', 9.99, 3),
       (15, 'baseball', 'sporting goods', 6.89, 5),
       (8, 'Star Wars IV: A New Hope DVD', 'movies and tv', 10.79, 1),
       (45, 'Superman DVD', 'movies and tv', 6.99, 3),
       (33, 'The Bourne Identity (book)', 'books', 8.79, 2),
       (2, 'pencil', 'office supplies', 0.25, 30),
       (10, 'Tide', 'home goods', 8.99, 5),
       (78, 'Natural Ice (6 pack)', 'grocery', 4.99, 25),
       (84, 'Jif (crunchy)', 'grocery', 3.99, 15),
       (65, 'Gym Shoes', 'clothing', 35.79, 4);
CREATE TABLE departments (
    department_id INT NOT NULL,
    department_name VARCHAR(250) NOT NULL,
    over_head_costs DECIMAL(10 , 2 ) NOT NULL,
    total_sales DECIMAL(10 , 2 ) NOT NULL,
    UNIQUE KEY (department_id)
);
INSERT INTO departments(department_id, department_name, over_head_costs, total_sales)
VALUES (1, 'sporting goods', 2000, 1500),
       (2, 'movies and tv', 1500, 2000),
       (3, 'books', 100, 200),
       (4, 'office supplies', 1350, 1000),
       (5, 'home goods', 1200, 200),
       (6, 'grocery', 1234, 123),
       (7, 'clothing', 1300, 1500);
ALTER TABLE products
ADD product_sales DECIMAL(10, 2);
SET SQL_SAFE_UPDATES = 0;
UPDATE products
SET product_sales = 0;
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM products;
