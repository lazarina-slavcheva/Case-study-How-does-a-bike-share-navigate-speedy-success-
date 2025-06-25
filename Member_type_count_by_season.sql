SELECT member_casual, season, COUNT(*) AS trip_count
FROM data_2023_2025_v2
GROUP BY member_casual, season
ORDER BY member_casual, season;