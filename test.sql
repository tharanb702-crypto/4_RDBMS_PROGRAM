-- ============================================================
-- SQL AUTO GRADING TEST
-- COURSE TABLE
-- ============================================================

USE CollegeDB;


-- ============================================================
-- TEST 1: COURSE TABLE EXISTS
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Course table exists'
    ELSE 'FAIL - Course table does not exist'
END AS Result
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Course';


-- ============================================================
-- TEST 2: COURSE TABLE HAS EXACTLY 4 COLUMNS
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 4
    THEN 'PASS - Course table has exactly 4 columns'
    ELSE 'FAIL - Course table must have exactly 4 columns'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Course';


-- ============================================================
-- TEST 3: CourseID EXISTS
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - CourseID column exists'
    ELSE 'FAIL - CourseID column does not exist'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Course'
AND COLUMN_NAME = 'CourseID';


-- ============================================================
-- TEST 4: CourseID - INT
-- ============================================================

SELECT
CASE
    WHEN DATA_TYPE IN ('int', 'integer')
    THEN 'PASS - CourseID is INT'
    ELSE 'FAIL - CourseID must be INT'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Course'
AND COLUMN_NAME = 'CourseID';


-- ============================================================
-- TEST 5: CourseID - PRIMARY KEY
-- ============================================================

SELECT
CASE
    WHEN COLUMN_KEY = 'PRI'
    THEN 'PASS - CourseID is PRIMARY KEY'
    ELSE 'FAIL - CourseID must be PRIMARY KEY'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Course'
AND COLUMN_NAME = 'CourseID';


-- ============================================================
-- TEST 6: CourseName - VARCHAR(30)
-- ============================================================

SELECT
CASE
    WHEN DATA_TYPE = 'varchar'
    AND CHARACTER_MAXIMUM_LENGTH = 30
    THEN 'PASS - CourseName is VARCHAR(30)'
    ELSE 'FAIL - CourseName must be VARCHAR(30)'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Course'
AND COLUMN_NAME = 'CourseName';


-- ============================================================
-- TEST 7: CourseName - NOT NULL
-- ============================================================

SELECT
CASE
    WHEN IS_NULLABLE = 'NO'
    THEN 'PASS - CourseName is NOT NULL'
    ELSE 'FAIL - CourseName must be NOT NULL'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Course'
AND COLUMN_NAME = 'CourseName';


-- ============================================================
-- TEST 8: Credits - INT
-- ============================================================

SELECT
CASE
    WHEN DATA_TYPE IN ('int', 'integer')
    THEN 'PASS - Credits is INT'
    ELSE 'FAIL - Credits must be INT'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Course'
AND COLUMN_NAME = 'Credits';


-- ============================================================
-- TEST 9: Credits - NOT NULL
-- ============================================================

SELECT
CASE
    WHEN IS_NULLABLE = 'NO'
    THEN 'PASS - Credits is NOT NULL'
    ELSE 'FAIL - Credits must be NOT NULL'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Course'
AND COLUMN_NAME = 'Credits';


-- ============================================================
-- TEST 10: DepartmentID - INT
-- ============================================================

SELECT
CASE
    WHEN DATA_TYPE IN ('int', 'integer')
    THEN 'PASS - DepartmentID is INT'
    ELSE 'FAIL - DepartmentID must be INT'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Course'
AND COLUMN_NAME = 'DepartmentID';


-- ============================================================
-- TEST 11: DepartmentID - NOT NULL
-- ============================================================

SELECT
CASE
    WHEN IS_NULLABLE = 'NO'
    THEN 'PASS - DepartmentID is NOT NULL'
    ELSE 'FAIL - DepartmentID must be NOT NULL'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Course'
AND COLUMN_NAME = 'DepartmentID';


-- ============================================================
-- TEST 12: AT LEAST 3 RECORDS
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) >= 3
    THEN 'PASS - Course table contains at least 3 records'
    ELSE 'FAIL - Course table must contain at least 3 records'
END AS Result
FROM Course;


-- ============================================================
-- TEST 13: DISPLAY INSERTED RECORDS
-- ============================================================

SELECT
    CourseID,
    CourseName,
    Credits,
    DepartmentID
FROM Course
ORDER BY CourseID;


-- ============================================================
-- DISPLAY COURSE TABLE STRUCTURE
-- ============================================================

DESCRIBE Course;


-- ============================================================
-- DISPLAY STUDENT TABLE STRUCTURE
-- ============================================================

DESCRIBE Student;
