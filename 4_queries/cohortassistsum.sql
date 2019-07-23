SELECT AVG(subquery.duration)
FROM (SELECT cohorts.name as cohort, SUM(assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY duration) subquery;