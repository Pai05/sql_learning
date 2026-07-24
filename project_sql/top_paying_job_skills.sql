WITH top_jobs AS (
SELECT job_id AS ID,'Remote' AS Location, job_title_short AS Title, salary_year_avg AS Salary, company.company_id AS CID,name AS Company
FROM job_postings_fact job LEFT JOIN company_dim company
ON job.company_id = company.company_id
WHERE salary_year_avg IS NOT NULL AND job_title_short='Data Analyst' AND job_location = 'Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10
)
SELECT * FROM top_jobs j INNER JOIN skills_job_dim ON j.ID = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id 
ORDER BY j.Salary DESC;

/* 
Findings for top paying jobs with the title 'Data Analyst' and their associated skills. The query retrieves the top 10 highest paying 'Data Analyst' job postings, along with the company information and the skills required for those jobs. The results are ordered by salary in descending order.
"id","location","title","salary","cid","comp any","job_id","skill_id","skill_id (1)","skills","type"
209315,"Belarus","Data Analyst","400000.0",451121,"ЛАНИТ",209315,79,79,"oracle","cloud"
209315,"Belarus","Data Analyst","400000.0",451121,"ЛАНИТ",209315,98,98,"kafka","libraries"
209315,"Belarus","Data Analyst","400000.0",451121,"ЛАНИТ",209315,169,169,"linux","os"
209315,"Belarus","Data Analyst","400000.0",451121,"ЛАНИТ",209315,210,210,"git","other"
209315,"Belarus","Data Analyst","400000.0",451121,"ЛАНИТ",209315,224,224,"svn","other"
1110602,"Bethesda, MD","Data Analyst","375000.0",80726,"Illuminate Mission Solutions",1110602,1,1,"python","programming"
1110602,"Bethesda, MD","Data Analyst","375000.0",80726,"Illuminate Mission Solutions",1110602,5,5,"r","programming"
1110602,"Bethesda, MD","Data Analyst","375000.0",80726,"Illuminate Mission Solutions",1110602,22,22,"vba","programming"
1110602,"Bethesda, MD","Data Analyst","375000.0",80726,"Illuminate Mission Solutions",1110602,181,181,"excel","analyst_tools"
1110602,"Bethesda, MD","Data Analyst","375000.0",80726,"Illuminate Mission Solutions",1110602,182,182,"tableau","analyst_tools"
641501,"Jacksonville, FL","Data Analyst","375000.0",41888,"Citigroup, Inc",641501,181,181,"excel","analyst_tools"
641501,"Jacksonville, FL","Data Analyst","375000.0",41888,"Citigroup, Inc",641501,188,188,"word","analyst_tools"
229253,"Austin, TX","Data Analyst","375000.0",18439,"Torc Robotics",229253,0,0,"sql","programming"
229253,"Austin, TX","Data Analyst","375000.0",18439,"Torc Robotics",229253,1,1,"python","programming"
229253,"Austin, TX","Data Analyst","375000.0",18439,"Torc Robotics",229253,5,5,"r","programming"
229253,"Austin, TX","Data Analyst","375000.0",18439,"Torc Robotics",229253,7,7,"sas","programming"
229253,"Austin, TX","Data Analyst","375000.0",18439,"Torc Robotics",229253,15,15,"matlab","programming"
229253,"Austin, TX","Data Analyst","375000.0",18439,"Torc Robotics",229253,92,92,"spark","libraries"
229253,"Austin, TX","Data Analyst","375000.0",18439,"Torc Robotics",229253,96,96,"airflow","libraries"
229253,"Austin, TX","Data Analyst","375000.0",18439,"Torc Robotics",229253,181,181,"excel","analyst_tools"
229253,"Austin, TX","Data Analyst","375000.0",18439,"Torc Robotics",229253,182,182,"tableau","analyst_tools"
229253,"Austin, TX","Data Analyst","375000.0",18439,"Torc Robotics",229253,183,183,"power bi","analyst_tools"
229253,"Austin, TX","Data Analyst","375000.0",18439,"Torc Robotics",229253,186,186,"sas","analyst_tools"
1059665,"San Francisco, CA","Data Analyst","350000.0",71828,"Anthropic",1059665,0,0,"sql","programming"
1059665,"San Francisco, CA","Data Analyst","350000.0",71828,"Anthropic",1059665,1,1,"python","programming"
101757,"Austin, TX","Data Analyst","350000.0",23104,"Care.com",101757,0,0,"sql","programming"
101757,"Austin, TX","Data Analyst","350000.0",23104,"Care.com",101757,1,1,"python","programming"
101757,"Austin, TX","Data Analyst","350000.0",23104,"Care.com",101757,5,5,"r","programming"
101757,"Austin, TX","Data Analyst","350000.0",23104,"Care.com",101757,77,77,"bigquery","cloud"
101757,"Austin, TX","Data Analyst","350000.0",23104,"Care.com",101757,80,80,"snowflake","cloud"
101757,"Austin, TX","Data Analyst","350000.0",23104,"Care.com",101757,182,182,"tableau","analyst_tools"
101757,"Austin, TX","Data Analyst","350000.0",23104,"Care.com",101757,183,183,"power bi","analyst_tools"
101757,"Austin, TX","Data Analyst","350000.0",23104,"Care.com",101757,185,185,"looker","analyst_tools"
894135,"San Francisco, CA","Data Analyst","285000.0",94663,"OpenAI",894135,216,216,"github","other"


*/