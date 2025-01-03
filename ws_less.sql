-- Window Functions
select gender, AVG(salary) as avg_sal
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
group by gender
;

select dem.first_name, dem.last_name, gender, salary,
AVG(salary) OVER(PARTITION BY gender),
SUM(salary) Over(partition by gender order by dem.employee_id) as rolling_total
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
;