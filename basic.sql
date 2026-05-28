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
SELECT *
FROM students
WHERE name LIKE 'A%';
SELECT *
FROM students
WHERE marks BETWEEN 80 AND 90;
SELECT *
FROM students
WHERE id IN (1, 3);
SELECT *
FROM students
LIMIT 2;
ALTER TABLE students
ADD age INT;
RENAME TABLE students TO student_data;
TRUNCATE TABLE student_data;
CREATE VIEW top_students AS
SELECT name, marks
FROM students
WHERE marks > 85;
SELECT students.name, courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.course_id;
SELECT students.name, courses.course_name
FROM students
LEFT JOIN courses
ON students.course_id = courses.course_id;
SELECT marks, COUNT(*) AS total
FROM students
GROUP BY marks;
SELECT marks, COUNT(*) AS total
FROM students
GROUP BY marks
HAVING COUNT(*) > 1;
SELECT name, marks
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
);
SELECT name,
CASE
    WHEN marks >= 90 THEN 'Excellent'
    WHEN marks >= 75 THEN 'Good'
    ELSE 'Average'
END AS performance
FROM students;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50)
);
CREATE TABLE users (
    id INT,
    username VARCHAR(50) NOT NULL
);CREATE TABLE customers (
    id INT,
    email VARCHAR(100) UNIQUE
);
CREATE TABLE orders (
    order_id INT,
    status VARCHAR(20) DEFAULT 'Pending'
);
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50)
);
CREATE INDEX idx_name
ON students(name);
DROP INDEX idx_name
ON students;
SELECT name FROM students
UNION
SELECT name FROM teachers;
SELECT name
FROM students
WHERE EXISTS (
    SELECT *
    FROM courses
    WHERE students.course_id = courses.course_id
);
SELECT *
FROM top_students;
SELECT students.name, courses.course_name
FROM students
RIGHT JOIN courses
ON students.course_id = courses.course_id;
SELECT students.name, courses.course_name
FROM students
CROSS JOIN courses;
SELECT A.name AS Student1, B.name AS Student2
FROM students A, students B
WHERE A.id <> B.id;
SELECT *
FROM students
WHERE marks IS NULL;
SELECT *
FROM students
WHERE marks IS NOT NULL;
SELECT ROUND(AVG(marks), 2) AS average_marks
FROM students;
SELECT name, LENGTH(name) AS name_length
FROM students;
SELECT UPPER(name) AS uppercase_name
FROM students;