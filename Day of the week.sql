ALTER TABLE data_2023_2025_v2 ADD COLUMN day_of_week2 TEXT;

UPDATE data_2023_2025_v2
SET day_of_week = strftime('%w', started_at);  -- 0 = Sunday, 6 = Saturday
