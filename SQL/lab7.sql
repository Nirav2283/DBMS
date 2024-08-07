SELECT * FROM EMP

--PART A

--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS MAX_SALARY , MIN(SALARY) AS MIN_SALARY FROM EMP

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, 
--respectively.
SELECT SUM(SALARY) AS TOTAL_SAL , AVG(SALARY) AS Average_Sal FROM EMP

--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(EName) AS EMP_COUNT FROM  EMP

--4. Find highest salary from Rajkot city.
SELECT MAX(SALARY) AS MAX_SAL FROM EMP WHERE CITY='RAJKOT'

--5. Give maximum salary from IT department.
SELECT MAX(SALARY) AS MAX_SAL FROM EMP WHERE DEPARTMENT = 'IT'

--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(EName) AS EMP_COUNT FROM EMP WHERE JOININGDATE > '1991-2-8'

--7. Display average salary of Admin department.
SELECT AVG(SALARY) AS AVG_SALARY FROM EMP  WHERE DEPARTMENT='ADMIN'

--8. Display total salary of HR department.
SELECT SUM(SALARY) AS TOTAL FROM EMP WHERE DEPARTMENT = 'HR'

--9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) AS CITY_COUNT FROM EMP

--10. Count unique departments.
SELECT COUNT(DISTINCT DEPARTMENT) AS DEP_COUNT FROM EMP

--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) AS MIN_SALARY FROM EMP WHERE CITY = 'AHEMDABAD'

--12. Find city wise highest salary.
SELECT CITY , MAX(SALARY) AS MAX_SALARY FROM EMP GROUP BY CITY

--13. Find department wise lowest salary.
SELECT DEPARTMENT , MIN(SALARY) AS MIN_SALARY FROM EMP GROUP BY DEPARTMENT

--14. Display city with the total number of employees belonging to each city.
SELECT CITY , COUNT(EName) AS EMP_COUNT FROM EMP GROUP BY CITY

--15. Give total salary of each department of EMP table.
SELECT DEPARTMENT , SUM(SALARY) AS TOTAL_SAL FROM EMP GROUP BY DEPARTMENT

--16. Give average salary of each department of EMP table without displaying the respective department 
--name
SELECT AVG(SALARY) AS AVG_SALARY FROM EMP GROUP BY DEPARTMENT


--PART B

--1. Count the number of employees living in Rajkot.
SELECT COUNT(ENAME) AS COUNT_EMP FROM EMP WHERE CITY = 'RAJKOT'

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY) - MIN(SALARY) AS DIFFERNCE FROM EMP

--3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(ENAME) AS NUM_EMP FROM EMP WHERE JOININGDATE < '1991-1-1'


--PART C

--1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(ENAME) AS COUNT_EMP FROM EMP WHERE CITY = 'RAJKOT' OR CITY='BARODA'

--2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(ENAME) AS COUNT_EMP FROM EMP WHERE JOININGDATE < 1991-1-1 AND DEPARTMENT = 'IT'

--3. Find the Joining Date wise Total Salaries.
SELECT JOININGDATE , SUM(SALARY) AS SUM_SALARY FROM EMP GROUP BY JOININGDATE

--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT city, department, MAX(salary) as max_salary
FROM emp
WHERE city LIKE 'R%'
GROUP BY city, department


--EXTRA QUESTIONS

--1.Calculate the average salary of employees hired after 1st January, 1991. Label the column as Average_Salary_After_1991.
SELECT
AVG(SALARY)
AS AVERAGE_SALARY 
FROM EMP
WHERE JOININGDATE > '1991-1-1'

       
--2.Find the total number of employees in each department.
SELECT DEPARTMENT,
COUNT(EName)
AS NUMBER
FROM EMP
GROUP BY DEPARTMENT

--3.Display the total salary of employees in each city in descending order.
SELECT CITY,
SUM(SALARY)
AS TOTAL
FROM EMP
GROUP BY CITY
ORDER BY TOTAL DESC

--4.Find the total number of employees in each city.
SELECT CITY,
COUNT(EName)
AS LOL
FROM EMP
GROUP BY CITY
--5.Find the highest salary among all employees.
SELECT
MAX(SALARY)
AS LOL
FROM EMP

--6.Retrieve the maximum salary from the IT department.
SELECT DEPARTMENT,
MAX(SALARY)
AS LOP
FROM EMP
GROUP BY DEPARTMENT
HAVING DEPARTMENT = 'IT'

--7.Count the total number of distinct cities where employees reside.
SELECT
COUNT(DISTINCT CITY)
AS LOP
FROM EMP

--8.Calculate the total salary of each department.
SELECT DEPARTMENT,
SUM(SALARY)
AS LOP
FROM EMP
GROUP BY DEPARTMENT

--9.Find the minimum salary of an employee residing in Ahmedabad.
SELECT CITY,
MIN(SALARY)
AS LOP
FROM EMP
GROUP BY CITY
HAVING CITY = 'AHEMDABAD'
   
--10.List the departments with total salaries exceeding 50000 and located in Rajkot.
SELECT DEPARTMENT,
SUM(SALARY)
AS LOP
FROM EMP
WHERE CITY = 'RAJKOT'
GROUP BY DEPARTMENT
HAVING SUM(SALARY) > 50000

--11.List the departments with total salaries exceeding 35000 and sort the list by total salary.
SELECT DEPARTMENT,
SUM(SALARY)
AS LOP
FROM EMP
GROUP BY DEPARTMENT
HAVING SUM(SALARY)>35000
ORDER BY LOP
    
--12.List departments with more than two employees.
SELECT DEPARTMENT,
COUNT(EName)
AS LOP
FROM EMP
GROUP BY DEPARTMENT
HAVING COUNT(EName) > 2

--13.Show departments where the average salary is above 25000.
SELECT DEPARTMENT,
AVG(SALARY)
AS LOP
FROM EMP
GROUP BY DEPARTMENT
HAVING AVG(SALARY) > 25000
    
--14.Retrieve cities with employees hired before 1st January 1991.
SELECT CITY
FROM EMP
WHERE JOININGDATE < '1991-1-1'

--15.Find departments with a total salary between 50000 and 100000
SELECT DEPARTMENT,
SUM(SALARY)
AS LOP
FROM EMP
GROUP BY DEPARTMENT
HAVING SUM(SALARY) BETWEEN 50000 AND 100000
