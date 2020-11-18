-- average wait time of an assistance request for students

SELECT AVG(started_at - created_at) AS average_wait_time
FROM assistance_requests;