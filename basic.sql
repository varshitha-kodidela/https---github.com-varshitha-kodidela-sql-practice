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