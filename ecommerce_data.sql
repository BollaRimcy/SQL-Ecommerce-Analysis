
CREATE DATABASE EcommerceDB;
GO
USE EcommerceDB;
GO
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);
GO

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
GO

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    amount DECIMAL(10,2),
    order_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
GO

-- ============ CUSTOMERS ============
INSERT INTO customers VALUES (1, 'Vikram Sharma', 'Delhi', '2023-09-08');
INSERT INTO customers VALUES (2, 'Rohan Iyer', 'Bangalore', '2024-11-23');
INSERT INTO customers VALUES (3, 'Vivek Reddy', 'Ahmedabad', '2024-03-08');
INSERT INTO customers VALUES (4, 'Rahul Sharma', 'Bangalore', '2023-08-12');
INSERT INTO customers VALUES (5, 'Rohan Menon', 'Ahmedabad', '2023-01-28');
INSERT INTO customers VALUES (6, 'Vivek Nair', 'Kochi', '2024-03-05');
INSERT INTO customers VALUES (7, 'Rohan Rao', 'Ahmedabad', '2023-10-12');
INSERT INTO customers VALUES (8, 'Aditi Pillai', 'Chennai', '2024-03-08');
INSERT INTO customers VALUES (9, 'Meera Patel', 'Chennai', '2023-08-09');
INSERT INTO customers VALUES (10, 'Meera Reddy', 'Bangalore', '2024-01-25');
INSERT INTO customers VALUES (11, 'Vikram Verma', 'Pune', '2024-09-10');
INSERT INTO customers VALUES (12, 'Ishita Pillai', 'Hyderabad', '2024-04-15');
INSERT INTO customers VALUES (13, 'Vivek Reddy', 'Vijayawada', '2023-03-22');
INSERT INTO customers VALUES (14, 'Vivek Patel', 'Ahmedabad', '2024-01-06');
INSERT INTO customers VALUES (15, 'Ananya Nair', 'Bangalore', '2023-02-16');
INSERT INTO customers VALUES (16, 'Rohan Pillai', 'Delhi', '2023-03-23');
INSERT INTO customers VALUES (17, 'Rohan Joshi', 'Bangalore', '2024-01-25');
INSERT INTO customers VALUES (18, 'Ishita Rao', 'Pune', '2023-06-16');
INSERT INTO customers VALUES (19, 'Suresh Verma', 'Mumbai', '2024-11-17');
INSERT INTO customers VALUES (20, 'Ishita Singh', 'Bangalore', '2024-09-15');
INSERT INTO customers VALUES (21, 'Arjun Menon', 'Mumbai', '2023-06-17');
INSERT INTO customers VALUES (22, 'Pooja Gupta', 'Delhi', '2024-10-17');
INSERT INTO customers VALUES (23, 'Vivek Nair', 'Pune', '2023-02-27');
INSERT INTO customers VALUES (24, 'Rohan Joshi', 'Hyderabad', '2023-11-20');
INSERT INTO customers VALUES (25, 'Divya Patel', 'Bangalore', '2023-08-05');
INSERT INTO customers VALUES (26, 'Ananya Bose', 'Pune', '2023-08-06');
INSERT INTO customers VALUES (27, 'Amit Gupta', 'Kolkata', '2023-05-27');
INSERT INTO customers VALUES (28, 'Ishita Iyer', 'Mumbai', '2024-07-28');
INSERT INTO customers VALUES (29, 'Vivek Patel', 'Ahmedabad', '2024-03-14');
INSERT INTO customers VALUES (30, 'Ananya Gupta', 'Pune', '2023-08-13');
INSERT INTO customers VALUES (31, 'Sneha Menon', 'Kolkata', '2023-04-04');
INSERT INTO customers VALUES (32, 'Rahul Joshi', 'Bangalore', '2023-06-06');
INSERT INTO customers VALUES (33, 'Arjun Pillai', 'Vijayawada', '2024-09-02');
INSERT INTO customers VALUES (34, 'Priya Gupta', 'Vijayawada', '2024-09-02');
INSERT INTO customers VALUES (35, 'Pooja Menon', 'Delhi', '2024-07-20');
INSERT INTO customers VALUES (36, 'Aditi Kumar', 'Bangalore', '2024-11-29');
INSERT INTO customers VALUES (37, 'Vivek Pillai', 'Delhi', '2024-10-18');
INSERT INTO customers VALUES (38, 'Meera Reddy', 'Delhi', '2024-03-21');
INSERT INTO customers VALUES (39, 'Arjun Rao', 'Hyderabad', '2023-09-27');
INSERT INTO customers VALUES (40, 'Sara Pillai', 'Chennai', '2024-06-03');
INSERT INTO customers VALUES (41, 'Vikram Joshi', 'Delhi', '2024-10-16');
INSERT INTO customers VALUES (42, 'Sara Das', 'Mumbai', '2023-06-06');
INSERT INTO customers VALUES (43, 'Suresh Pillai', 'Chennai', '2024-07-06');
INSERT INTO customers VALUES (44, 'Sara Bose', 'Hyderabad', '2024-09-05');
INSERT INTO customers VALUES (45, 'Meera Rao', 'Hyderabad', '2023-04-25');
INSERT INTO customers VALUES (46, 'Suresh Bose', 'Delhi', '2023-09-03');
INSERT INTO customers VALUES (47, 'Rahul Nair', 'Ahmedabad', '2023-03-22');
INSERT INTO customers VALUES (48, 'Priya Singh', 'Kolkata', '2023-03-12');
INSERT INTO customers VALUES (49, 'Vivek Pillai', 'Chennai', '2023-05-12');
INSERT INTO customers VALUES (50, 'Amit Menon', 'Chennai', '2023-09-29');
GO

