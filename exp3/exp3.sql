use lab_1;
CREATE TABLE employee (
				empid CHAR(4) ,
				name CHAR(10) not null, 
				designation CHAR(30) not null,
				dob date not null,
				salary numeric
                );

create table employdetails(
	sex char(20),
	dno int,
	primary key (dno),
	empid char(4) references employee(empid)
);

 insert into employee values 
("e1","Maya","Manager","1993-09-9","80000"),
("e2","Arun","Accountant","1990-07-15","30000");
insert into employdetails values 
("Female","2","e2"),
("Male","3","e4");
select * from employee where empid in (select empid from employdetails);

select * from employee where empid not in(select empid from employdetails);