CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

ALTER TABLE Employees ADD COLUMN HireDate DATE;
ALTER TABLE Employees ADD COLUMN Salary INT;

ALTER TABLE Employees ADD COLUMN Department VARCHAR(50);

INSERT INTO Employees (FirstName, LastName, HireDate, Salary, Department)
VALUES
('Nguyen', 'An', '2023-05-10', 15000000, 'HR'),
('Tran', 'Binh', '2024-02-20', 18000000, 'IT'),
('Le', 'Chi', '2025-01-05', 20000000, 'Finance'),
('David', 'Pham', '2021-07-01', 4800, 'IT');

UPDATE Employees
SET Salary = 4800
WHERE EmployeeID = 2;

UPDATE Employees
SET HireDate = '2021-08-01'
WHERE FirstName = 'David';

DELETE FROM Employees
WHERE EmployeeID = 1;

DELETE FROM Employees
WHERE Salary < 5000;

SELECT * FROM Employees;
SELECT * FROM Employees WHERE Salary > 5000;
SELECT * FROM Employees ORDER BY HireDate DESC;

SELECT Department, COUNT(*) AS NumEmployees
FROM Employees
GROUP BY Department;

SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;

SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 5000;
