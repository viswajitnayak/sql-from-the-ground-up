--create a table COMPANY
CREATE TABLE company (
    cname CHAR(10),
    city  CHAR(10)
);
COMMIT;
SELECT * FROM company;

--Insert records in COMPANY
INSERT INTO company VALUES ( 'DBS',                 'Nagpur');
INSERT INTO company VALUES ( 'Wells Fargo',         'Hyderabad');
INSERT INTO company VALUES ( 'Trans Union',         'Pune');
INSERT INTO company VALUES ( 'Citigroup',           'Pune');
INSERT INTO company VALUES ( 'Barclays',            'Chennai');
INSERT INTO company VALUES ( 'JP Morgan',           'Bangalore');
INSERT INTO company VALUES ( 'BNP Paribas',         'Mumbai');
INSERT INTO company VALUES ( 'Hoonartek',           'Navi Mumbai');
INSERT INTO company VALUES ( 'HSBC',                'Kolkata');
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
UPDATE company
SET
    city = 'MUMBAI'
WHERE
    cname = 'ACC';
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

--create table emp_company
CREATE TABLE emp_company (
    ename  VARCHAR2(10),
    cname  VARCHAR2(10),
    salary NUMBER(7, 2),
    jdate  DATE
);
COMMIT;
delete from emp_company;
INSERT INTO EMP_COMPANY VALUES ( 'Anil','ACC', 1500.00, '1-MAY-89');
INSERT INTO EMP_COMPANY VALUES ( 'Shankar','ACC', 2000.00, '10-JUL-90');
INSERT INTO EMP_COMPANY VALUES ( 'Jaya','CMC', 1800.00, '7-JUN-91');
INSERT INTO EMP_COMPANY VALUES ( 'Sunil','CMC', 1700.00, '1-JAN-88');
INSERT INTO EMP_COMPANY VALUES ( 'Vijay','TATA', 5000.00, '1-JAN-88');
INSERT INTO EMP_COMPANY VALUES ( 'Prakash','TATA', 3000.00, '30-APR-89');
INSERT INTO EMP_COMPANY VALUES ( 'Ajay','ACC', 8000.00, '30-APR-95');
INSERT INTO EMP_COMPANY VALUES ( 'Amol','ACC', 1000.00, '17-MAR-95');

COMMIT;
SELECT * FROM EMP_COMPANY ;

