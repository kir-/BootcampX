SELECT cohorts.name, count(cohorts.name) FROM cohorts 
JOIN students ON students.cohort_id =  cohorts.id
GROUP BY cohorts.name
HAVING count(cohorts.name) >= 18
ORDER BY count(cohorts.name);
