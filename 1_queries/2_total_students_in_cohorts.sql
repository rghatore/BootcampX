-- get the total number of students from any number of cohorts combined

SELECT count(*)
FROM students
WHERE cohort_id IN (1, 2, 3);