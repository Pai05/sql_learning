WITH 
DA AS (
SELECT job_id AS ID,'Remote' AS Location, job_title_short AS Title, salary_year_avg AS Salary, company.company_id AS CID,name AS Company
FROM job_postings_fact job LEFT JOIN company_dim company
ON job.company_id = company.company_id
WHERE salary_year_avg IS NOT NULL AND job_title_short LIKE '%Data%Analyst%' AND job_location = 'Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10),
BA AS (SELECT job_id AS ID,'Remote' AS Location, job_title_short AS Title, salary_year_avg AS Salary, company.company_id AS CID,name AS Company
FROM job_postings_fact job LEFT JOIN company_dim company
ON job.company_id = company.company_id
WHERE salary_year_avg IS NOT NULL AND job_title_short LIKE '%Business%Analyst%' AND job_location = 'Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10)
SELECT * FROM DA UNION ALL SELECT * FROM BA     

