SELECT students.name, AVG(assignment_submissions.duration) as average, AVG(assignments.duration)
FROM students
INNER JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
INNER JOIN assignments
ON assignment_submissions.assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average ASC;