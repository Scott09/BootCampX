SELECT cohorts.name, count(*) as total_submissions
FROM cohorts
INNER JOIN students
ON cohorts.id = students.cohort_id
INNER JOIN assignment_submissions
ON assignment_submissions.student_id = students.id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;