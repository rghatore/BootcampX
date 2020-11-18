-- name of all teachers who provided assistance for
-- a particular cohort name with total number of assistances

SELECT teachers.name AS teacher, 
                cohorts.name AS cohort, 
                count(*) AS total_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;
