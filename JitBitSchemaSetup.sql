-- This has been tested in MySQL 8.0.11
-- Schema based on description in https://www.jitbit.com/news/181-jitbits-sql-interview-questions/
-- Most of the data was sourced from http://www.sqltutorial.org/sql-sample-database/ with some modification so as to fit current schema.


CREATE DATABASE JITBIT;
USE JITBIT;

DROP TABLE DEPARTMENTS;
DROP TABLE EMPLOYEES;

CREATE TABLE DEPARTMENTS (
	DEPARTMENTID INT(5),
	NAME VARCHAR(15),
	PRIMARY KEY (DEPARTMENTID)
	);

CREATE TABLE EMPLOYEES (
	EMPLOYEEID INT(10),
	DEPARTMENTID INT(5),
	BOSSID INT(10),
	NAME VARCHAR(25),
	SALARY INT(9),
	PRIMARY KEY (EMPLOYEEID),
	FOREIGN KEY (DEPARTMENTID) REFERENCES DEPARTMENTS (DEPARTMENTID)
	);

INSERT INTO departments VALUES (1,'Administration');
INSERT INTO departments VALUES (2,'Marketing');
INSERT INTO departments VALUES (3,'Purchasing');
INSERT INTO departments VALUES (4,'Human Resources');
INSERT INTO departments VALUES (5,'Shipping');
INSERT INTO departments VALUES (6,'IT');
INSERT INTO departments VALUES (7,'PR');
INSERT INTO departments VALUES (8,'Sales');
INSERT INTO departments VALUES (9,'Executive');
INSERT INTO departments VALUES (10,'Finance');
INSERT INTO departments VALUES (11,'Accounting');

INSERT INTO DEPARTMENTS VALUES (12,'Janitorial');
INSERT INTO DEPARTMENTS VALUES (13,'Doctoral');

INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (100,'Steven King',24000.00,NULL,9);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (101,'Neena Kochhar',17000.00,100,9);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (102,'Lex De Haan',17000.00,100,9);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (103,'Alexander Hunold',9000.00,102,6);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (104,'Bruce Ernst',6000.00,103,6);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (105,'David Austin',4800.00,103,6);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (106,'Valli Pataballa',4800.00,103,6);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (107,'Diana Lorentz',4200.00,103,6);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (108,'Nancy Greenberg',12000.00,101,10);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (109,'Daniel Faviet',9000.00,108,10);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (110,'John Chen',8200.00,108,10);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (111,'Ismael Sciarra',7700.00,108,10);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (112,'Jose Manuel Urman',7800.00,108,10);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (113,'Luis Popp',6900.00,108,10);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (114,'Den Raphaely',11000.00,100,3);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (115,'Alexander Khoo',3100.00,114,3);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (116,'Shelli Baida',2900.00,114,3);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (117,'Sigal Tobias',2800.00,114,3);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (118,'Guy Himuro',2600.00,114,3);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (119,'Karen Colmenares',2500.00,114,3);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (120,'Matthew Weiss',8000.00,100,5);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (121,'Adam Fripp',8200.00,100,5);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (122,'Payam Kaufling',7900.00,100,5);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (123,'Shanta Vollman',6500.00,100,5);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (126,'Irene Mikkilineni',2700.00,120,5);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (145,'John Russell',14000.00,100,8);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (146,'Karen Partners',13500.00,100,8);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (176,'Jonathon Taylor',8600.00,100,8);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (177,'Jack Livingston',8400.00,100,8);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (178,'Kimberely Grant',7000.00,100,8);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (179,'Charles Johnson',6200.00,100,8);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (192,'Sarah Bell',4000.00,123,5);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (193,'Britney Everett',3900.00,123,5);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (200,'Jennifer Whalen',4400.00,101,1);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (201,'Michael Hartstein',13000.00,100,2);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (202,'Pat Fay',6000.00,201,2);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (203,'Susan Mavris',6500.00,101,4);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (204,'Hermann Baer',10000.00,101,7);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (205,'Shelley Higgins',12000.00,101,11);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (206,'William Gietz',8300.00,205,11);

INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (207,'William Corresps',14000.00,201,2);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (210,'Charles Franklin',10000.00,100,12);
INSERT INTO employees(employeeid,name,salary,bossid,departmentid) VALUES (211,'Richard Clark',1000.00,210,12);
