USE lab_1;
#1
CREATE TABLE Employee(
code int(100) primary key,
name VARCHAR(80), 
designation varchar(90), 
salary float, 
DOB date 
);
INSERT INTO Employee (code, name, designation ,salary,DOB)
VALUES('00066','Arpitha','General Manager','70000.00','1990-07-25'),
('00098','Catherine','Product Manager','60000.00','1993-03-17'),
('000248','Kalyani','Assistant Manager','40000.00','1995-12-11'),
('00084','Radhika','Clerk','20000.00','1997-06-08');
#2
SELECT * FROM Employee ORDER BY name DESC;
#3
CREATE TABLE Deposit(
baccno bigint,
branch_name varchar(60),
amount float);
INSERT INTO Deposit(baccno, branch_name, amount)
VALUES(1865752,'Mavelikara',300000.00),
(1996365,'Chengannur',702278.00),
(1898634,'Mavelikara',802300.00),
(1845453,'Cherthala',5000063.00),
(1875464,'Haripad',9345260.50);
#4
SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;