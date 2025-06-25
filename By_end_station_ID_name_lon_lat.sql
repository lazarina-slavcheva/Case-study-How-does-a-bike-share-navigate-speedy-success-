SELECT 
    end_station_id, 
	end_station_name,
	end_lat, 
	end_lng,
    member_casual, 
    COUNT(*) AS usage_count
FROM data_2023_2025_v2
GROUP BY end_station_id, end_station_name, member_casual
ORDER BY end_station_id, usage_count DESC
LIMIT 120;