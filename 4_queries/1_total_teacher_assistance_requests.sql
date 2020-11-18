-- total number of assistance requests a teacher has completed

SELECT count(*) AS total_assistances, teachers.name AS name
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY name;