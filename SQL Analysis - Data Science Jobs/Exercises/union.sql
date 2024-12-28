-- select job_title_short,job_title
-- FROM january_jobs

-- UNION ALL

-- select job_title_short,job_title
-- FROM february_jobs

SELECT job_title_short , salary_year_avg
FROM january_jobs
WHERE salary_year_avg > 70000

UNION ALL

SELECT job_title_short , salary_year_avg
FROM february_jobs
WHERE salary_year_avg > 70000

UNION ALL

SELECT job_title_short , salary_year_avg
FROM march_jobs
WHERE salary_year_avg > 70000