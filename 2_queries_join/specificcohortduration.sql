SELECT SUM(assignment_submissions.duration)
FROM assignment_submissions
INNER JOIN students
ON assignment_submissions.student_id = students.id
INNER JOIN cohorts
ON students.cohort_id = cohorts.id 
WHERE cohorts.name = 'FEB12';