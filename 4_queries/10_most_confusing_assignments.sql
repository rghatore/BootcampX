-- assignments with total number of requests in desc order

-- here we have to add extra columns in group by
SELECT assignment_id AS id, name, day, chapter, count(*) AS total_requests
FROM assignments
JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY assignment_id, name, day, chapter
ORDER BY total_requests DESC;
-- this works fine without adding extra columns in group by
-- SELECT assignments.id AS id, name, day, chapter, count(*) AS total_requests
-- FROM assignments
-- JOIN assistance_requests ON assignment_id = assignments.id
-- GROUP BY assignments.id
-- ORDER BY total_requests DESC 