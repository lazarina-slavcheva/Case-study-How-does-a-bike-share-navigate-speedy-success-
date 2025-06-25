SELECT 
    rideable_type, 
    member_casual, 
    COUNT(*) AS usage_count
FROM data_2023_2025_v2
GROUP BY rideable_type, member_casual
ORDER BY rideable_type, usage_count DESC;