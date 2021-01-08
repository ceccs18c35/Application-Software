USE lab_1;
#1 
CREATE TABLE Employee(
code int(100) primary key,
name VARCHAR(80), 
designation varchar(90), 
salary float, 
DOB date 
);
#2
INSERT INTO Employee (code, name, designation ,salary,DOB)
VALUES('00066','Arpitha','General Manager','70000.00','1990-07-25'),
('00098','Catherine','Product Manager','60000.00','1993-03-17'),
('000248','Kalyani','Assistant Manager','40000.00','1995-12-11'),
('00084','Radhika''Clerk','Clerk','20000.00','1997-06-08');
#3
SELECT SUM(salary) FROM Employee WHERE designation='Clerk';
#4
SELECT MAX(salary) FROM Employee;
#5
SELECT AVG(salary) FROM Employee;
#6
SELECT MIN(salary) FROM Employee;
#7
SELECT COUNT(*) FROM Employee;