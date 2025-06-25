-- Step 1: Add the new column
ALTER TABLE data_2023_2025_v1 ADD COLUMN duration_minutes INTEGER;

-- Step 2: Calculate the difference in minutes
UPDATE data_2023_2025_v1
SET duration_minutes = (
  strftime('%s', ended_at) - strftime('%s', started_at)
) / 60;