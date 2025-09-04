-- Creating Week 2 database
CREATE DATABASE Week2;
USE  Week2;
-- Create table called payments
CREATE TABLE payments (
    checkNumber VARCHAR(50) PRIMARY KEY,
    paymentDate DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    customerNumber INT
);

-- Inserting data into payments table
INSERT INTO payments (checkNumber, paymentDate, amount, customerNumber)
VALUES 
('CHK001', '2025-09-01', 2500.00, 101),
('CHK002', '2025-09-02', 1500.50, 102),
('CHK003', '2025-03-11', 3200.75, 103);


-- retrieve the checkNumber, paymentDate, and amount from the payments table.
SELECT checkNumber, paymentDate, amount
FROM payments;


-- Creating table called orders
CREATE TABLE orders (
    orderNumber INT PRIMARY KEY,
    orderDate DATE NOT NULL,
    requiredDate DATE NOT NULL,
    shippedDate DATE,
    status VARCHAR(20) NOT NULL,
    comments TEXT,
    customerNumber INT
);

-- Insert sample data into orders table

INSERT INTO orders (orderNumber, orderDate, requiredDate, shippedDate, status, comments, customerNumber)
VALUES
(2001, '2025-09-01', '2025-09-01', NULL, 'In Process', 'Urgent delivery', 101),
(2002, '2025-09-02', '2025-09-02', '2025-01-15', 'Shipped', 'Handled quickly', 102),
(2003, '2025-03-11', '2025-03-11', NULL, 'In Process', 'Backorder items included', 103);

-- retrieve the orderDate, requiredDate, and status of orders that are currently 'In Process' from the orders table

SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

-- Createting employees table


CREATE TABLE employees (
    employeeNumber INT PRIMARY KEY,
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    extension VARCHAR(10),
    email VARCHAR(100) NOT NULL,
    officeCode VARCHAR(10),
    reportsTo INT,
    jobTitle VARCHAR(50) NOT NULL
);


-- Insert sample data int0 employees table

INSERT INTO employees (employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle)
VALUES
(1, 'Dan', 'John', 'x1234', 'jdan@classiccars.com', '1', NULL, 'Sales Rep'),
(2, 'Cherotich', 'Jane', 'x5678', 'cheroja@classiccars.com', '1', 1, 'Sales Rep'),
(3, 'Esther', 'Baraka', 'x9012', 'ebaraka@classiccars.com', '2', 2, 'Manager');

-- display the firstName, lastName, and email of employees whose job title is 'Sales Rep'

SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

-- Create offices tables
CREATE TABLE offices (
    officeCode VARCHAR(10) PRIMARY KEY,
    city VARCHAR(50) NOT NULL,
    phone VARCHAR(50),
    addressLine1 VARCHAR(100) NOT NULL,
    addressLine2 VARCHAR(100),
    state VARCHAR(50),
    country VARCHAR(50) NOT NULL,
    postalCode VARCHAR(15),
    territory VARCHAR(10)
);

-- Insert sample data to offices tables

INSERT INTO offices (officeCode, city, phone, addressLine1, addressLine2, state, country, postalCode, territory)
VALUES
('1', 'Nairobi', '+254-700-123456', 'Westlands Ave', NULL, 'Nairobi', 'Kenya', '00100', 'Africa'),
('2', 'Kampala', '+256-789-654321', 'Makerere Rd', NULL, 'Kampala', 'Uganda', '00200', 'Africa');


-- retrieve all the columns and records from the offices table.

SELECT *
FROM offices;

-- Create products table

CREATE TABLE products (
    productCode VARCHAR(15) PRIMARY KEY,
    productName VARCHAR(100) NOT NULL,
    productLine VARCHAR(50),
    productScale VARCHAR(20),
    productVendor VARCHAR(50),
    productDescription TEXT,
    quantityInStock INT NOT NULL,
    buyPrice DECIMAL(10,2) NOT NULL,
);

-- Insert sample data into products tables

INSERT INTO products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice)
VALUES
('P001', 'Classic Car Model A', 'Classic Cars', '1:18', 'AutoArt', 'Detailed model of vintage car', 50, 75.00),
('P002', 'Sports Car Model B', 'Sports Cars', '1:24', 'Maisto', 'High-quality sports car model', 30, 55.00),
('P003', 'Truck Model C', 'Trucks', '1:12', 'HotWheels', 'Large truck collectible', 20, 100.00),
('P004', 'Motorbike Model D', 'Motorbikes', '1:18', 'AutoArt', 'Vintage motorbike model', 10, 40.00),
('P005', 'Race Car Model E', 'Race Cars', '1:24', 'Maisto', 'Fast race car replica', 15, 60.00),
('P006', 'Luxury Car Model F', 'Luxury Cars', '1:18', 'Bburago', 'Luxury model with fine details', 25, 200.00);

-- fetch the productName and quantityInStock from the products table.
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;

