CREATE DATABASE IF NOT EXISTS banking_db;
USE banking_db;
CREATE TABLE IF NOT EXISTS Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    dob DATE,
    gender VARCHAR(10),
    phone VARCHAR(15)
);
CREATE TABLE IF NOT EXISTS Branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(50),
    city VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS Account (
    account_no INT PRIMARY KEY,
    account_type VARCHAR(20),
    balance DECIMAL(10,2),
    customer_id INT,
    branch_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);
CREATE TABLE IF NOT EXISTS Transactions (
    transaction_id INT PRIMARY KEY,
    transaction_date DATE,
    transaction_type VARCHAR(20),
    amount DECIMAL(10,2),
    account_no INT,
    FOREIGN KEY (account_no) REFERENCES Account(account_no)
);
CREATE TABLE IF NOT EXISTS Loan (
    loan_id INT PRIMARY KEY,
    loan_type VARCHAR(30),
    amount DECIMAL(10,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
CREATE TABLE IF NOT EXISTS Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    designation VARCHAR(30),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);
SHOW TABLES;
DESC Customer;
DESC Branch;
DESC Account;
DESC Transactions;
DESC Loan;
DESC Employee;
SHOW CREATE TABLE Account;







-- CREATE DATABASE IF NOT EXISTS banking_db;
-- USE banking_db;
-- CREATE TABLE IF NOT EXISTS Bank (
--     Id INT PRIMARY KEY,
--     Name VARCHAR(50),
--     Address VARCHAR(100),
--     Contact VARCHAR(15)
-- );
-- CREATE TABLE IF NOT EXISTS Customer (
--     Id INT PRIMARY KEY,
--     Name VARCHAR(50),
--     Address VARCHAR(100),
--     CNIC VARCHAR(20)
-- );
-- CREATE TABLE IF NOT EXISTS Employee (
--     Id INT PRIMARY KEY,
--     Name VARCHAR(50),
--     Address VARCHAR(100),
--     Contact VARCHAR(15),
--     Gender VARCHAR(10),
--     Bank_Id INT,
--     FOREIGN KEY (Bank_Id) REFERENCES Bank(Id)
-- );
-- CREATE TABLE IF NOT EXISTS Employee (
--     Id INT PRIMARY KEY,
--     Name VARCHAR(50),
--     Address VARCHAR(100),
--     Contact VARCHAR(15),
--     Gender VARCHAR(10),
--     Bank_Id INT,
--     FOREIGN KEY (Bank_Id) REFERENCES Bank(Id)
-- );
-- CREATE TABLE IF NOT EXISTS BankAccount (
--     Id INT PRIMARY KEY,
--     AccountNo VARCHAR(20),
--     Holder VARCHAR(50),
--     Type VARCHAR(20),
--     Bank_Id INT,
--     Customer_Id INT,
--     FOREIGN KEY (Bank_Id) REFERENCES Bank(Id),
--     FOREIGN KEY (Customer_Id) REFERENCES Customer(Id)
-- );
-- CREATE TABLE IF NOT EXISTS Transactions (
--     Id INT PRIMARY KEY,
--     Time TIME,
--     Amount DECIMAL(10,2),
--     Account VARCHAR(20),
--     BankAccount_Id INT,
--     FOREIGN KEY (BankAccount_Id) REFERENCES BankAccount(Id)
-- );
-- INSERT INTO Bank (Id, Name, Address, Contact)
-- VALUES
-- (1, 'National Bank', 'Delhi, India', '011-45678900');
-- INSERT INTO Customer (Id, Name, Address, CNIC)
-- VALUES
-- (101, 'Devashish', 'Delhi, India', '11111-2222222-3'),
-- (102, 'Bhavya', 'Noida, India', '44444-5555555-6');
-- INSERT INTO Employee (Id, Name, Address, Contact, Gender, Bank_Id)
-- VALUES
-- (201, 'Devashish', 'Delhi, India', '9876543210', 'Male', 1),
-- (202, 'Bhavya', 'Noida, India', '9123456789', 'Female', 1);
-- INSERT INTO BankAccount 
-- (Id, AccountNo, Holder, Type, Bank_Id, Customer_Id)
-- VALUES
-- (301, 'ACC1001', 'Devashish', 'Savings', 1, 101),
-- (302, 'ACC1002', 'Bhavya', 'Current', 1, 102);
-- INSERT INTO Transactions 
-- (Id, Time, Amount, Account, BankAccount_Id)
-- VALUES
-- (401, '10:15:00', 5000, 'ACC1001', 301),
-- (402, '11:30:00', 8000, 'ACC1002', 302);
-- SHOW TABLES;

-- SELECT * FROM Bank;
-- SELECT * FROM Customer;
-- SELECT * FROM Employee;
-- SELECT * FROM BankAccount;
-- SELECT * FROM Transactions;



