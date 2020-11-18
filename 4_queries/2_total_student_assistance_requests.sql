-- total number of assistance requests a student has requested

SELECT count(*) AS total_assistances, students.name AS name
FROM assistance_requests
JOIN students ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY name;