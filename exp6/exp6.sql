USE lab_1;
#a
CREATE TABLE Store (
	`order_no` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `code` INT(20) NOT NULL,
    `item` VARCHAR(30) NOT NULL,
    `quantity` INTEGER UNSIGNED DEFAULT 1,
    `price` DECIMAL(10,2) NOT NULL,
    `discount` DECIMAL(2,2) DEFAULT 0,
    `mrp` DECIMAL(10,2) NOT NULL
);

#b
INSERT INTO Store (`code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ("003", "PENCIL", 10, 5, 0, 5),("005", "PEN", 10, 45, 0.1, 50);
#c
SELECT * FROM Store;
#d
CREATE VIEW CART AS
SELECT `item`, `quantity` FROM Store;
#e
INSERT INTO Store (`code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ("009", "MAT", 1, 5000, 0, 5000);

SELECT * FROM CART;
#f
DROP VIEW CART;