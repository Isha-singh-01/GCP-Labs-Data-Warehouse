-- Query 5: Monthly Hiring Trends
SELECT 
  EXTRACT(MONTH FROM 
    CASE 
      WHEN SAFE_CAST(publication_date AS INT64) IS NOT NULL 
        THEN TIMESTAMP_SECONDS(CAST(publication_date AS INT64))
      ELSE TIMESTAMP(DATE(publication_date))
    END
  ) as month,
  EXTRACT(YEAR FROM 
    CASE 
      WHEN SAFE_CAST(publication_date AS INT64) IS NOT NULL 
        THEN TIMESTAMP_SECONDS(CAST(publication_date AS INT64))
      ELSE TIMESTAMP(DATE(publication_date))
    END
  ) as year,
  category,
  COUNT(*) as jobs_posted
FROM `job_marketinsights_dataset.jobmarket_table`
WHERE publication_date IS NOT NULL
GROUP BY year, month, category
ORDER BY year, month, jobs_posted DESC;