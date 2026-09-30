# SQL Auto Grading – Course Table

## Question

Create a `Course` table with the following fields:

- CourseID
- CourseName
- Credits
- DepartmentID

Insert at least 3 records into the Course table.

Finally, display all table structures using the `DESCRIBE` command.

## Database

Database name:

CollegeDB

## Expected Course Table

| Column | Data Type | Constraint |
|---|---|---|
| CourseID | INT | PRIMARY KEY |
| CourseName | VARCHAR(30) | NOT NULL |
| Credits | INT | NOT NULL |
| DepartmentID | INT | NOT NULL |

## Requirements

1. Create the `Course` table.
2. CourseID must be the PRIMARY KEY.
3. CourseName must be VARCHAR(30).
4. Credits must be INT.
5. DepartmentID must be INT.
6. Insert at least 3 records.
7. Display the Course table structure using:

DESCRIBE Course;

8. Display the existing Student table structure using:

DESCRIBE Student;

## Student Instructions

Write your SQL program in:

solution.sql

Do not change the database name or table name.
