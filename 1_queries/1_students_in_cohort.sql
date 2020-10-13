-- get the names of students from a single cohort

SELECT id, name
FROM students
WHERE cohort_id = 1
ORDER BY name ASC;