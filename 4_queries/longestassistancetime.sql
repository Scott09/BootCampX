SELECT cohorts.name as cohort, AVG(assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assistance_requests ON students.id = assistance_requests.student_id
GROUP BY cohort
ORDER BY duration DESC
LIMIT 1;