-- ============ PRODUCTS ============
INSERT INTO products VALUES (1, 'Wireless Mouse', 'Electronics', 699);
INSERT INTO products VALUES (2, 'Bluetooth Headphones', 'Electronics', 1499);
INSERT INTO products VALUES (3, 'Laptop Stand', 'Electronics', 899);
INSERT INTO products VALUES (4, 'Running Shoes', 'Footwear', 2499);
INSERT INTO products VALUES (5, 'Yoga Mat', 'Fitness', 799);
INSERT INTO products VALUES (6, 'Water Bottle', 'Fitness', 349);
INSERT INTO products VALUES (7, 'Office Chair', 'Furniture', 5999);
INSERT INTO products VALUES (8, 'Desk Lamp', 'Furniture', 1299);
INSERT INTO products VALUES (9, 'Backpack', 'Accessories', 1899);
INSERT INTO products VALUES (10, 'Sunglasses', 'Accessories', 999);
INSERT INTO products VALUES (11, 'Smartwatch', 'Electronics', 3499);
INSERT INTO products VALUES (12, 'Cotton T-Shirt', 'Clothing', 499);
INSERT INTO products VALUES (13, 'Denim Jeans', 'Clothing', 1599);
INSERT INTO products VALUES (14, 'Coffee Mug', 'Home', 299);
INSERT INTO products VALUES (15, 'Table Lamp', 'Home', 1199);
GO

