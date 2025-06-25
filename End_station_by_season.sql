WITH station_usage AS (
    SELECT 
        end_station_id,
        end_station_name,
        season,
        COUNT(*) AS usage_count
    FROM data_2023_2025_v2
    GROUP BY end_station_id, end_station_name, season
),
ranked_stations AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY season ORDER BY usage_count DESC) AS rank
    FROM station_usage
)
SELECT 
    end_station_id,
    end_station_name,
    season,
    usage_count
FROM ranked_stations
WHERE rank <= 20
ORDER BY season, rank;