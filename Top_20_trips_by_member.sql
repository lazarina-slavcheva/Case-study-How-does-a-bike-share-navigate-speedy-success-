SELECT 
    start_station_id,
    start_station_name,
	start_lat,
	start_lng,
    end_station_id,
    end_station_name,
	end_lat,
	end_lng,
    COUNT(*) AS trip_count
FROM data_2023_2025_v2
WHERE member_casual = 'member'
GROUP BY start_station_id, start_station_name, start_lat, start_lng, end_station_id, end_station_name, end_lat, end_lng
ORDER BY trip_count DESC
LIMIT 20;