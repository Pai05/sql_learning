SELECT skills,COUNT(*) FROM 
(SELECT * FROM job_postings_fact j WHERE job_title_short = 'Data Analyst' AND job_location = 'Anywhere') AS j
INNER JOIN skills_job_dim ON j.job_id = skills_job_dim.job_id INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
GROUP BY skills ORDER BY COUNT(*) DESC LIMIT 10;
