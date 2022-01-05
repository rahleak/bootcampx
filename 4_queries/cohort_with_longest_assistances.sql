SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohorts_id
GROUP BY cohorts.name
ORDER BY average_assitance_time DESC
LIMIT 1;