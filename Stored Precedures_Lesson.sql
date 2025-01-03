-- Stored Procedures
CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >=50000;

CALL large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >=50000;
	SELECT *
	FROM employee_salary
	WHERE salary>10000;
END $$

-- change back delimiter (dấu phân cách),
DELIMITER ;

CALL large_salaries2();


-- Parameters (tham số)
DELIMITER $$
CREATE PROCEDURE large_salarie4(Parameter INT)
BEGIN
	SELECT salary
	FROM employee_salary
	WHERE employee_id = Parameter;
END $$
DELIMITER ;


CALL large_salarie4(1);
