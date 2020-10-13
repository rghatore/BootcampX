-- get all the students without an e-mail or phone number

SELECT name, id, cohort_id
FROM students
WHERE email IS NULL
OR phone IS NULL;