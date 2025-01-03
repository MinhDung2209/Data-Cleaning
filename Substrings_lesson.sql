-- Subqueries
SELECT *
FROM employee_demographics
WHERE employee_id IN 
					( SELECT employee_id
						FROM employee_salary
                        WHERE dept_id = 1)
;

SELECT  first_name, salary,
(SELECT AVG(salary)
FROM EMPLOYEE_SALARY)
FROM employee_salary;

SELECT GENDER, AVG(age), MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY GENDER
;	

SELECT *
FROM
(SELECT GENDER, AVG(age), MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY GENDER) AS AGRR_AGE



