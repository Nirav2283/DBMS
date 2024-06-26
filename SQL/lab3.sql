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

 --3. Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table) UPDATE DEPOSIT SET ACTNO = 111 ,AMOUNT = 5000 WHERE CNAME = 'SANDIP' SELECT * FROM DEPOSIT --4. Update amount of KRANTI to 7000. (Use Deposit Table) UPDATE DEPOSIT SET AMOUNT = 7000 WHERE CNAME = 'KRANTI' SELECT * FROM DEPOSIT --5 Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table) UPDATE BRANCH SET BNAME = 'ANDHERI WEST' WHERE BNAME = 'ANDHERI' SELECT * FROM BRANCH --6. Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table) UPDATE DEPOSIT SET BNAME = 'NEHRU PALACE' WHERE CNAME = 'MEHUL' SELECT * FROM DEPOSIT --7. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit
Table)UPDATE DEPOSIT SET AMOUNT = 5000 WHERE ACTNO BETWEEN 103 AND 107--8. Update ADATE of ANIL to 1-4-95. (Use Deposit Table)UPDATE DEPOSIT SET ADATE = '1995-4-1' WHERE CNAME = 'ANIL'--9. Update the amount of MINU to 10000. (Use Deposit Table)UPDATE DEPOSIT  SET AMOUNT = 10000 WHERE CNAME = 'MINU'--10. Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)UPDATE DEPOSIT SET AMOUNT = 5000 , ADATE = 1996-4-1 WHERE CNAME = 'PRAMOD'--PART B--1  Give 10% Increment in Loan Amount. (Use Borrow Table)UPDATE BORROW SET AMOUNT = AMOUNT + (AMOUNT / 10)SELECT * FROM BORROW--2.  Customer deposits additional 20% amount to their account, update the same. (Use Deposit Table)UPDATE DEPOSIT SET AMOUNT = AMOUNT + (AMOUNT / 5)--PART C--1. Update amount of loan no 321 to NULL. (Use Borrow Table)UPDATE BORROW SET LOANNO = NULL WHERE LOANNO = 321--2 Update branch name of KRANTI to NULL (Use Borrow Table)UPDATE BORROW SET BNAME = NULL WHERE CNAME = 'KRANTI'SELECT * FROM BORROW--3. Display the name of borrowers whose amount is NULL. (Use Borrow Table)SELECT CNAME FROM BORROW WHERE AMOUNT IS NULL--4 Display the Borrowers whose having branch. (Use Borrow Table)SELECT CNAME FROM BORROW WHERE AMOUNT IS NOT NULL--5. Update the Loan Amount to 5000, Branch to VRCE & Customer Name to Darshan whose loan no is 481.
--(Use Borrow Table)

UPDATE BORROW SET AMOUNT = 5000 , BNAME = 'VRCE' , CNAME = 'DARSHAN' WHERE LOANNO = 481

--6.Update the Deposit table and set the date to 01-01-2021 for all the depositor whose amount is less 
--than 2000

UPDATE DEPOSIT SET ADATE = '2021-01-01' WHERE AMOUNT < 2000
SELECT * FROM DEPOSIT

--7.Update the Deposit table and set the date to NULL & Branch name to ‘ANDHERI whose Account No is 
--110.

UPDATE DEPOSIT SET ADATE = NULL , BNAME = 'ANDHERI' WHERE ACTNO = 110


