SELECT member_casual, day_of_week, COUNT(*) AS trip_count
FROM data_2023_2025_v2
GROUP BY member_casual, day_of_week
ORDER BY member_casual,
         CASE day_of_week
           WHEN 'Sunday' THEN 0
           WHEN 'Monday' THEN 1
           WHEN 'Tuesday' THEN 2
           WHEN 'Wednesday' THEN 3
           WHEN 'Thursday' THEN 4
           WHEN 'Friday' THEN 5
           WHEN 'Saturday' THEN 6
         END;
