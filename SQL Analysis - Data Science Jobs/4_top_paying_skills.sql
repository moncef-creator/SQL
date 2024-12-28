SELECT skills,round(avg(salary_year_avg),2)as salary
FROM job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short = 'Data Scientist'
and salary_year_avg is NOT NULL
GROUP BY skills
ORDER BY count(job_postings_fact.job_id) DESC
-- limit 5     

SELECT skills,round(avg(salary_year_avg),2)as salary,count(job_postings_fact.job_id)
FROM job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short = 'Data Scientist'
and salary_year_avg is NOT NULL
GROUP BY skills
ORDER BY salary DESC
limit 25     