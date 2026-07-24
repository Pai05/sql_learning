SELECT skills AS Skill, ROUND(AVG(j.salary_year_avg),0) AS Pay 
FROM  
job_postings_fact j INNER JOIN skills_job_dim ON j.job_id = skills_job_dim.job_id INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE j.job_title_short = 'Data Analyst' AND j.job_location = 'Anywhere' AND j.salary_year_avg IS NOT NULL 
GROUP BY skills ORDER BY AVG(j.salary_year_avg) DESC LIMIT 10;