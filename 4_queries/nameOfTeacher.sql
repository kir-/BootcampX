SELECT teachers.name AS teacher, MAX(cohorts.name) AS cohorts FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name
ORDER BY teachers.name;
