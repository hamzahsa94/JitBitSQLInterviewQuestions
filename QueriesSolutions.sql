#Queries as solutions for https://www.jitbit.com/news/181-jitbits-sql-interview-questions/
#Queries have been tested on MySQL 8.0.11 and output was as displayed

#1. List employees (names) who have a bigger salary than their boss.
SELECT EMP.NAME 
FROM EMPLOYEES EMP JOIN EMPLOYEES BOSS ON EMP.BOSSID=BOSS.EMPLOYEEID
WHERE EMP.SALARY > BOSS.SALARY;

+------------------+
| NAME             |
+------------------+
| William Corresps |
+------------------+


#2. List employees who have the biggest salary in their departments.
SELECT NAME, EMP.DEPARTMENTID
FROM EMPLOYEES AS EMP
JOIN (SELECT DEPARTMENTID, MAX(SALARY) AS SALARY
			FROM EMPLOYEES
			GROUP BY DEPARTMENTID) AS MS
ON EMP.DEPARTMENTID=MS.DEPARTMENTID AND EMP.SALARY=MS.SALARY;

+------------------+--------------+
| NAME             | DEPARTMENTID |
+------------------+--------------+
| Jennifer Whalen  |            1 |
| William Corresps |            2 |
| Den Raphaely     |            3 |
| Susan Mavris     |            4 |
| Adam Fripp       |            5 |
| Alexander Hunold |            6 |
| Hermann Baer     |            7 |
| John Russell     |            8 |
| Steven King      |            9 |
| Nancy Greenberg  |           10 |
| Shelley Higgins  |           11 |
| Charles Franklin |           12 |
+------------------+--------------+

#3. List departments that have less than 3 people in it.
SELECT DEP.NAME
FROM DEPARTMENTS DEP JOIN (SELECT DEPARTMENTID, COUNT(*) AS COUNT
						FROM EMPLOYEES
                        GROUP BY DEPARTMENTID) AS EMPS
ON DEP.DEPARTMENTID=EMPS.DEPARTMENTID
WHERE EMPS.COUNT <3;

+-----------------+
| NAME            |
+-----------------+
| Administration  |
| Human Resources |
| PR              |
| Accounting      |
| Janitorial      |
+-----------------+

#4. List all departments along with the number of people there (tricky - people often do an "inner join" leaving out empty departments)
SELECT dep.name, ifnull(emps.count, 0)  as count
FROM departments dep LEFT JOIN (SELECT DEPARTMENTID, COUNT(*) AS COUNT
								FROM EMPLOYEES
								GROUP BY DEPARTMENTID) AS EMPS
ON dep.departmentid=emps.departmentid;

+-----------------+-------+
| name            | count |
+-----------------+-------+
| Administration  |     1 |
| Marketing       |     3 |
| Purchasing      |     6 |
| Human Resources |     1 |
| Shipping        |     7 |
| IT              |     5 |
| PR              |     1 |
| Sales           |     6 |
| Executive       |     3 |
| Finance         |     6 |
| Accounting      |     2 |
| Janitorial      |     2 |
| Doctoral        |     0 |
+-----------------+-------+

#5. List employees that dont have a boss in the same department.
SELECT EMP.NAME
FROM EMPLOYEES EMP JOIN EMPLOYEES BOSS
ON EMP.BOSSID=BOSS.EMPLOYEEID
WHERE BOSS.DEPARTMENTID <> EMP.DEPARTMENTID;

+-------------------+
| NAME              |
+-------------------+
| Alexander Hunold  |
| Nancy Greenberg   |
| Den Raphaely      |
| Matthew Weiss     |
| Adam Fripp        |
| Payam Kaufling    |
| Shanta Vollman    |
| John Russell      |
| Karen Partners    |
| Jonathon Taylor   |
| Jack Livingston   |
| Kimberely Grant   |
| Charles Johnson   |
| Jennifer Whalen   |
| Michael Hartstein |
| Susan Mavris      |
| Hermann Baer      |
| Shelley Higgins   |
| Charles Franklin  |
+-------------------+

#6. List all departments along with the salary there.
SELECT DEP.NAME, IFNULL(SUM(EMP.SALARY),0) AS TOTALSALARY
FROM EMPLOYEES EMP right JOIN DEPARTMENTS DEP ON EMP.DEPARTMENTID=DEP.DEPARTMENTID
GROUP BY DEP.NAME;

+-----------------+-------------+
| NAME            | TOTALSALARY |
+-----------------+-------------+
| Administration  |        4400 |
| Marketing       |       33000 |
| Purchasing      |       24900 |
| Human Resources |        6500 |
| Shipping        |       41200 |
| IT              |       28800 |
| PR              |       10000 |
| Sales           |       57700 |
| Executive       |       58000 |
| Finance         |       51600 |
| Accounting      |       20300 |
| Janitorial      |       11000 |
| Doctoral        |           0 |
+-----------------+-------------+
