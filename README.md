🏦 Banking Management System (DBMS Project)
📌 Project Overview

The Banking Management System is a database-driven project designed to manage core banking operations such as customer management, account handling, transactions, payments, and staff management.
This project is created using DBMS concepts and is represented through a detailed Entity Relationship (ER) Diagram.

The system ensures proper relationships between users, accounts, transactions, payments, and staff, making banking operations efficient, secure, and well-structured.

🎯 Objectives

To design a structured Banking Database System

To understand ER modeling and relationships

To manage customers, accounts, transactions, and payments

To implement 1:1, 1:M, and M:N relationships

To apply DBMS concepts in a real-world scenario

🗂️ Entities & Attributes
👤 Customer (Process)

Custom ID

Name

Address

Mobile No

Gender

🧑‍💼 Staff (Process)

Staff ID

Staff Name

Staff No

Email

Date of Birth (DOB)

💳 Account

Account ID

Account No

User Name

Password

Transaction Limit

💸 Transaction

Transaction ID

Transaction Type

Amount

Receiver Amount

Date

💵 Payment

Payment ID

Payment Type

Payment Amount

Biller Name

Biller Amount

🔗 Relationships

Customer ↔ Account

Credit & Login (1 : 1)

Account ↔ Transaction

Make (1 : M)

Account ↔ Payment

Make (1 : M)

Staff ↔ Customer

Managed By (M : N)

🛠️ Technologies Used

Database: MySQL

Design Tool: ER Diagram Tool

Language: SQL

Concepts: DBMS, ER Modeling, Normalization

📊 ER Diagram

The ER diagram visually represents:

Entities and attributes

Primary and foreign keys

Relationships between tables

(ER diagram included in the repository)

🚀 How to Use

Clone the repository

git clone https://github.com/your-username/banking-management-system.git

Import the SQL file into MySQL

Execute the queries in order

View and test relationships using SELECT queries

👥 Contributors

Devashish Srivastava

Bhavya Bisht
