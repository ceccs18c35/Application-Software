USE lab_1;
CREATE TABLE SAILORS(
SID INT PRIMARY KEY,
SNAME CHAR(25),
RATING FLOAT,
AGE INT
);
INSERT INTO SAILORS VALUES
('354521','Maya',4.9,35),
('355333','Ram',4.1,33),
('76743','Sita',4.5,39);
CREATE TABLE BOATS
(BID int primary key, BNAME varchar(20), COLOUR varchar(10));
INSERT INTO BOATS VALUES ('101','GLORY','RED'),
('106','TITAN','BLACK'),
 ('103','WANDER','BLUE');
CREATE TABLE RESERVES( SID int, BID  int, DAY date);
INSERT INTO RESERVES VALUES
 ('45644','356','2021/02/20'),
 ('44735','354','2021/02/21'),
 ('46765','375','2021/02/10'),
 ('43843','325','2021/02/11');
 SELECT A.SID, A.SNAME, A.RATING, A.AGE
FROM SAILORS AS A
INNER JOIN RESERVES AS C ON A.SID = C.SID AND C.BID = 101;
SELECT B.BNAME
FROM RESERVES AS C
INNER JOIN SAILORS AS A ON A.SID =C.SID AND A.SNAME='BOB'
INNER JOIN BOATS AS B ON B.BID=C.BID;
SELECT A.SNAME
FROM SAILORS AS A
INNER JOIN RESERVES AS C ON A.SID = C.SID
INNER JOIN BOATS AS B ON B.BID = C.BID AND B.COLOUR = 'RED'
ORDER BY A.AGE;
SELECT DISTINCT A.SNAME
FROM SAILORS AS A
INNER JOIN RESERVES AS C ON A.SID IN (C.SID);
SELECT A.SID , A.SNAME
FROM RESERVES AS C
INNER JOIN RESERVES AS D ON C.SID <> D.SID AND C.DAY=D.DAY
INNER JOIN SAILORS AS A ON D.SID=A.SID;