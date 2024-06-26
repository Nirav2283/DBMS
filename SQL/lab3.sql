-- LAB 3
--PART A

CREATE TABLE CRICKET(
  NAME VARCHAR(50),
  CITY VARCHAR(50),
  AGE INT ,
  );

 INSERT INTO CRICKET VALUES('Sachin Tendulkar' , 'Mumbai' , 30),
 ('Rahul Dravid' , 'Bombay' , 35),
 ('M.S. Dhoni' , 'jharkhand' , 31),
 ('Suresh Raina' , 'Gujarat' , 30);

--1. Create table Worldcup from cricket with all the columns and data

SELECT * INTO WORLDCUP FROM CRICKET
SELECT * FROM WORLDCUP

--2 Create table T20 from cricket with first two columns with no data.

SELECT NAME , CITY INTO T20 FROM CRICKET WHERE 1=0
SELECT * FROM T20

--3 Create table IPL From Cricket with No Data

SELECT * INTO IPL FROM CRICKET WHERE 1=0
SELECT * FROM IPL


--PART B

CREATE TABLE EMPLOYEE(
NAME VARCHAR(50),
CITY VARCHAR(50),
AGE INT ,
);

INSERT INTO EMPLOYEE VALUES('Jay Patel' , 'Rajkot' , 30),
('Rahul Dave' , 'Baroda' , 35),
('Jeet Patel' , 'Surat' , 31),
('Vijay Raval' , 'Rajkot' , 30);

--1. Create table Employee_detail from Employee with all the columns and data

SELECT * INTO EMPLOYEE_DETAIL FROM EMPLOYEE
SELECT * FROM EMPLOYEE_DETAIL

--2 Create table Employee_data from Employee with first two columns with no data

SELECT NAME , CITY INTO EMPLOYEE_DATA FROM EMPLOYEE WHERE 1=2
SELECT * FROM EMPLOYEE_DATA

--3 Create table Employee_info from Employee with no Data

SELECT * INTO EMPLOYEE_INFO FROM EMPLOYEE WHERE 1=0
SELECT * FROM EMPLOYEE_INFO


--UPDATE OPERATION

--1. Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)

 UPDATE DEPOSIT SET AMOUNT = 5000 WHERE AMOUNT = 3000
 SELECT * FROM DEPOSIT


 --2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table) 

 UPDATE BORROW SET BNAME = 'C.G.ROAD' WHERE CNAME = 'ANIL'
 SELECT * FROM BORROW

 --3. Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
Table)
--(Use Borrow Table)

UPDATE BORROW SET AMOUNT = 5000 , BNAME = 'VRCE' , CNAME = 'DARSHAN' WHERE LOANNO = 481

--6.Update the Deposit table and set the date to 01-01-2021 for all the depositor whose amount is less 
--than 2000

UPDATE DEPOSIT SET ADATE = '2021-01-01' WHERE AMOUNT < 2000
SELECT * FROM DEPOSIT

--7.Update the Deposit table and set the date to NULL & Branch name to �ANDHERI whose Account No is 
--110.

UPDATE DEPOSIT SET ADATE = NULL , BNAME = 'ANDHERI' WHERE ACTNO = 110

