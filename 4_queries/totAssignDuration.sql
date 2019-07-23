SELECT day, COUNT(assignments) As num_of_assignments, SUM(duration) FROM assignments
GROUP BY day
ORDER BY day;