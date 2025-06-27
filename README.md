# Case-study-How-does-a-bike-share-navigate-speedy-success-
Google Data Analytics Capstone: Complete a Case Study 

Bike Trip Analysis Case Study (2023–2025)

📊 Overview
This case study focuses on analyzing Divvy bike trip data from 2023 to 2025. The primary goal is to explore user behavior, trip trends, and station activity by processing and transforming raw CSV data into actionable insights using PowerShell and SQL.

⚙️ Data Preparation

1. Combine Multiple CSV Files
A PowerShell script was used to merge individual monthly .csv files into a single dataset:

$folder = "C:\Users\Downloads\DA project\Divvy-Tripdata\New folder"
$output = "$folder\combined.csv"

$csvFiles = Get-ChildItem -Path $folder -Filter *.csv
Remove-Item -Path $output -ErrorAction Ignore

$first = $true

foreach ($file in $csvFiles) {
    if ($first) {
        Get-Content $file.FullName | Out-File -FilePath $output -Encoding utf8
        $first = $false
    } else {
        Get-Content $file.FullName | Select-Object -Skip 1 | Out-File -FilePath $output -Append -Encoding utf8
    }
}

🧠 Data Transformation & Analysis
All further steps were conducted in SQL using the merged dataset.

2. Trip Duration Calculation
A new column duration_minutes was created to calculate the trip duration in minutes:

ALTER TABLE data_2023_2025_v1 ADD COLUMN duration_minutes INTEGER;

UPDATE data_2023_2025_v1
SET duration_minutes = (
  strftime('%s', ended_at) - strftime('%s', started_at)
) / 60;

3. Extract Month and Assign Seasons
- Extracted the month name from started_at column.
- Grouped months into respective seasons.

4. Day of Week Classification
- Extracted day of the week.
- Grouped the data into Workweek (Mon–Fri) and Weekend (Sat–Sun).

5. Hourly Distribution
- Extracted the hour from started_at and labeled as By_hour.
- Analyzed usage by hour and member type.

🔍 Insights & Aggregations

6. Top 20 Most Frequent Trips
- Identified top 20 most common start-end station pairs.
- Segmented results by member type.

7. Member Type Usage
- Analyzed distribution of trips between members and casual users.

8. Bike Type Preference
- Checked popularity of different bike types by user type.

9. Average Trip Duration
- Calculated and compared average trip length by member type.


✅ Conclusion
This case study helped uncover patterns in bike usage across time, user types, and geographies. The analysis provides valuable insights for improving service efficiency, marketing strategies, and urban planning.
