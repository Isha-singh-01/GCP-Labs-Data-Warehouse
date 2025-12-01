-- Query 3: Most In-Demand Skills
SELECT 
  TRIM(skill) as skill_name,
  COUNT(*) as mentions,
  ROUND(AVG((salary_min + salary_max) / 2), 2) as avg_salary_for_skill
FROM `job_marketinsights_dataset.jobmarket_table`,
  UNNEST(SPLIT(skills, ',')) as skill
WHERE skills IS NOT NULL
GROUP BY skill_name
ORDER BY mentions DESC
LIMIT 15;