CREATE TABLE City (
    CityID INT PRIMARY KEY,
    Name VARCHAR(100) UNIQUE,
    Pincode INT NOT NULL,
    Remarks VARCHAR(255)
);

CREATE TABLE Village (
    VID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    CityID INT,
    FOREIGN KEY (CityID) REFERENCES City(CityID)
);

INSERT INTO City (CityID, Name, Pincode, Remarks) VALUES
(1, 'Rajkot', 360005, 'Good'),
(2, 'Surat', 335009, 'Very Good'),
(3, 'Baroda', 390001, 'Awesome'),
(4, 'Jamnagar', 361003, 'Smart'),
(5, 'Junagadh', 362229, 'Historic'),
(6, 'Morvi', 363641, 'Ceramic');

INSERT INTO Village (VID, Name, CityID) VALUES
(101, 'Raiya', 1),
(102, 'Madhapar', 1),
(103, 'Dodka', 3),
(104, 'Falla', 4),
(105, 'Bhesan', 5),
(106, 'Dhoraji', 5);

select * from village
select * from city


--PART A

--1. Display all the villages of Rajkot city.
SELECT
VILLAGE.NAME 
FROM
CITY JOIN VILLAGE
ON CITY.CITYID = VILLAGE.CITYID
WHERE CITY.NAME = 'RAJKOT'

--2. Display city along with their villages & pin code.
SELECT
CITY.NAME , VILLAGE.NAME , CITY.PINCODE
FROM
CITY LEFT JOIN VILLAGE
ON CITY.CITYID = VILLAGE.CITYID

--3. Display the city having more than one village.
SELECT
CITY.NAME , COUNT(CITY.NAME)
FROM
CITY JOIN VILLAGE
ON CITY.CITYID = VILLAGE.CITYID
GROUP BY CITY.NAME
HAVING COUNT(VILLAGE.NAME)>1

--4. Display the city having no village.
SELECT
CITY.NAME , COUNT(VILLAGE.NAME)
FROM
CITY LEFT JOIN VILLAGE
ON CITY.CITYID = VILLAGE.CITYID
GROUP BY CITY.NAME
HAVING COUNT(VILLAGE.NAME) = 0


--5. Count the total number of villages in each city.
SELECT
CITY.NAME , COUNT(VILLAGE.VID)
FROM
CITY LEFT JOIN VILLAGE
ON CITY.CITYID = VILLAGE.CITYID
GROUP BY CITY.NAME


--6. Count the number of cities having more than one village
SELECT 
COUNT(CITY.NAME)
FROM
CITY JOIN VILLAGE
ON CITY.CITYID = VILLAGE.CITYID
GROUP BY CITY.NAME 
HAVING COUNT(VILLAGE.NAME) > 1



CREATE TABLE STU_MASTER(
RNO INT PRIMARY KEY,
NAME VARCHAR(50) DEFAULT 'General',
BRANCH VARCHAR(50),
SPI DECIMAL(3,2) CHECK(SPI <= 10),
BKLOG INT CHECK(BKLOG >= 0),
);

INSERT INTO STU_MASTER (RNO, NAME, BRANCH, SPI , BKLOG) VALUES
(101, 'Raju', 'CE', 8.80 , 0),
(102, 'Amit', 'CE', 2.20 ,3),
(103, 'Sanjay', 'ME', 1.50 , 6),
(104, 'Neha', 'EC', 7.65 , 0),
(105, 'Meera', 'EE', 5.52 , 2),
(106, 'Mahesh', '' , 4.50 ,3);

select * from stu_master

update stu_master set spi = 12 where name = 'raju'

update stu_master set bklog = -1 where name = 'neha'


--PART B
CREATE TABLE Dept_DETAILS (
    Did INT PRIMARY KEY,
    Dname VARCHAR(100) NOT NULL
);

CREATE TABLE City_DETAILS(
    Cid INT PRIMARY KEY,
    Cname VARCHAR(100) NOT NULL
);

CREATE TABLE Emp_DETAILS (
    Eid INT PRIMARY KEY,
    Ename VARCHAR(100) NOT NULL,
    Did INT,
    Cid INT,
    Salary DECIMAL(10, 2) CHECK (Salary > 0),
    Experience INT CHECK (Experience >= 0), 
    FOREIGN KEY (Did) REFERENCES Dept_DETAILS(Did),
    FOREIGN KEY (Cid) REFERENCES City_DETAILS(Cid)
);

