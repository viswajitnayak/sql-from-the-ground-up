CREATE TABLE company (
    cname CHAR(10),
    city  CHAR(10)
);
COMMIT;

SELECT * FROM company;


--Insert statement
INSERT INTO company VALUES ( 'ACC',    'NAGPUR');

--Delete statement
DELETE FROM company
WHERE
        1 = 1
    AND ROWID NOT IN ( SELECT MAX(ROWID) FROM company );