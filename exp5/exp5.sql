USE lab_1; 
#a
CREATE TABLE Class (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50)
);
#(b) 
INSERT INTO Class (`name`) VALUES ("Amy"), ("Jake"), ("Rose");
#(c) 
SELECT * FROM Class;
#(d) 
START TRANSACTION;
INSERT INTO Class (`name`) VALUES ("Charles");
ROLLBACK; 
INSERT INTO Class (`name`) VALUES ("Charles");
COMMIT;
START TRANSACTION;
SAVEPOINT Maya;
INSERT INTO Class (`name`) VALUES ("Maya");
ROLLBACK TO Maya;
INSERT INTO Class (`name`) VALUES ("Ram");
COMMIT;


