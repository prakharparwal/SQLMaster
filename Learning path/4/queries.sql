/*PREREQUISITES QUERIES*/
ALTER TABLE EMPLOYEE ADD EMAIL NVARCHAR(200)

UPDATE EMPLOYEE SET EMAIL = 'prakhar.parwal@gmail.com' WHERE ID = 1 
UPDATE EMPLOYEE SET EMAIL = 'test.parwal@gmail.com' WHERE ID = 2 
UPDATE EMPLOYEE SET EMAIL = 'john.parwal@gmail.com' WHERE ID = 3 
UPDATE EMPLOYEE SET EMAIL = 'ajay.parwal@gmail.com' WHERE ID = 4 


/* 4.1 */
ALTER TABLE EMPLOYEE DROP CONSTRAINT PK_EMPLOYEE
ALTER TABLE EMPLOYEE ALTER COLUMN ID INT NOT NULL 
ALTER TABLE EMPLOYEE ALTER COLUMN EMAIL NVARCHAR(100) NOT NULL

/* 4.2 */
ALTER TABLE EMPLOYEE ADD CONSTRAINT PK_EMPLOYEE PRIMARY KEY(ID, EMAIL)

/* 4.3 */
ALTER TABLE EMPLOYEE ADD DATE_OF_BIRTH DATE

UPDATE EMPLOYEE SET DATE_OF_BIRTH = '1992-09-19' WHERE ID = 1 
UPDATE EMPLOYEE SET DATE_OF_BIRTH = '2000-09-09' WHERE ID = 2 
UPDATE EMPLOYEE SET DATE_OF_BIRTH = '1990-12-12' WHERE ID = 3 
UPDATE EMPLOYEE SET DATE_OF_BIRTH = '2010-10-30' WHERE ID = 4 

SELECT * FROM EMPLOYEE WHERE DATE_OF_BIRTH < '2000-01-01'

/* 4.4 */
SELECT * FROM EMPLOYEE WHERE ID IN (2, 3, 4, 5, 6)

SELECT * FROM EMPLOYEE WHERE DATE_OF_BIRTH BETWEEN '1900-01-01' AND '2000-01-01'

/* 4.5 */
SELECT * FROM EMPLOYEE ORDER BY DATE_OF_BIRTH DESC