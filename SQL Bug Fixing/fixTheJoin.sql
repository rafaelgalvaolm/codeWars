SELECT 
  j.jobs_title,
  SUM(j.salary) / COUNT(p) as average_salaries,
  COUNT(p.id) as total_people,
  SUM(j.salary),2 as total_salaries
  FROM people p
    INNER JOIN job j
  GROUP BY j.job_title
  ORDER BY total_salaries;

  ------

  SELECT 
  j.jobs_title,
  SUM(j.salary) / COUNT(p) as average_salarys,
  COUNT(p.id) as total_peoples,
  SUM(j.salary),2 as total_salarys
  FROM people p
    JOIN job j
  GROUP BY j.job_title
  ORDER BY total_salarys

  -------------

  SELECT 
  job_title AS job_title,
  ROUND(AVG(job.salary),2)::FLOAT  AS average_salary,
  COUNT(people_id) AS total_people,
  ROUND(SUM(salary), 2)::FLOAT AS total_salary
  FROM job
     INNER JOIN people 
      ON people.id = job.people_id
      GROUP BY job_title 
      ORDER BY average_salary DESC
      LIMIT 100;