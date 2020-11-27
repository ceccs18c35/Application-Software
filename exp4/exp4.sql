USE lab_1;
CREATE TABLE Department(
    `Code` INT PRIMARY KEY NOT NULL,
    `Title` VARCHAR(30),
    `Dept_name` VARCHAR(30) UNIQUE NOT NULL,
    `Dept_id` INT UNIQUE NOT NULL,
    `Salary` INT,
    CHECK (`Salary` > 2000 )
);

INSERT INTO Department(`Code`, `Title`, `Dept_name`, `Dept_id`,`Salary`) 
VALUES (035, "Professor", "Computer Science", 004, 30500);



CREATE TABLE Instructor(
    `Name` VARCHAR(50) NOT NULL,
    `Code` INT NOT NULL,
    `ID` INT PRIMARY KEY DEFAULT 0
);

INSERT INTO Instructor(`Name`, `Code`,`ID`)
VALUES ("Maya", 007,081),
		("Aswin Raj" ,005, 030);