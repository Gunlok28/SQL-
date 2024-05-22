create database OnlineBookstore;
CREATE TABLE BOOKS(Title VARCHAR(500), Author VARCHAR(500), ISBN INT PRIMARY KEY, Genre VARCHAR(500), Price INT, Qty INT);
select * from books;
CREATE TABLE Authors (Name VARCHAR(50), Biography VARCHAR(500), Email VARCHAR(100), Contact_Details int);
select* from Authors;
CREATE TABLE Customers(Customer_ID int primary key auto_increment,Customer_Name VARCHAR(100),Address VARCHAR(255),Email VARCHAR(100),Phone int);
select * from Customers;
CREATE TABLE Orders (OrderID INT PRIMARY KEY, CustomerID INT, OrderDate DATE, TotalAmount DECIMAL(10, 2),foreign key(CustomerID) REFERENCES customers(Customer_ID));
select * from orders;
CREATE TABLE OrderDetails(book_id int, Qty int, Subtotal decimal (10,2),Foreign key(book_id)REFERENCES books(ISBN));
select * from orderdetails;
CREATE TABLE Transactions (TransactionID INT PRIMARY KEY, OrderID INT, TransactionDate DATETIME,Payment_Method varchar(100), foreign key(OrderID) references Orders(OrderID));
select * from Transactions;



