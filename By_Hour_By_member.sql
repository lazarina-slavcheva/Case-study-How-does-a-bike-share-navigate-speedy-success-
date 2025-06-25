SELECT 
  strftime('%H', started_at) AS hour_24,
  member_casual,
  printf('%d-%d', CAST(strftime('%H', started_at) AS INTEGER), CAST(strftime('%H', started_at) AS INTEGER) + 1) AS hour,
  COUNT(*) AS total
FROM data_2023_2025_v2
GROUP BY hour, member_casual
ORDER BY CAST(strftime('%H', started_at) AS INTEGER);
