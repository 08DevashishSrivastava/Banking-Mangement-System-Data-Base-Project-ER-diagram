/* ================================
   STEP 0: DELETE OLD DATABASE
   ================================ */
DROP DATABASE IF EXISTS banking_db;

/* ================================
   STEP 1: CREATE DATABASE
   ================================ */
CREATE DATABASE banking_db;
USE banking_db;

/* ================================
   STEP 2: CREATE TABLES
   (Each table has EXACTLY 5 attributes)
   ================================ */

/* 1️⃣ BANK */
CREATE TABLE Bank (
    bank_id INT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100),
    contact VARCHAR(15),
    branch_code VARCHAR(10)
);

/* 2️⃣ CUSTOMER */
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    cnic VARCHAR(20)
);

/* 3️⃣ BANK ACCOUNT */
CREATE TABLE BankAccount (
    account_id INT PRIMARY KEY,
    account_no VARCHAR(20),
    account_type VARCHAR(20),
    balance DECIMAL(10,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

/* 4️⃣ EMPLOYEE */
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    gender VARCHAR(10),
    contact VARCHAR(15),
    bank_id INT,
    FOREIGN KEY (bank_id) REFERENCES Bank(bank_id)
);

/* 5️⃣ TRANSACTIONS */
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    transaction_time TIME,
    amount DECIMAL(10,2),
    transaction_type VARCHAR(20),
    account_id INT,
    FOREIGN KEY (account_id) REFERENCES BankAccount(account_id)
);

/* ================================
   STEP 3: INSERT DATA
   (Devashish & Bhavya)
   ================================ */

/* BANK */
INSERT INTO Bank VALUES
(1, 'National Bank', 'Delhi, India', '0114567890', 'NB001');

/* CUSTOMER */
INSERT INTO Customer VALUES
(101, 'Devashish', 'Delhi, India', '9876543210', '11111-2222222-3'),
(102, 'Bhavya', 'Noida, India', '9123456789', '44444-5555555-6');

/* BANK ACCOUNT */
INSERT INTO BankAccount VALUES
(201, 'ACC1001', 'Savings', 50000, 101),
(202, 'ACC1002', 'Current', 75000, 102);

/* EMPLOYEE */
INSERT INTO Employee VALUES
(301, 'Devashish', 'Male', '9876500000', 1),
(302, 'Bhavya', 'Female', '9123400000', 1);

/* TRANSACTIONS */
INSERT INTO Transactions VALUES
(401, '10:30:00', 5000, 'Deposit', 201),
(402, '11:15:00', 8000, 'Withdraw', 202);

/* ================================
   STEP 4: VERIFY OUTPUT
   ================================ */
SHOW TABLES;

SELECT * FROM Bank;
SELECT * FROM Customer;
SELECT * FROM BankAccount;
SELECT * FROM Employee;
SELECT * FROM Transactions;

