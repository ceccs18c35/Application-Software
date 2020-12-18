 USE lab_1;
 /*a Create a table store. Fields are order no, code, item, quantity, price, discount, mrp */
CREATE TABLE Store (
	`order_no` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `item` VARCHAR(20) NOT NULL,
    `quantity` INTEGER UNSIGNED NOT NULL,
    `discount` DECIMAL(2,2) DEFAULT 0,
    `mrp` DECIMAL(6, 2) NOT NULL
);

 /* b. Inserting values into the table */
INSERT INTO Store (`item`, `quantity`, `discount`, `mrp`)
VALUES ('pencil', 5, 0, 10), ('book', 6, 0, 60);

 /* c. Display the table */
SELECT * FROM Store;

 /*d. To display the reminder, if the amount of an each item in store sis divided by 9. */
SELECT MOD(`mrp`, 9) FROM Store;

 /*e. To display the amount in store and its square */
SELECT `mrp`, POWER(`mrp`, 2) FROM Store;

 /* f. To divide the amount in stock of each item by 7 in store table and display the result round to the nearest integer. */
SELECT ROUND(`mrp` / 7, 0) FROM Store;