-- Case Statements

SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 THEN 'Young'	
    WHEN age between 31 and 54 THEN 'Middle-Age'
    WHEN age >=55 THEN 'Old'
END AS Age_Bracket
FROM employee_demographics
;

-- Pay Increse and Bonus
-- <50000, 5%
-- >=50000,7%
-- Finance, bonus 10%

SELECT first_name, last_name,
CASE
	WHEN salary<50000 THEN salary *1.05
    WHEN salary >= 50000 THEN salary *1.07
END New_Salary,
CASE
	WHEN dept_id = 6 THEN salary *.10
END Bonuses
FROM employee_salary
;


