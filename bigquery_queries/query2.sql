-- Query 2: Experience vs Salary Analysis
SELECT 
  experience_required,
  COUNT(*) as job_count,
  ROUND(AVG((salary_min + salary_max) / 2), 2) as avg_salary,
  MIN(salary_min) as lowest_salary,
  MAX(salary_max) as highest_salary
FROM `job_marketinsights_dataset.jobmarket_table`
WHERE experience_required IS NOT NULL 
  AND salary_min IS NOT NULL 
  AND salary_max IS NOT NULL
GROUP BY experience_required
ORDER BY experience_required;