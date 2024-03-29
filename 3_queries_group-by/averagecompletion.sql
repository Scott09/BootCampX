SELECT students.name, AVG(assignment_submissions.duration) as average
FROM students
INNER JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average DESC;