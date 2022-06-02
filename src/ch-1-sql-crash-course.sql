select * from all_tables;

--SQL databases are often called relational databases because they are made up of relations, which are more commonly referred to as tables.

--NoSQL databases are often referred to as non-relational databases,
--and they come in all shapes and sizes. Their main characteristics
--are that they have dynamic schemas (meaning the
--schema doesn’t have to be locked in up front) and they allow
--for horizontal scaling (meaning the data can spread across multiple
--machines).

--You may have heard terms like PostgreSQL or SQLite, and be
--wondering how they are different from SQL. They are two
--types of Database Management Systems (DBMS), which is software
--used to work with a database.


--MySQL, PostgreSQL, and SQLite
SELECT * FROM birthdays LIMIT 10;

--Microsoft SQL Server
SELECT TOP 10 * FROM birthdays;

--Oracle Database
SELECT * FROM birthdays WHERE ROWNUM <= 10;

/*
RDBMS                   Owner           Highlights
Microsoft SQL Server    Microsoft       - Popular proprietary RDBMS
                                        - Often used alongside other Microsoft products including Microsoft Azure and the .NET framework
                                        - Common on the Windows platform
                                        - Also referred to as MSSQL or SQL Server
                                        
MySQL                   Open Source     - Popular open source RDBMS
                                        - Often used alongside web development
                                        - languages like HTML/CSS/Javascript
                                        - Acquired by Oracle, though still open source
                                        
Oracle Database         Oracle          - Popular proprietary RDBMS
                                        - Often used at large corporations given the amount of features, tools, and support available
                                        - Also referred to simply as Oracle

PostgreSQL              Open Source     - Quickly growing in popularity
                                        - Often used alongside open source technologies like Docker and Kubernetes
                                        - Efficient and great for large datasets

SQLite                  Open Source     - World’s most used database engine
                                        - Common on iOS and Android platforms
                                        - Lightweight and great for a small database
                                        
*/                                        

--  A common acronym in the SQL world is CRUD, which stands for “Create, Read, Update, and Delete.”


/*

Memorize This Order

All SQL queries will contain some combination of these clauses. If you remember nothing else, remember this order!

SELECT      -- columns to display
FROM        -- table(s) to pull from
WHERE       -- filter rows
GROUP BY    -- split rows into groups
HAVING      -- filter grouped rows
ORDER BY    -- columns to sort

*/


/*
Order of Execution:

The order that SQL code is executed is not something typically taught in a beginner SQL course, but I’m including it here because it’s a common question 
I received when I taught SQL to students coming from a Python coding background. A sensible assumption would be that the order that you write
the clauses is the same order that the computer executes the clauses, but that is not the case. After a query is run, this is the
order that the computer works through the data:

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY

Compared to the order that you actually write the clauses, you’ll notice that the SELECT has been moved to the fifth position. The high-level takeaway 
here is that SQL works in this order:
1. Gathers all of the data with the FROM
2. Filters rows of data with the WHERE
3. Groups rows together with the GROUP BY
4. Filters grouped rows with the HAVING
5. Specifies columns to display with the SELECT
6. Rearranges the results with the ORDER BY



A Data Model

I’d like to spend the final section of the crash course going over a simple data model and point out some terms that you’ll often
hear in fun SQL conversations around the office. A data model is a visualization that summarizes how all of the tables in a database are related to one 
another, along with some details about each table. Figure 1-3 is a simple data model of a student grades database.

*/


CREATE TABLE test (
    id  INT,
    num INT
);
COMMIT;

INSERT INTO test VALUES (    1,    100);
INSERT INTO test VALUES (    2,    200);
INSERT INTO test VALUES (    3,    300);
commit;

select * from test;

SELECT * FROM test
WHERE
        1 = 1
    AND num > 200;
    

SELECT * FROM test
WHERE
        1 = 1
    AND rownum <=1;    
    
SELECT (CAST(123 AS DECIMAL(5,2))) as "decimal"  from dual;