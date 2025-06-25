UPDATE data_2023_2025_v2
SET day_of_week = CASE strftime('%w', started_at)
  WHEN '0' THEN 'Sunday'
  WHEN '1' THEN 'Monday'
  WHEN '2' THEN 'Tuesday'
  WHEN '3' THEN 'Wednesday'
  WHEN '4' THEN 'Thursday'
  WHEN '5' THEN 'Friday'
  WHEN '6' THEN 'Saturday'
END;
