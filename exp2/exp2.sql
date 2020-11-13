USE lab_1;
#1
CREATE TABLE Employee (	`code` CHAR(4) NOT NULL, `name` CHAR(10) NOT NULL,
 `designation` CHAR(30) NOT NULL, 
 `dob` DATE NOT NULL, `salary` NUMERIC);
 #2
 INSERT INTO Employee (`code`, `name`, `designation`, `dob`, `salary`)
 VALUES ("e2", "Maya", "Manager", "1993-9-30", 60000),
 ("e1","Ram", "Sales", "1992-6-12", 20000);
 #3
 SELECT * FROM Employee;
 #4
 UPDATE Employee 
 SET salary ="30000"
 WHERE 'code' = "e1";
 #5
 DELETE FROM Employee WHERE 'code' = "e2";