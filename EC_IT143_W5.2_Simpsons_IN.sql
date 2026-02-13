/*****************************************************************************************************************
NAME:    My Script Name
PURPOSE: My script purpose...

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/23/2022   JJAUSSI       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

-- Q1: What should go here?
-- A1: Question goes on the previous line, intoduction to the answer goes on this line...

SELECT GETDATE() AS my_date;

/* 
Question 1
Original Author: Irene Nyamolo
Question: How many employees are active by department?
*/

SELECT
    department,
    COUNT(member_ID) AS active_employees
FROM dbo.Family_Data
WHERE status = 'Active'
GROUP BY department
ORDER BY active_employees DESC;

/* 
Question 2
Original Author: Irene Nyamolo
Question: How many employees were hired each year?
*/

SELECT
    YEAR(hire_date) AS hire_year,
    COUNT(member_ID) AS total_hires
FROM dbo.Family_Data
GROUP BY YEAR(hire_date)
ORDER BY hire_year;

/* 
Question 3
Original Author: Ejikeme Obasi (adapted to Simpsons dataset)
Original Question: Are there quarter-over-quarter trends in deal value?
Adapted Question: Are there year-over-year hiring trends?
*/

SELECT
    YEAR(hire_date) AS hire_year,
    COUNT(member_ID) AS total_hires
FROM dbo.Family_Data
GROUP BY YEAR(hire_date)
ORDER BY hire_year;

/* 
Question 4
Original Author: Ingrid Velasco (adapted to Simpsons dataset)
Original Question: Which business units have the highest operational costs?
Adapted Question: Which departments have the most employees?
*/

SELECT
    department,
    COUNT(member_ID) AS total_employees
FROM dbo.Family_Data
GROUP BY department
ORDER BY total_employees DESC;