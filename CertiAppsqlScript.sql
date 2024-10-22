CREATE DATABASE ELITE_CODERS;

USE ELITE_CODERS;
CREATE TABLE COURSES(
	COURSE_ID INT PRIMARY KEY AUTO_INCREMENT,
    COURSE_NAME VARCHAR(255),
    ISSUER_ID INT
);
ALTER TABLE COURSES AUTO_INCREMENT = 1000;


CREATE TABLE CERTIFICATES(
	CERTIFICATE_ID INT PRIMARY KEY AUTO_INCREMENT,
    COURSE_ID INT,
    ISSUER_ID INT,
    BLOCKCHAIN_ID INT,
	STUD_NAME VARCHAR(255),
    FOREIGN KEY (COURSE_ID) REFERENCES COURSES (COURSE_ID)
);
ALTER TABLE CERTIFICATES AUTO_INCREMENT = 1000;
SELECT * FROM COURSES;
SELECT * FROM CERTIFICATES;

SELECT COURSE_ID 
FROM COURSES
WHERE COURSE_NAME ='PYTHON EXPERT';
