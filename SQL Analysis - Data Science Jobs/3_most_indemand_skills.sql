with skill_table as (select job_id,skills
FROM skills_job_dim
inner join skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
)

SELECT count(job_postings_fact.job_id),skill_table.skills
FROM job_postings_fact
INNER JOIN skill_table on job_postings_fact.job_id = skill_table.job_id
where job_title_short = 'Data Scientist'
GROUP BY skill_table.skills
ORDER BY count(job_postings_fact.job_id) DESC
limit 5

-- 2nd option

SELECT count(job_postings_fact.job_id),skills
FROM job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short = 'Data Scientist'
GROUP BY skills
ORDER BY count(job_postings_fact.job_id) DESC
limit 5     