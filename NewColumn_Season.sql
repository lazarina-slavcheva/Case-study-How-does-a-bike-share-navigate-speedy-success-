ALTER TABLE data_2023_2025_v2 ADD COLUMN season1 TEXT;

UPDATE data_2023_2025_v2
SET season = 
  CASE month_name
    WHEN 'January' THEN 'Winter'
    WHEN 'February' THEN 'Winter'
    WHEN 'March' THEN 'Spring'
    WHEN 'April' THEN 'Spring'
    WHEN 'May' THEN 'Spring'
    WHEN 'June' THEN 'Summer'
    WHEN 'July' THEN 'Summer'
    WHEN 'August' THEN 'Summer'
    WHEN 'September' THEN 'Autumn'
    WHEN 'October' THEN 'Autumn'
    WHEN 'November' THEN 'Autumn'
    WHEN 'December' THEN 'Winter'
  END;
