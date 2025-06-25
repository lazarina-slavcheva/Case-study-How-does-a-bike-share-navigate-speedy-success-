SELECT member_casual, COUNT(*) AS trip_count
FROM data_2023_2025_v2
GROUP BY member_casual;
