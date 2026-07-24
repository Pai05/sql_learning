WITH skill_demand AS 
        (SELECT skills_dim.skill_id,skills AS Skill,COUNT(*) AS demand
        FROM  
        job_postings_fact j 
        INNER JOIN skills_job_dim ON j.job_id = skills_job_dim.job_id 
        INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
        WHERE j.job_title_short = 'Data Analyst' 
        AND j.job_work_from_home = TRUE 
        AND j.salary_year_avg IS NOT NULL 
        GROUP BY skills_dim.skill_id
        ),
    skill_pay AS 
        (SELECT skills_dim.skill_id,skills AS Skill, ROUND(AVG(j.salary_year_avg),0) AS Pay 
        FROM  
        job_postings_fact j 
        INNER JOIN skills_job_dim ON j.job_id = skills_job_dim.job_id 
        INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
        WHERE j.job_title_short = 'Data Analyst' 
        AND j.job_work_from_home = TRUE 
        AND j.salary_year_avg IS NOT NULL 
        GROUP BY skills_dim.skill_id 
        )
SELECT d.Skill, d.skill_id, p.Pay
FROM skill_demand d INNER JOIN skill_pay p ON d.skill_id = p.skill_id
ORDER BY (Pay/demand) DESC LIMIT 10; 