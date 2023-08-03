CREATE DATABASE library;
USE library;
CREATE TABLE Books (
  ISBN VARCHAR(255) PRIMARY KEY,
  Book_title VARCHAR(255),
  Category VARCHAR(100),
  Rental_Price DECIMAL(10, 2),
  Status VARCHAR(3),
  Author VARCHAR(255),
  Publisher VARCHAR(255)
);
CREATE TABLE Branch (
  Branch_no INT PRIMARY KEY,
  Manager_Id INT,
  Branch_address VARCHAR(255),
  Contact_no VARCHAR(20)
);

CREATE TABLE Employee (
  Emp_Id INT PRIMARY KEY,
  Emp_name VARCHAR(255),
  Position VARCHAR(100),
  Salary DECIMAL(10, 2)
);

CREATE TABLE Customer (
  Customer_Id INT PRIMARY KEY,
  Customer_name VARCHAR(255),
  Customer_address VARCHAR(255),
  Reg_date DATE
);

CREATE TABLE IssueStatus (
  Issue_Id INT PRIMARY KEY,
  Issued_cust INT,
  Issued_book_name VARCHAR(255),
  Issue_date DATE,
  Isbn_book VARCHAR(255),
  FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
  FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

CREATE TABLE ReturnStatus (
  Return_Id INT PRIMARY KEY,
  Return_cust INT,
  Return_book_name VARCHAR(255),
  Return_date DATE,
  Isbn_book2 VARCHAR(255),
  FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
  FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);
INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) VALUES
  ('974876978', 'Introduction to SQL', 'Computer Science', 12.50, 'yes', 'James', 'Tech Publishing'),
  ('978-0984782857', 'Python Crash Course', 'Computer Science', 15.00, 'yes', 'Jhon Savior', 'Dev Publications'),
  ('978-0743273565', 'The Great Gatsby', 'Fiction', 8.75, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
  ('978-0385472579', 'To Kill a Mockingbird', 'Fiction', 9.99, 'yes', 'Harper Lee', 'J. B. Lippincott & Co.'),
  ('978-0451524935', '1984', 'Fiction', 10.25, 'yes', 'George Orwell', 'Signet Classics'),
  ('978-0061120084', 'The Catcher in the Rye', 'Fiction', 8.50, 'yes', 'J. D. Salinger', 'Little, Brown and Company'),
  ('978-0547928227', 'Harry Potter and the Sorcerer\'s Stone', 'Fantasy', 11.75, 'yes', 'J. K. Rowling', 'Scholastic'),
  ('978-0547928203', 'Harry Potter and the Chamber of Secrets', 'Fantasy', 11.75, 'yes', 'J. K. Rowling', 'Scholastic'),
  ('978-0547928210', 'Harry Potter and the Prisoner of Azkaban', 'Fantasy', 12.50, 'yes', 'J. K. Rowling', 'Scholastic'),
  ('978-0547928228', 'Harry Potter and the Goblet of Fire', 'Fantasy', 13.25, 'yes', 'J. K. Rowling', 'Scholastic');


INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
VALUES
  (1, 101, '123 Main Street', '+1 (123) 456-7890'),
  (2, 102, '456 Park Avenue', '+1 (987) 654-3210'),
  (3, 103, '789 Elm Road', '+1 (555) 123-4567'),
  (4, 104, '111 Oak Lane', '+1 (222) 333-4444'),
  (5, 105, '555 Maple Street', '+1 (666) 777-8888'),
  (6, 106, '777 Pine Avenue', '+1 (999) 888-7777'),
  (7, 107, '222 Elm Road', '+1 (444) 333-2222'),
  (8, 108, '999 Oak Street', '+1 (111) 000-9999'),
  (9, 109, '333 Maple Lane', '+1 (888) 999-0000'),
  (10, 110, '666 Pine Avenue', '+1 (777) 888-9999');
  
INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary)
VALUES
  (101, 'John Doe', 'Manager', 75000.00),
  (102, 'Jane Smith', 'Librarian', 60000.00),
  (103, 'Michael Johnson', 'Clerk', 40000.00),
  (104, 'Emily Williams', 'Librarian', 58000.00),
  (105, 'Robert Brown', 'Clerk', 42000.00),
  (106, 'Jennifer Lee', 'Clerk', 41000.00),
  (107, 'William Davis', 'Clerk', 39000.00),
  (108, 'Elizabeth Martinez', 'Clerk', 40000.00),
  (109, 'David Wilson', 'Clerk', 42000.00),
  (110, 'Linda Anderson', 'Clerk', 40000.00);

INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date)
VALUES
  (1, 'Alice Johnson', '123 Oak Street', '2021-12-15'),
  (2, 'Bob Smith', '456 Pine Avenue', '2022-01-05'),
  (3, 'Eve Brown', '789 Maple Road', '2022-03-20'),
  (4, 'John Williams', '222 Elm Lane', '2022-05-10'),
  (5, 'Sarah Miller', '333 Birch Street', '2022-06-25'),
  (6, 'Michael Davis', '444 Cedar Avenue', '2022-07-15'),
  (7, 'Emily Johnson', '555 Oak Road', '2022-08-08'),
  (8, 'William Anderson', '666 Maple Lane', '2022-09-12'),
  (9, 'Olivia Wilson', '777 Pine Street', '2022-10-05'),
  (10, 'James Martinez', '888 Elm Avenue', '2022-11-20');
  
  INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book)
VALUES
    (1, 1, 'Introduction to SQL', '2023-07-10', '978-1234567890'),
  (2, 2, 'Python Crash Course', '2023-07-12', '978-0984782857'),
  (3, 3, 'The Great Gatsby', '2023-07-15', '978-0743273565'),
  (4, 4, 'To Kill a Mockingbird', '2023-07-20', '978-0385472579'),
  (5, 5, '1984', '2023-07-22', '978-0451524935'),
  (6, 6, 'The Catcher in the Rye', '2023-07-25', '978-0061120084'),
  (7, 7, 'Harry Potter and the Sorcerer\'s Stone', '2023-07-28', '978-0547928227'),
  (8, 8, 'Harry Potter and the Chamber of Secrets', '2023-07-30', '978-0547928203'),
  (9, 9, 'Harry Potter and the Prisoner of Azkaban', '2023-08-02', '978-0547928210'),
  (10, 10, 'Harry Potter and the Goblet of Fire', '2023-08-05', '978-0547928228');
  
  INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2)
VALUES
  (1, 1, 'Introduction to SQL', '2023-07-15', '978-1234567890'),
  (2, 2, 'Python Crash Course', '2023-07-20', '978-0984782857'),
  (3, 3, 'The Great Gatsby', '2023-07-25', '978-0743273565'),
   (4, 4, 'To Kill a Mockingbird', '2023-07-30', '978-0385472579'),
  (5, 5, '1984', '2023-08-05', '978-0451524935'),
  (6, 6, 'The Catcher in the Rye', '2023-08-10', '978-0061120084'),
  (7, 7, 'Harry Potter and the Sorcerer\'s Stone', '2023-08-15', '978-0547928227'),
  (8, 8, 'Harry Potter and the Chamber of Secrets', '2023-08-20', '978-0547928203'),
  (9, 9, 'Harry Potter and the Prisoner of Azkaban', '2023-08-25', '978-0547928210'),
  (10, 10, 'Harry Potter and the Goblet of Fire', '2023-08-30', '978-0547928228');

SELECT Book_title, Category, Rental_Price
FROM Books
WHERE Status = 'yes';

SELECT Emp_name, Salary
FROM Employee
ORDER BY Salary DESC;

SELECT b.Book_title, c.Customer_name
FROM Books b
JOIN IssueStatus i ON b.ISBN = i.Isbn_book
JOIN Customer c ON i.Issued_cust = c.Customer_Id;



SELECT Emp_name, Position
FROM Employee
WHERE Salary > 50000;


SELECT Customer_name
FROM Customer
WHERE Reg_date < '2022-01-01'
AND Customer_Id NOT IN (SELECT DISTINCT Issued_cust FROM IssueStatus);


SELECT Branch.Branch_no, COUNT(*) AS Total_Employees
FROM Branch
JOIN Employee ON Branch.Manager_Id = Employee.Emp_Id
GROUP BY Branch.Branch_no;

SELECT DISTINCT c.Customer_name
FROM Customer c
JOIN IssueStatus i ON c.Customer_Id = i.Issued_cust
WHERE i.Issue_date >= '2023-06-01'
AND i.Issue_date < '2023-07-01';


SELECT Book_title
FROM Books
WHERE Category = 'History';


SELECT Branch.Branch_no, COUNT(*) AS Total_Employees
FROM Branch
JOIN Employee ON Branch.Manager_Id = Employee.Emp_Id
GROUP BY Branch.Branch_no
HAVING COUNT(*) > 5;