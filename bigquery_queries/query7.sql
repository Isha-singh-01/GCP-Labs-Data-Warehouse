-- Query 7: Company Hiring Patterns
SELECT 
  company,
  COUNT(DISTINCT job_title) as unique_positions,
  COUNT(*) as total_openings,
  STRING_AGG(DISTINCT category, ', ') as categories_hiring,
  ROUND(AVG((salary_min + salary_max) / 2), 2) as avg_salary_offered
FROM `job_marketinsights_dataset.jobmarket_table`
WHERE company IS NOT NULL
GROUP BY company
HAVING total_openings >= 3
ORDER BY total_openings DESC
LIMIT 20;