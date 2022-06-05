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