-- ============ ORDERS ============
INSERT INTO orders VALUES (1, 34, 14, 4, 1196, '2024-08-04', 'Pending');
INSERT INTO orders VALUES (2, 49, 12, 2, 998, '2024-11-15', 'Cancelled');
INSERT INTO orders VALUES (3, 43, 11, 3, 10497, '2025-03-24', 'Pending');
INSERT INTO orders VALUES (4, 29, 2, 2, 2998, '2024-08-18', 'Delivered');
INSERT INTO orders VALUES (5, 22, 1, 2, 1398, '2024-08-13', 'Delivered');
INSERT INTO orders VALUES (6, 5, 12, 1, 499, '2024-08-22', 'Delivered');
INSERT INTO orders VALUES (7, 3, 14, 3, 897, '2024-03-13', 'Pending');
INSERT INTO orders VALUES (8, 16, 5, 4, 3196, '2024-08-07', 'Pending');
INSERT INTO orders VALUES (9, 9, 12, 4, 1996, '2024-09-05', 'Cancelled');
INSERT INTO orders VALUES (10, 27, 4, 1, 2499, '2024-04-09', 'Cancelled');
INSERT INTO orders VALUES (11, 23, 7, 4, 23996, '2025-04-23', 'Delivered');
INSERT INTO orders VALUES (12, 44, 11, 1, 3499, '2024-03-03', 'Cancelled');
INSERT INTO orders VALUES (13, 47, 6, 1, 349, '2024-09-11', 'Delivered');
INSERT INTO orders VALUES (14, 13, 9, 4, 7596, '2024-05-23', 'Cancelled');
INSERT INTO orders VALUES (15, 12, 5, 4, 3196, '2024-09-12', 'Delivered');
INSERT INTO orders VALUES (16, 29, 13, 1, 1599, '2024-02-21', 'Pending');
INSERT INTO orders VALUES (17, 1, 2, 2, 2998, '2024-06-19', 'Cancelled');
INSERT INTO orders VALUES (18, 32, 8, 2, 2598, '2025-02-14', 'Delivered');
INSERT INTO orders VALUES (19, 11, 7, 1, 5999, '2025-02-03', 'Delivered');
INSERT INTO orders VALUES (20, 30, 5, 4, 3196, '2025-05-13', 'Delivered');
INSERT INTO orders VALUES (21, 13, 5, 2, 1598, '2024-02-29', 'Pending');
INSERT INTO orders VALUES (22, 48, 9, 1, 1899, '2024-11-17', 'Delivered');
INSERT INTO orders VALUES (23, 4, 10, 4, 3996, '2025-05-29', 'Pending');
INSERT INTO orders VALUES (24, 11, 1, 1, 699, '2024-07-09', 'Delivered');
INSERT INTO orders VALUES (25, 39, 2, 2, 2998, '2025-02-17', 'Delivered');
INSERT INTO orders VALUES (26, 37, 4, 1, 2499, '2024-03-24', 'Cancelled');
INSERT INTO orders VALUES (27, 43, 10, 3, 2997, '2024-09-24', 'Delivered');
INSERT INTO orders VALUES (28, 43, 12, 3, 1497, '2024-09-01', 'Delivered');
INSERT INTO orders VALUES (29, 26, 3, 3, 2697, '2025-04-13', 'Delivered');
INSERT INTO orders VALUES (30, 49, 15, 1, 1199, '2024-01-10', 'Cancelled');
INSERT INTO orders VALUES (31, 40, 10, 1, 999, '2024-03-16', 'Pending');
INSERT INTO orders VALUES (32, 14, 9, 3, 5697, '2024-05-15', 'Delivered');
INSERT INTO orders VALUES (33, 5, 15, 2, 2398, '2025-01-13', 'Delivered');
INSERT INTO orders VALUES (34, 11, 8, 3, 3897, '2024-01-09', 'Pending');
INSERT INTO orders VALUES (35, 20, 15, 1, 1199, '2024-05-17', 'Delivered');
INSERT INTO orders VALUES (36, 8, 15, 1, 1199, '2024-06-08', 'Delivered');
INSERT INTO orders VALUES (37, 19, 10, 2, 1998, '2024-12-17', 'Delivered');
INSERT INTO orders VALUES (38, 44, 11, 3, 10497, '2025-06-01', 'Cancelled');
INSERT INTO orders VALUES (39, 17, 15, 1, 1199, '2024-04-04', 'Cancelled');
INSERT INTO orders VALUES (40, 18, 1, 1, 699, '2024-12-07', 'Delivered');
INSERT INTO orders VALUES (41, 41, 5, 2, 1598, '2025-03-28', 'Pending');
INSERT INTO orders VALUES (42, 46, 7, 1, 5999, '2024-04-24', 'Delivered');
INSERT INTO orders VALUES (43, 45, 15, 2, 2398, '2024-02-06', 'Delivered');
INSERT INTO orders VALUES (44, 38, 9, 2, 3798, '2025-03-16', 'Delivered');
INSERT INTO orders VALUES (45, 3, 5, 3, 2397, '2024-02-10', 'Delivered');
INSERT INTO orders VALUES (46, 14, 11, 2, 6998, '2024-04-15', 'Delivered');
INSERT INTO orders VALUES (47, 50, 9, 4, 7596, '2024-06-07', 'Delivered');
INSERT INTO orders VALUES (48, 11, 13, 2, 3198, '2025-02-26', 'Delivered');
INSERT INTO orders VALUES (49, 12, 12, 3, 1497, '2025-02-25', 'Delivered');
INSERT INTO orders VALUES (50, 18, 3, 1, 899, '2025-01-26', 'Delivered');
INSERT INTO orders VALUES (51, 31, 4, 2, 4998, '2025-04-16', 'Delivered');
INSERT INTO orders VALUES (52, 20, 14, 2, 598, '2024-08-16', 'Delivered');
INSERT INTO orders VALUES (53, 43, 4, 4, 9996, '2024-12-02', 'Delivered');
INSERT INTO orders VALUES (54, 5, 13, 3, 4797, '2024-12-25', 'Pending');
INSERT INTO orders VALUES (55, 26, 11, 3, 10497, '2024-01-29', 'Delivered');
INSERT INTO orders VALUES (56, 17, 3, 3, 2697, '2024-02-09', 'Delivered');
INSERT INTO orders VALUES (57, 39, 7, 3, 17997, '2024-11-17', 'Cancelled');
INSERT INTO orders VALUES (58, 39, 9, 1, 1899, '2025-01-29', 'Pending');
INSERT INTO orders VALUES (59, 13, 5, 1, 799, '2025-03-22', 'Delivered');
INSERT INTO orders VALUES (60, 34, 15, 2, 2398, '2025-01-07', 'Cancelled');
INSERT INTO orders VALUES (61, 5, 11, 3, 10497, '2024-11-17', 'Delivered');
INSERT INTO orders VALUES (62, 47, 15, 3, 3597, '2025-06-03', 'Delivered');
INSERT INTO orders VALUES (63, 43, 7, 3, 17997, '2025-02-16', 'Delivered');
INSERT INTO orders VALUES (64, 36, 3, 2, 1798, '2025-03-06', 'Cancelled');
INSERT INTO orders VALUES (65, 44, 12, 2, 998, '2024-11-04', 'Cancelled');
INSERT INTO orders VALUES (66, 36, 14, 1, 299, '2024-11-07', 'Delivered');
INSERT INTO orders VALUES (67, 14, 7, 3, 17997, '2025-04-21', 'Cancelled');
INSERT INTO orders VALUES (68, 29, 11, 2, 6998, '2025-06-07', 'Cancelled');
INSERT INTO orders VALUES (69, 48, 3, 1, 899, '2024-10-17', 'Pending');
INSERT INTO orders VALUES (70, 43, 11, 3, 10497, '2024-04-05', 'Delivered');
INSERT INTO orders VALUES (71, 44, 5, 2, 1598, '2024-07-22', 'Delivered');
INSERT INTO orders VALUES (72, 2, 1, 2, 1398, '2025-05-01', 'Pending');
INSERT INTO orders VALUES (73, 50, 2, 4, 5996, '2025-02-28', 'Pending');
INSERT INTO orders VALUES (74, 13, 12, 4, 1996, '2025-05-21', 'Cancelled');
INSERT INTO orders VALUES (75, 16, 3, 1, 899, '2024-04-19', 'Cancelled');
INSERT INTO orders VALUES (76, 15, 3, 4, 3596, '2024-02-21', 'Pending');
INSERT INTO orders VALUES (77, 16, 15, 1, 1199, '2025-04-12', 'Delivered');
INSERT INTO orders VALUES (78, 30, 11, 3, 10497, '2025-03-29', 'Pending');
INSERT INTO orders VALUES (79, 47, 15, 4, 4796, '2025-04-01', 'Delivered');
INSERT INTO orders VALUES (80, 48, 14, 4, 1196, '2025-04-05', 'Delivered');
INSERT INTO orders VALUES (81, 49, 4, 3, 7497, '2025-06-17', 'Cancelled');
INSERT INTO orders VALUES (82, 41, 4, 3, 7497, '2025-03-26', 'Delivered');
INSERT INTO orders VALUES (83, 46, 5, 2, 1598, '2024-10-05', 'Delivered');
INSERT INTO orders VALUES (84, 21, 15, 1, 1199, '2024-05-21', 'Delivered');
INSERT INTO orders VALUES (85, 15, 7, 2, 11998, '2024-08-07', 'Delivered');
INSERT INTO orders VALUES (86, 27, 7, 3, 17997, '2025-04-22', 'Cancelled');
INSERT INTO orders VALUES (87, 4, 4, 4, 9996, '2025-02-02', 'Pending');
INSERT INTO orders VALUES (88, 45, 1, 4, 2796, '2025-05-03', 'Delivered');
INSERT INTO orders VALUES (89, 23, 5, 4, 3196, '2025-03-05', 'Pending');
INSERT INTO orders VALUES (90, 48, 12, 2, 998, '2025-05-14', 'Delivered');
INSERT INTO orders VALUES (91, 18, 7, 4, 23996, '2024-01-30', 'Cancelled');
INSERT INTO orders VALUES (92, 22, 11, 4, 13996, '2024-06-18', 'Cancelled');
INSERT INTO orders VALUES (93, 9, 10, 1, 999, '2025-02-07', 'Pending');
INSERT INTO orders VALUES (94, 37, 11, 1, 3499, '2024-03-26', 'Cancelled');
INSERT INTO orders VALUES (95, 9, 14, 4, 1196, '2024-07-05', 'Delivered');
INSERT INTO orders VALUES (96, 17, 7, 3, 17997, '2024-08-04', 'Cancelled');
INSERT INTO orders VALUES (97, 21, 6, 4, 1396, '2024-10-11', 'Cancelled');
INSERT INTO orders VALUES (98, 17, 14, 1, 299, '2025-04-26', 'Delivered');
INSERT INTO orders VALUES (99, 48, 9, 1, 1899, '2024-12-24', 'Delivered');
INSERT INTO orders VALUES (100, 42, 2, 1, 1499, '2024-02-01', 'Delivered');
INSERT INTO orders VALUES (101, 13, 14, 1, 299, '2024-06-05', 'Delivered');
INSERT INTO orders VALUES (102, 9, 8, 1, 1299, '2024-08-11', 'Cancelled');
INSERT INTO orders VALUES (103, 45, 5, 3, 2397, '2024-06-20', 'Pending');
INSERT INTO orders VALUES (104, 39, 12, 1, 499, '2024-06-16', 'Delivered');
INSERT INTO orders VALUES (105, 7, 10, 1, 999, '2024-11-15', 'Pending');
INSERT INTO orders VALUES (106, 44, 15, 4, 4796, '2025-02-10', 'Delivered');
INSERT INTO orders VALUES (107, 5, 10, 2, 1998, '2024-04-14', 'Delivered');
INSERT INTO orders VALUES (108, 44, 10, 1, 999, '2024-02-12', 'Delivered');
INSERT INTO orders VALUES (109, 35, 7, 3, 17997, '2024-03-11', 'Pending');
INSERT INTO orders VALUES (110, 42, 6, 1, 349, '2025-03-06', 'Cancelled');
INSERT INTO orders VALUES (111, 7, 7, 3, 17997, '2025-04-15', 'Delivered');
INSERT INTO orders VALUES (112, 28, 3, 3, 2697, '2025-05-10', 'Cancelled');
INSERT INTO orders VALUES (113, 28, 14, 3, 897, '2024-11-26', 'Delivered');
INSERT INTO orders VALUES (114, 6, 5, 4, 3196, '2024-09-06', 'Cancelled');
INSERT INTO orders VALUES (115, 37, 10, 4, 3996, '2024-12-10', 'Delivered');
INSERT INTO orders VALUES (116, 32, 14, 3, 897, '2024-07-05', 'Cancelled');
INSERT INTO orders VALUES (117, 14, 6, 3, 1047, '2024-12-14', 'Delivered');
INSERT INTO orders VALUES (118, 39, 12, 3, 1497, '2024-01-11', 'Pending');
INSERT INTO orders VALUES (119, 13, 2, 2, 2998, '2025-02-20', 'Cancelled');
INSERT INTO orders VALUES (120, 36, 13, 2, 3198, '2025-05-02', 'Cancelled');
INSERT INTO orders VALUES (121, 29, 13, 1, 1599, '2024-04-05', 'Delivered');
INSERT INTO orders VALUES (122, 15, 7, 2, 11998, '2024-11-09', 'Pending');
INSERT INTO orders VALUES (123, 24, 8, 3, 3897, '2025-03-11', 'Pending');
INSERT INTO orders VALUES (124, 22, 6, 4, 1396, '2024-10-04', 'Delivered');
INSERT INTO orders VALUES (125, 17, 4, 1, 2499, '2024-07-16', 'Delivered');
INSERT INTO orders VALUES (126, 8, 12, 2, 998, '2024-07-15', 'Delivered');
INSERT INTO orders VALUES (127, 48, 8, 3, 3897, '2025-06-21', 'Pending');
INSERT INTO orders VALUES (128, 19, 2, 2, 2998, '2024-10-30', 'Delivered');
INSERT INTO orders VALUES (129, 24, 3, 3, 2697, '2024-01-15', 'Pending');
INSERT INTO orders VALUES (130, 9, 5, 1, 799, '2024-02-25', 'Pending');
INSERT INTO orders VALUES (131, 19, 12, 2, 998, '2025-05-17', 'Delivered');
INSERT INTO orders VALUES (132, 1, 10, 3, 2997, '2025-04-25', 'Cancelled');
INSERT INTO orders VALUES (133, 29, 6, 2, 698, '2024-02-22', 'Delivered');
INSERT INTO orders VALUES (134, 31, 2, 1, 1499, '2025-02-14', 'Cancelled');
INSERT INTO orders VALUES (135, 5, 10, 1, 999, '2024-06-04', 'Delivered');
INSERT INTO orders VALUES (136, 37, 5, 1, 799, '2024-09-11', 'Delivered');
INSERT INTO orders VALUES (137, 36, 13, 4, 6396, '2024-08-19', 'Pending');
INSERT INTO orders VALUES (138, 25, 8, 4, 5196, '2024-10-31', 'Pending');
INSERT INTO orders VALUES (139, 28, 5, 1, 799, '2024-04-11', 'Delivered');
INSERT INTO orders VALUES (140, 41, 4, 3, 7497, '2024-03-24', 'Delivered');
INSERT INTO orders VALUES (141, 16, 3, 1, 899, '2024-06-09', 'Delivered');
INSERT INTO orders VALUES (142, 27, 8, 4, 5196, '2024-10-25', 'Delivered');
INSERT INTO orders VALUES (143, 15, 5, 3, 2397, '2025-04-09', 'Delivered');
INSERT INTO orders VALUES (144, 44, 4, 3, 7497, '2024-07-21', 'Cancelled');
INSERT INTO orders VALUES (145, 8, 9, 2, 3798, '2024-06-01', 'Delivered');
INSERT INTO orders VALUES (146, 10, 2, 1, 1499, '2024-06-18', 'Delivered');
INSERT INTO orders VALUES (147, 39, 12, 3, 1497, '2025-03-25', 'Delivered');
INSERT INTO orders VALUES (148, 30, 12, 3, 1497, '2025-02-16', 'Delivered');
INSERT INTO orders VALUES (149, 33, 9, 4, 7596, '2025-03-24', 'Delivered');
INSERT INTO orders VALUES (150, 39, 1, 4, 2796, '2024-11-26', 'Pending');
INSERT INTO orders VALUES (151, 17, 1, 1, 699, '2024-08-22', 'Pending');
INSERT INTO orders VALUES (152, 38, 1, 3, 2097, '2024-02-11', 'Delivered');
INSERT INTO orders VALUES (153, 31, 9, 4, 7596, '2024-10-11', 'Delivered');
INSERT INTO orders VALUES (154, 38, 7, 4, 23996, '2024-04-03', 'Cancelled');
INSERT INTO orders VALUES (155, 23, 7, 3, 17997, '2024-11-24', 'Delivered');
INSERT INTO orders VALUES (156, 11, 6, 4, 1396, '2025-05-22', 'Delivered');
INSERT INTO orders VALUES (157, 43, 7, 1, 5999, '2025-04-10', 'Delivered');
INSERT INTO orders VALUES (158, 21, 5, 3, 2397, '2024-04-28', 'Cancelled');
INSERT INTO orders VALUES (159, 33, 14, 1, 299, '2025-04-18', 'Cancelled');
INSERT INTO orders VALUES (160, 4, 4, 3, 7497, '2025-05-25', 'Cancelled');
INSERT INTO orders VALUES (161, 49, 1, 2, 1398, '2024-09-30', 'Pending');
INSERT INTO orders VALUES (162, 9, 15, 3, 3597, '2025-03-24', 'Cancelled');
INSERT INTO orders VALUES (163, 8, 1, 2, 1398, '2024-06-11', 'Delivered');
INSERT INTO orders VALUES (164, 36, 1, 4, 2796, '2024-04-05', 'Delivered');
INSERT INTO orders VALUES (165, 8, 8, 1, 1299, '2024-06-06', 'Cancelled');
INSERT INTO orders VALUES (166, 46, 5, 3, 2397, '2025-03-01', 'Cancelled');
INSERT INTO orders VALUES (167, 31, 4, 4, 9996, '2024-05-28', 'Cancelled');
INSERT INTO orders VALUES (168, 13, 15, 2, 2398, '2024-03-12', 'Delivered');
INSERT INTO orders VALUES (169, 50, 13, 4, 6396, '2024-12-14', 'Pending');
INSERT INTO orders VALUES (170, 18, 14, 1, 299, '2024-10-16', 'Delivered');
INSERT INTO orders VALUES (171, 38, 10, 4, 3996, '2024-06-01', 'Cancelled');
INSERT INTO orders VALUES (172, 35, 8, 3, 3897, '2024-12-06', 'Pending');
INSERT INTO orders VALUES (173, 49, 9, 4, 7596, '2025-04-11', 'Delivered');
INSERT INTO orders VALUES (174, 13, 12, 2, 998, '2025-01-27', 'Delivered');
INSERT INTO orders VALUES (175, 50, 7, 1, 5999, '2024-11-21', 'Cancelled');
INSERT INTO orders VALUES (176, 46, 15, 4, 4796, '2025-01-30', 'Delivered');
INSERT INTO orders VALUES (177, 32, 1, 2, 1398, '2025-05-29', 'Pending');
INSERT INTO orders VALUES (178, 22, 14, 1, 299, '2025-03-26', 'Delivered');
INSERT INTO orders VALUES (179, 34, 15, 4, 4796, '2024-01-16', 'Delivered');
INSERT INTO orders VALUES (180, 27, 14, 2, 598, '2024-03-17', 'Cancelled');
INSERT INTO orders VALUES (181, 17, 6, 4, 1396, '2024-03-23', 'Delivered');
INSERT INTO orders VALUES (182, 44, 14, 4, 1196, '2024-11-20', 'Cancelled');
INSERT INTO orders VALUES (183, 35, 1, 1, 699, '2024-08-28', 'Delivered');
INSERT INTO orders VALUES (184, 15, 12, 1, 499, '2025-03-20', 'Delivered');
INSERT INTO orders VALUES (185, 49, 11, 1, 3499, '2025-03-30', 'Delivered');
INSERT INTO orders VALUES (186, 45, 5, 1, 799, '2024-02-17', 'Delivered');
INSERT INTO orders VALUES (187, 4, 5, 3, 2397, '2025-01-18', 'Cancelled');
INSERT INTO orders VALUES (188, 10, 4, 4, 9996, '2024-07-03', 'Delivered');
INSERT INTO orders VALUES (189, 12, 2, 4, 5996, '2024-09-03', 'Cancelled');
INSERT INTO orders VALUES (190, 38, 3, 2, 1798, '2025-04-17', 'Delivered');
INSERT INTO orders VALUES (191, 30, 5, 1, 799, '2025-04-21', 'Delivered');
INSERT INTO orders VALUES (192, 44, 9, 2, 3798, '2024-03-16', 'Cancelled');
INSERT INTO orders VALUES (193, 23, 10, 3, 2997, '2025-03-10', 'Delivered');
INSERT INTO orders VALUES (194, 30, 14, 3, 897, '2024-07-22', 'Cancelled');
INSERT INTO orders VALUES (195, 31, 2, 2, 2998, '2025-01-25', 'Pending');
INSERT INTO orders VALUES (196, 23, 10, 3, 2997, '2024-10-29', 'Delivered');
INSERT INTO orders VALUES (197, 43, 7, 3, 17997, '2024-01-09', 'Pending');
INSERT INTO orders VALUES (198, 44, 13, 1, 1599, '2025-05-23', 'Delivered');
INSERT INTO orders VALUES (199, 50, 13, 2, 3198, '2024-12-26', 'Delivered');
INSERT INTO orders VALUES (200, 41, 4, 3, 7497, '2024-05-20', 'Delivered');
INSERT INTO orders VALUES (201, 41, 11, 1, 3499, '2024-11-12', 'Cancelled');
INSERT INTO orders VALUES (202, 3, 10, 3, 2997, '2024-05-14', 'Delivered');
INSERT INTO orders VALUES (203, 19, 6, 4, 1396, '2024-06-28', 'Delivered');
INSERT INTO orders VALUES (204, 9, 13, 3, 4797, '2025-05-28', 'Delivered');
INSERT INTO orders VALUES (205, 11, 5, 4, 3196, '2024-10-29', 'Delivered');
INSERT INTO orders VALUES (206, 8, 8, 1, 1299, '2024-05-24', 'Delivered');
INSERT INTO orders VALUES (207, 44, 12, 4, 1996, '2025-01-09', 'Delivered');
INSERT INTO orders VALUES (208, 26, 1, 3, 2097, '2024-05-06', 'Cancelled');
INSERT INTO orders VALUES (209, 24, 11, 3, 10497, '2025-01-25', 'Delivered');
INSERT INTO orders VALUES (210, 7, 11, 2, 6998, '2025-04-27', 'Delivered');
INSERT INTO orders VALUES (211, 40, 15, 3, 3597, '2024-08-14', 'Delivered');
INSERT INTO orders VALUES (212, 41, 14, 4, 1196, '2024-11-05', 'Cancelled');
INSERT INTO orders VALUES (213, 8, 3, 1, 899, '2024-02-08', 'Delivered');
INSERT INTO orders VALUES (214, 32, 2, 1, 1499, '2024-08-28', 'Pending');
INSERT INTO orders VALUES (215, 9, 7, 4, 23996, '2025-01-14', 'Pending');
INSERT INTO orders VALUES (216, 27, 10, 2, 1998, '2025-02-28', 'Delivered');
INSERT INTO orders VALUES (217, 32, 10, 4, 3996, '2024-10-13', 'Delivered');
INSERT INTO orders VALUES (218, 45, 6, 2, 698, '2025-03-30', 'Cancelled');
INSERT INTO orders VALUES (219, 16, 14, 3, 897, '2024-04-11', 'Delivered');
INSERT INTO orders VALUES (220, 35, 15, 3, 3597, '2024-03-03', 'Cancelled');
INSERT INTO orders VALUES (221, 18, 4, 1, 2499, '2025-04-10', 'Delivered');
INSERT INTO orders VALUES (222, 43, 4, 1, 2499, '2024-02-21', 'Delivered');
INSERT INTO orders VALUES (223, 16, 3, 2, 1798, '2024-03-11', 'Pending');
INSERT INTO orders VALUES (224, 14, 10, 2, 1998, '2024-08-26', 'Delivered');
INSERT INTO orders VALUES (225, 50, 3, 1, 899, '2024-10-10', 'Delivered');
INSERT INTO orders VALUES (226, 9, 9, 3, 5697, '2024-06-27', 'Delivered');
INSERT INTO orders VALUES (227, 43, 14, 1, 299, '2024-05-14', 'Delivered');
INSERT INTO orders VALUES (228, 23, 13, 2, 3198, '2024-11-27', 'Delivered');
INSERT INTO orders VALUES (229, 12, 5, 1, 799, '2024-05-09', 'Cancelled');
INSERT INTO orders VALUES (230, 34, 2, 1, 1499, '2025-05-02', 'Cancelled');
INSERT INTO orders VALUES (231, 50, 6, 1, 349, '2025-04-07', 'Pending');
INSERT INTO orders VALUES (232, 15, 10, 1, 999, '2025-06-17', 'Delivered');
INSERT INTO orders VALUES (233, 30, 11, 1, 3499, '2024-03-03', 'Cancelled');
INSERT INTO orders VALUES (234, 26, 7, 1, 5999, '2025-05-17', 'Cancelled');
INSERT INTO orders VALUES (235, 5, 15, 1, 1199, '2024-11-25', 'Pending');
INSERT INTO orders VALUES (236, 10, 2, 2, 2998, '2024-10-08', 'Pending');
INSERT INTO orders VALUES (237, 41, 10, 3, 2997, '2025-01-25', 'Pending');
INSERT INTO orders VALUES (238, 34, 5, 4, 3196, '2025-06-01', 'Pending');
INSERT INTO orders VALUES (239, 28, 2, 1, 1499, '2024-08-08', 'Cancelled');
INSERT INTO orders VALUES (240, 29, 15, 2, 2398, '2025-02-27', 'Delivered');
INSERT INTO orders VALUES (241, 30, 7, 4, 23996, '2024-04-07', 'Delivered');
INSERT INTO orders VALUES (242, 28, 6, 3, 1047, '2025-01-18', 'Delivered');
INSERT INTO orders VALUES (243, 44, 15, 4, 4796, '2024-03-09', 'Delivered');
INSERT INTO orders VALUES (244, 6, 2, 4, 5996, '2024-04-08', 'Delivered');
INSERT INTO orders VALUES (245, 9, 9, 1, 1899, '2024-12-03', 'Delivered');
INSERT INTO orders VALUES (246, 27, 6, 4, 1396, '2024-02-22', 'Delivered');
INSERT INTO orders VALUES (247, 39, 5, 3, 2397, '2024-04-16', 'Pending');
INSERT INTO orders VALUES (248, 33, 4, 2, 4998, '2025-05-08', 'Delivered');
INSERT INTO orders VALUES (249, 7, 6, 3, 1047, '2024-04-27', 'Delivered');
INSERT INTO orders VALUES (250, 37, 4, 4, 9996, '2024-01-27', 'Pending');
GO
