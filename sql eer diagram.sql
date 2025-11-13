create database Apple_company;
use Apple;
CREATE TABLE Departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50),
dept_head VARCHAR(50)
);
INSERT INTO Departments VALUES
(1, 'Design', 'Jony Ive'),
(2, 'Engineering', 'Craig Federighi'),
(3, 'Marketing', 'Phil Schiller'),
(4, 'Retail', 'Angela Ahrendts');
CREATE TABLE Employees ( 
emp_id INT PRIMARY KEY, 
emp_name VARCHAR(50), 
emp_gender VARCHAR(10), 
emp_salary DECIMAL(10,2), 
dept_id INT, 
hire_date DATE,
FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

INSERT INTO Employees  VALUES (emp_id ,emp_name , emp_gender , emp_salary , dept_id , hire_date)
(101, 'Tim Cook', 'M', 3500000, 2, '2011-08-24'),
(102, 'Katherine Adams', 'F', 1200000, 3, '2017-10-06'),
(103, 'Eddy Cue', 'M', 1500000, 1,'1999-04-01'),
(104, 'Deirdre Brien', 'F', 900000, 4, 2019-02-01);
CREATE TABLE Products ( 
product_id INT PRIMARY KEY, 
product_name VARCHAR(50), 
category VARCHAR(50), 
price INT NOT NULL,
release_date DATE
);
INSERT INTO Products value (product_id , product_name , category , price , release_date) 
(1001, 'iPhone 15 Pro', 'Smartphone', '129999', '2023-09-22'),
(1002, 'MacBook Air M3', 'Laptop', 139999, '2024-02-01'),
(1003, 'Apple Watch Series 9', 'Wearable', 45999, '2023-09-22'),
(1004, 'AirPods Pro 2', 'Audio', 24999, '2022-09-23');
CREATE TABLE Customers ( 
cust_id INT PRIMARY KEY, 
cust_name VARCHAR(50), 
cust_city VARCHAR(50), 
cust_email VARCHAR(60), 
join_date DATE
);
INSERT INTO Customers VALUES
(1, 'Aditi Sharma'', Delhi, 'aditi@gmail.com',
2023-05-14),
(2, 'Rohan Mehta','Mumbai",'rohan@yahoo.com',
'2023-09-01),
(3, 'Sneha Kapoor",'Noida','sneha@hotmail.com',
'2024-01-11'),
(4, 'Aman Verma', 'Bangalore','aman@gmail.com', 
'2024-06-20');
CREATE TABLE Stores ( 
store_id INT PRIMARY KEY, 
store_name VARCHAR(50), 
Location VARCHAR(60), 
opening_year INT
);
INSERT INTO Stores VALUES 
(11, 'Apple Saket', 'Delhi', 2023), 
(12, Apple BKC, Mumbai, 2023), 
(13, 'Apple MG Road', 'Bangalore', 2024);