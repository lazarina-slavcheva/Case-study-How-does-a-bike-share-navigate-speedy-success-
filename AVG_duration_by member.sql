SELECT member_casual, AVG(duration_minutes) AS tavg_duration
FROM data_2023_2025_v2
GROUP BY member_casual;