INSERT INTO Dept_DETAILS(Did, Dname) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Marketing');

INSERT INTO City_DETAILS(Cid, Cname) VALUES
(1, 'New York'),
(2, 'Los Angeles'),
(3, 'Chicago');

INSERT INTO Emp_DETAILS(Eid, Ename, Did, Cid, Salary, Experience) VALUES
(1, 'John Doe', 1, 1, 50000.00, 5),
(2, 'Jane Smith', 2, 2, 75000.00, 8),
(3, 'Mike Johnson', 3, 3, 60000.00, 3);

SELECT * FROM CITY_DETAILS
SELECT * FROM EMP_DETAILS
SELECT * FROM DEPT_DETAILS


--PART C 

CREATE TABLE Country_INFO (
    Cid INT PRIMARY KEY,
    Cname VARCHAR(100) NOT NULL
);

CREATE TABLE State_INFO (
    Sid INT PRIMARY KEY,
    Sname VARCHAR(100) NOT NULL,
    Cid INT,
    FOREIGN KEY (Cid) REFERENCES Country_INFO(Cid)
);

CREATE TABLE District_INFO (
    Did INT PRIMARY KEY,
    Dname VARCHAR(100) NOT NULL,
    Sid INT,
    FOREIGN KEY (Sid) REFERENCES State_INFO(Sid)
);

CREATE TABLE Dept_INFO (
    Did INT PRIMARY KEY,
    Dname VARCHAR(100) NOT NULL
);

CREATE TABLE City_INFO (
    Cid INT PRIMARY KEY,
    Cname VARCHAR(100) NOT NULL,
    Did INT,
    FOREIGN KEY (Did) REFERENCES District_INFO(Did)
);

CREATE TABLE Emp_INFO (
    Eid INT PRIMARY KEY,
    Ename VARCHAR(100) NOT NULL,
    Did INT,
    Cid INT,
    Salary DECIMAL(10, 2) CHECK (Salary > 0), -- Salary must be positive
    Experience INT CHECK (Experience >= 0),  -- Experience cannot be negative
    FOREIGN KEY (Did) REFERENCES Dept_INFO(Did),
    FOREIGN KEY (Cid) REFERENCES City_INFO(Cid)
);

INSERT INTO Country_INFO (Cid, Cname) VALUES
(1, 'USA'),
(2, 'Canada'),
(3, 'UK'),
(4, 'Australia'),
(5, 'India');

INSERT INTO State_INFO (Sid, Sname, Cid) VALUES
(1, 'California', 1),
(2, 'Ontario', 2),
(3, 'London', 3),
(4, 'New South Wales', 4),
(5, 'Gujarat', 5);

INSERT INTO District_INFO (Did, Dname, Sid) VALUES
(1, 'Los Angeles', 1),
(2, 'Toronto', 2),
(3, 'Westminster', 3),
(4, 'Sydney', 4),
(5, 'Ahmedabad', 5);

INSERT INTO Dept_INFO (Did, Dname) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Marketing'),
(4, 'Sales'),
(5, 'Finance');

INSERT INTO City_INFO (Cid, Cname, Did) VALUES
(1, 'Los Angeles City', 1),
(2, 'Toronto City', 2),
(3, 'London City', 3),
(4, 'Sydney City', 4),
(5, 'Ahmedabad City', 5);

INSERT INTO Emp_INFO (Eid, Ename, Did, Cid, Salary, Experience) VALUES
(1, 'John Doe', 1, 1, 50000.00, 5),
(2, 'Jane Smith', 2, 2, 75000.00, 8),
(3, 'Mike Johnson', 3, 3, 60000.00, 3),
(4, 'Alice Brown', 4, 4, 45000.00, 2),
(5, 'Bob Green', 5, 5, 40000.00, 4);

--3.Display employeename, departmentname, Salary, Experience, City, District, State and country of all 
--employees

SELECT 
    e.Ename AS EmployeeName,
    d.Dname AS DepartmentName,
    e.Salary,
    e.Experience,
    ci.Cname AS City,
    dis.Dname AS District,
    s.Sname AS State,
    co.Cname AS Country
FROM Emp_info e
JOIN Dept_info d ON e.Did = d.Did
JOIN City_info ci ON e.Cid = ci.Cid
JOIN District_INFO dis ON ci.Did = dis.Did
JOIN State_info s ON dis.Sid = s.Sid
JOIN Country_info co ON s.Cid = co.Cid;