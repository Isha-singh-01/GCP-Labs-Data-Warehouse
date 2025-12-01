-- Query 4: Top Hiring Locations with Job Type Breakdown
SELECT 
  location,
  job_type,
  COUNT(*) as job_count,
  ROUND(AVG((salary_min + salary_max) / 2), 2) as avg_salary
FROM `job_marketinsights_dataset.jobmarket_table`
WHERE location IS NOT NULL
GROUP BY location, job_type
ORDER BY location, job_count DESC;