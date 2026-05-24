SELECT * 
FROM students;
SELECT * 
FROM students
WHERE marks > 80;
SELECT * 
FROM students
ORDER BY marks DESC;
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;
SELECT department, AVG(marks) AS average_marks
FROM students
GROUP BY department
HAVING AVG(marks) > 75;
SELECT students.name, courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.course_id;
CREATE DATABASE school;
USE school;
CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    marks INT
);
INSERT INTO students VALUES
(1, 'Alice', 85),
(2, 'Bob', 90),
(3, 'Charlie', 78);
SELECT * FROM students;
SELECT * 
FROM students
WHERE marks > 80;
SELECT * 
FROM students
ORDER BY marks DESC;
UPDATE students
SET marks = 95
WHERE id = 1;
DELETE FROM students
WHERE id = 3;
DROP TABLE students;
SELECT DISTINCT marks
FROM students;
SELECT COUNT(*) AS total_students
FROM students;
SELECT AVG(marks) AS average_marks
FROM students;
SELECT MAX(marks) AS highest_marks
FROM students;
SELECT MIN(marks) AS lowest_marks
FROM students;
SELECT SUM(marks) AS total_marks
FROM students;