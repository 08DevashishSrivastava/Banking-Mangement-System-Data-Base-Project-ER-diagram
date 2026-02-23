🏦 Banking Management System

A Banking Management System developed to manage basic banking operations such as customer accounts, transactions, and bank details. This project demonstrates the use of database management concepts, relations, and CRUD operations in a real-world banking scenario.

📌 Project Overview

The Banking Management System is designed to automate and simplify banking processes like:

Customer registration

Account management

Deposits and withdrawals

Transaction tracking

Bank–customer relationships

This project is suitable for DBMS, SQL, and backend development practice.

🛠️ Technologies Used

Programming Language: SQL

Database: MySQL

Server Environment: XAMPP / MySQL Server

Tools: MySQL Workbench / phpMyAdmin

📂 Project Structure
Banking-Management-System/
│
├── database/
│   ├── create_database.sql
│   ├── create_tables.sql
│   ├── insert_values.sql
│
├── diagrams/
│   ├── ER_Diagram.png
│   ├── Relational_Model.png
│
├── queries/
│   ├── select_queries.sql
│   ├── join_queries.sql
│
└── README.md
🗄️ Database Details
Main Tables

Bank

Customer

Account

Transaction

Branch

Relationships

One customer can have multiple accounts (One-to-Many)

One bank can have many customers

Accounts are linked to transactions

Customers and banks are connected through accounts

⚙️ Features

Create and manage customer records

Open and manage bank accounts

Perform deposit and withdrawal operations

Maintain transaction history

Use of primary keys and foreign keys

Implementation of one-to-one and one-to-many relationships

🚀 How to Run the Project

Install XAMPP or any MySQL server

Start MySQL

Open phpMyAdmin or MySQL Workbench

Create a new database:

CREATE DATABASE banking_management;

Import or run the provided SQL files in order:

Create tables

Insert values

Execute queries to test functionality

📊 Sample Operations

View all customers

Check account balance

Display transaction history

Join customer and bank details

🎓 Learning Outcomes

Understanding of DBMS concepts

Hands-on experience with SQL queries

Practical use of relationships in databases

Real-world banking system simulation

👨‍💻 Author

Devashish Srivastava
B.Tech CSE Student
IILM University

🔗 GitHub: 08DevashishSrivastava
