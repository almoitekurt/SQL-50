/* Write your T-SQL query statement below */
SELECT stu.student_id, stu.student_name, sub.subject_name, COUNT(exam.student_id) AS attended_exams
FROM students stu CROSS JOIN subjects sub
LEFT JOIN examinations exam
ON exam.student_id = stu.student_id AND exam.subject_name = sub.subject_name
GROUP BY stu.student_id, stu.student_name, sub.subject_name
ORDER BY stu.student_id, sub.subject_name;