select * from hr;
-- QUESTIONS

-- 1. What is the gender breakdown of employees in the company?
select gender, count(*) as count
from hr
where age >= 18 
group by gender;

-- 2. What is the race/ethnicity breakdown of employees in the company?
select race, count(*) as count
from hr
where age >= 18 
group by race
order by count(*) desc;

-- 3. What is the age distribution of employees in the company?
select 
	min(age) as youngest,
    max(age) oldest
from hr
where age >= 18;


select 
	case
		when age >= 18 and age <= 19 then '18-19'
        when age >= 19 and age <= 20 then '19-20'
        when age >= 21 and age <= 22 then '21-22'
        when age >= 22 and age <= 24 then '22-24'
        else '25+'
	end as age_group,
    count(*) as count
from hr
where age >= 18
group by age_group
order by age_group;

select 
	case
		when age >= 18 and age <= 19 then '18-19'
        when age >= 19 and age <= 20 then '19-20'
        when age >= 21 and age <= 22 then '21-22'
        when age >= 22 and age <= 24 then '22-24'
        else '25+'
	end as age_group, gender,
    count(*) as count
from hr
where age >= 18
group by age_group, gender
order by age_group, gender;

-- 4. How many employees work at headquarters versus remote locations?
select location, count(*) as count
from hr
where age >= 18
group by location;

-- 5. What is the average length of employment for employees who have been terminated?
SELECT 
    AVG(DATEDIFF(termdate, hire_date)) / 365 AS avg_length_employment
FROM hr
WHERE termdate <= CURDATE() AND age >= 18;

-- 6. How does the gender distribution vary across departments and job titles?
select department, gender, count(*) as count
from hr
where age >= 18
group by department, gender
order by department;

-- 7. What is the distribution of job titles across the company?
select jobtitle, count(*) as count
from hr
group by jobtitle
order by jobtitle desc;

-- 8. Which department has the highest turnover rate?
SELECT 
    department, 
    total_count,
    terminated_count,
    terminated_count / total_count AS termination_rate
FROM (
    SELECT 
        department,
        COUNT(*) AS total_count,
        SUM(
            CASE 
                WHEN termdate IS NOT NULL AND termdate <= CURDATE() THEN 1
                ELSE 0
            END
        ) AS terminated_count
    FROM hr
    WHERE age >= 18
    GROUP BY department
) AS subquery
ORDER BY termination_rate DESC;

-- 9. What is the distribution of employees across locations by city and state?

select location_state, count(*) as count
from hr
where age >= 18
group by location_state
order by count desc;

-- 10. How has the company's employee count changed over time based on hire and term dates?
select 
	year,
    hires,
    terminations,
    hires - terminations as net_change,
    round((hires - terminations)/hires * 100,2) as net_change_percent
from(
	select
		year(hire_date) as year,
        count(*) as hires,
        sum(case when termdate is not null and termdate <= curdate() then 1 else 0 end) as terminations
        from hr
        where age >= 18
        group by year(hire_date)
        )as subquery
	order by year asc;
    
-- 11. What is the tenure distribution for each department?
select department, round(avg(datediff(termdate, hire_date)/365),0) as avg_tenure
from hr
where termdate <= curdate() and termdate is null and age >= 18
group by department;