CREATE DATABASE college;
USE college;

CREATE TABLE course (
    courseID INT PRIMARY KEY,
    course_name VARCHAR(50),
    credits INT,
    departmentID INT
);

INSERT INTO course VALUES
(101, 'DBMS', 4, 10),
(102, 'Operating System', 4, 20),
(103, 'Computer Networks', 3, 30);

DESCRIBE course;

SELECT * FROM course;

