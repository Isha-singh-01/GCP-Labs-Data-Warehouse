-- Query 1: Top Paying Job Categories
SELECT 
  category,
  COUNT(*) as total_jobs,
  ROUND(AVG(salary_min), 2) as avg_min_salary,
  ROUND(AVG(salary_max), 2) as avg_max_salary,
  ROUND(AVG((salary_min + salary_max) / 2), 2) as avg_mid_salary
FROM `job_marketinsights_dataset.jobmarket_table`
WHERE salary_min IS NOT NULL AND salary_max IS NOT NULL
GROUP BY category
ORDER BY avg_mid_salary DESC
LIMIT 10;