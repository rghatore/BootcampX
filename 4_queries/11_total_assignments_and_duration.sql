-- day, number of assignments and total duration

SELECT day, count(day) AS number_of_assignments, sum(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day ASC;