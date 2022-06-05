--create a table COMPANY
CREATE TABLE company (
    cname CHAR(10),
    city  CHAR(10)
);
COMMIT;
SELECT * FROM company;

--Insert records in COMPANY
DELETE FROM COMPANY;
INSERT INTO COMPANY VALUES ( 'ACC', 'Chennai');
INSERT INTO COMPANY VALUES ( 'TATA','Mumbai');
INSERT INTO COMPANY VALUES ( 'ACC', 'Nagpur');
INSERT INTO COMPANY VALUES ( 'CMC', 'Mumbai');
INSERT INTO COMPANY VALUES ( 'CMC', 'Chennai');
INSERT INTO COMPANY VALUES ( 'TATA','Delhi');
COMMIT;
SELECT * FROM COMPANY;

--Alter table company
ALTER TABLE COMPANY MODIFY CNAME CHAR(20);
COMMIT;

--create a table EMPLOYEE
CREATE TABLE EMPLOYEE (
    ename VARCHAR2(10),
    city  VARCHAR2(10)
);
COMMIT;
SELECT * FROM employee;

--Insert records in COMPANY
DELETE FROM EMPLOYEE;
INSERT INTO EMPLOYEE VALUES ( 'Anil',       'Nagpur');
INSERT INTO EMPLOYEE VALUES ( 'Shankar',    'Mumbai');
INSERT INTO EMPLOYEE VALUES ( 'Jaya',       'Chennai');
INSERT INTO EMPLOYEE VALUES ( 'Sunil',      'Mumbai');
INSERT INTO EMPLOYEE VALUES ( 'Vijay',      'Delhi');
INSERT INTO EMPLOYEE VALUES ( 'Prakash',    'Kolkata');
INSERT INTO EMPLOYEE VALUES ( 'Ajay',       'Chennai');
COMMIT;
SELECT * FROM EMPLOYEE;

--update statement
UPDATE company SET city = 'MUMBAI' WHERE cname = 'ACC';
COMMIT;
SELECT * FROM COMPANY;

--Delete statement

--DELETE FROM company;
--DELETE FROM company
--WHERE
--        1 = 1
--    AND ROWID NOT IN ( SELECT MAX(ROWID) FROM company );
--COMMIT;    


SELECT  cname FROM company;

--CREATE TABLE emp_company
CREATE TABLE emp_company (
    ename  VARCHAR2(10),
    cname  VARCHAR2(10),
    salary NUMBER(7, 2),
    jdate  DATE
);
COMMIT;


--Insert records in EMP_COMPANY
DELETE FROM EMP_COMPANY;
INSERT INTO EMP_COMPANY VALUES ( 'Anil','ACC', 1500.00, '1-MAY-89');
INSERT INTO EMP_COMPANY VALUES ( 'Shankar','ACC', 2000.00, '10-JUL-90');
INSERT INTO EMP_COMPANY VALUES ( 'Jaya','CMC', 1800.00, '7-JUN-91');
INSERT INTO EMP_COMPANY VALUES ( 'Sunil','CMC', 1700.00, '1-JAN-88');
INSERT INTO EMP_COMPANY VALUES ( 'Vijay','TATA', 5000.00, '1-JAN-88');
INSERT INTO EMP_COMPANY VALUES ( 'Prakash','TATA', 3000.00, '30-APR-89');
INSERT INTO EMP_COMPANY VALUES ( 'Ajay','ACC', 8000.00, '30-APR-95');
INSERT INTO EMP_COMPANY VALUES ( 'Amol','ACC', 1000.00, '17-MAR-95');

COMMIT;
SELECT * FROM EMP_COMPANY;
desc EMP_COMPANY;

SELECT
    ENAME,
    CNAME,
    SALARY,
    JDATE
FROM
    EMP_COMPANY;


--CREATE TABLE MANAGER
CREATE TABLE MANAGER (
    ename VARCHAR2(10),
    mname VARCHAR2(10)
);
COMMIT;

--Insert records in MANAGER
DELETE FROM MANAGER;
INSERT INTO MANAGER VALUES ( 'ANIL', 'AJAY');
INSERT INTO MANAGER VALUES ( 'SHANKAR','VIJAY');
INSERT INTO MANAGER VALUES ( 'SUNIL', 'JAYA');
INSERT INTO MANAGER VALUES ( 'PRAKASH','SHANKAR');
INSERT INTO MANAGER(ename) VALUES ( 'JAYA');
INSERT INTO MANAGER(ename) VALUES ( 'VIJAY');
INSERT INTO MANAGER(ename) VALUES ( 'AJAY');
COMMIT;

SELECT * FROM MANAGER;
SELECT * FROM MANAGER order by ename;
SELECT * FROM MANAGER where mname is null;

--CREATE TABLE EMP_SHIFT
CREATE TABLE EMP_SHIFT (
    ename VARCHAR2(10),
    shift VARCHAR2(1)
);
COMMIT;

DELETE FROM EMP_SHIFT;
INSERT INTO EMP_SHIFT VALUES ( 'ANIL', 'A');
INSERT INTO EMP_SHIFT VALUES ( 'VIJAY','B');
INSERT INTO EMP_SHIFT VALUES ( 'SUNIL', 'B');
INSERT INTO EMP_SHIFT VALUES ( 'PRAKASH','C');
COMMIT;
SELECT * FROM EMP_SHIFT;

--Using column alias 

SELECT
    ename employee_name,
    cname company_name,
    salary,
    jdate joining_date
FROM
    emp_company;


--using dual table    
SELECT
    sysdate,
    last_day(sysdate)           "Last",
    last_day(sysdate) - sysdate "Days Left"
FROM
    dual;    
    
    
SELECT * FROM emp_company;
DESC EMP_COMPANY;
INSERT INTO emp_company (ename, cname, jdate) VALUES ('Viswajit', 'Wells', '12-FEB-19');
COMMIT;

delete from emp_company where salary is null;
commit;

--CREATE TABLE ztemp5 

CREATE TABLE ztemp5 (
    a CHAR(10),
    b VARCHAR2(10)
);
COMMIT;
DESC ztemp5;


INSERT INTO ztemp5 VALUES (
    'anil',
    'anil'
);
commit;
select * from ztemp5;
delete from ztemp5;

select * from ztemp5 where a='anil';
select * from ztemp5 where a='anil  ';
select * from ztemp5 where b='anil  ';


CREATE TABLE ZTEMP6 (
    a INTERVAL YEAR(2) TO MONTH,
    b INTERVAL DAY(2) TO SECOND(6)
);
COMMIT;
DESC ZTEMP6;

--drop TABLE ztemp6;
--commit;