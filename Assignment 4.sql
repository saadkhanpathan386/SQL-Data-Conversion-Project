DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees (
   EmpID INT PRIMARY KEY,
   Name VARCHAR(50),
   DateOfBirth DATE,
   JoinDate DATE
);

INSERT INTO Employees (EmpID, Name, DateOfBirth, JoinDate) VALUES
   (1, 'Alice Johnson', '1985-05-20', '2010-06-15'),
   (2, 'Bob Smith',     '1990-08-10', '2015-09-01'),
   (3, 'Charlie Brown', '1988-03-25', '2012-11-12'),
   (4, 'Diana Prince',  '1992-01-30', '2017-07-08'),
   (5, 'Eve Adams',     '1987-12-05', '2013-03-20');
   
   SELECT CURRENT_TIMESTAMP;

SELECT Name, FLOOR(DATEDIFF(CURRENT_DATE, DateOfBirth)/365.25) AS Age
FROM Employees;

SELECT Name, FLOOR(DATEDIFF(CURRENT_DATE, JoinDate)/365.25) AS YearsExperience
FROM Employees;

SELECT Name,
       YEAR(DateOfBirth) AS BirthYear,
       MONTH(DateOfBirth) AS BirthMonth,
       DAY(DateOfBirth) AS BirthDay
FROM Employees;

SELECT Name
FROM Employees
WHERE MONTH(DateOfBirth) = 8;

SELECT Name
FROM Employees
WHERE
  DATE_FORMAT(DATE_ADD(DateOfBirth, INTERVAL YEAR(CURRENT_DATE)-YEAR(DateOfBirth) YEAR), '%m-%d')
  BETWEEN DATE_FORMAT(CURRENT_DATE, '%m-%d')
      AND DATE_FORMAT(DATE_ADD(CURRENT_DATE, INTERVAL 30 DAY), '%m-%d');

