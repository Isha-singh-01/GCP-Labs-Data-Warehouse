-- Query 6: Salary Gap Analysis by Job Type
SELECT 
  job_type,
  category,
  ROUND(AVG(salary_max - salary_min), 2) as avg_salary_range,
  ROUND(AVG((salary_min + salary_max) / 2), 2) as avg_mid_salary,
  COUNT(*) as job_count
FROM `job_marketinsights_dataset.jobmarket_table`
WHERE salary_min IS NOT NULL AND salary_max IS NOT NULL
GROUP BY job_type, category
HAVING job_count >= 5
ORDER BY avg_salary_range DESC;