CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

ALTER TABLE Employees ADD COLUMN HireDate DATE;
ALTER TABLE Employees ADD COLUMN Salary INT;

INSERT INTO Employees (FirstName, LastName, HireDate, Salary)
VALUES
('Nguyen', 'An', '2023-05-10', 15000000),
('Tran', 'Binh', '2024-02-20', 18000000),
('Le', 'Chi', '2025-01-05', 20000000);

UPDATE Employees
SET Salary = 4800
WHERE EmployeeID = 2;
UPDATE Employees 
SET 
    HireDate = '2021-08-01'
WHERE
    FirstName = 'David';
