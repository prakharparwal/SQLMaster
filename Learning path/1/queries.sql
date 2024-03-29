/*1*/
CREATE TABLE EMPLOYEE 
(
	ID INT NOT NULL,
	FIRST_NAME NVARCHAR(100),
	CONSTRAINT PK_EMPLOYEE PRIMARY KEY (ID)
);


/* 2.a */
ALTER TABLE EMPLOYEE ADD LAST_NAME NVARCHAR(100)

/* 2.b.1 */
ALTER TABLE EMPLOYEE ADD PHONE_NUMBER INT
ALTER TABLE EMPLOYEE ALTER COLUMN PHONE_NUMBER NVARCHAR(100)

/* 2.b.2 */
sp_rename 'EMPLOYEE.PHONE_NUMBER', 'CONTACT_NUMBER', 'COLUMN'; 

/* 2.c */
ALTER TABLE EMPLOYEE ADD GENDER INT 
ALTER TABLE EMPLOYEE DROP COLUMN GENDER 

/*3.1*/
DROP TABLE EMPLOYEE

/* 4 */
INSERT INTO EMPLOYEE VALUES(1, 'PRAKHAR', 'PARWAL', '00-00000000')

/* 5.A */
ALTER TABLE EMPLOYEE ADD GENDER NVARCHAR(20)

/* 5.a.1 */
ALTER TABLE EMPLOYEE DROP COLUMN GENDER
ALTER TABLE EMPLOYEE ADD GENDER NVARCHAR(30) NOT NULL DEFAULT 'UNSPECIFIED'

/*5.B*/
sp_rename 'EMPLOYEE.CONTACT_NUMBER', 'PHONE_NUMBER', 'COLUMN' 

/* 5.C */
ALTER TABLE EMPLOYEE DROP CONSTRAINT [DF__EMPLOYEE__GENDER__1CF15040] /* -->> [CONSTRAINT_NAME] */
ALTER TABLE EMPLOYEE DROP COLUMN GENDER

