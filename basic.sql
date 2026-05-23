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