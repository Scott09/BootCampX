SELECT cohorts.name, count(*) as total_students
FROM cohorts
INNER JOIN students
ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING count(*) >= 18
ORDER BY total_students;