-- cohorts with 18 or more students

SELECT cohorts.name AS cohort_name, count(students.*) AS student_count
FROM students
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY count(students.*) ASC;