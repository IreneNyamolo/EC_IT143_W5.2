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
Question: How many players are on each team?
*/

SELECT
    t.team_name,
    COUNT(p.pl_ID) AS player_count
FROM dbo.tblPlayerDim p
JOIN dbo.tblTeamDim t
    ON p.t_id = t.t_id
GROUP BY t.team_name
ORDER BY player_count DESC;

/* 
Question 2
Original Author: Irene Nyamolo
Question: How many players play each position?
*/

SELECT
    pos.position_name,
    COUNT(p.pl_ID) AS player_count
FROM dbo.tblPlayerDim p
JOIN dbo.tblPositionDim pos
    ON p.p_id = pos.p_id
GROUP BY pos.position_name
ORDER BY player_count DESC;

/* 
Question 3
Original Author: Ejikeme Obasi (adapted to MyFC dataset)
Original Question: Which sales agents have the lowest close rates?
Adapted Question: Which teams have the lowest number of players?
*/

SELECT
    t.team_name,
    COUNT(p.pl_ID) AS player_count
FROM dbo.tblPlayerDim p
JOIN dbo.tblTeamDim t
    ON p.t_id = t.t_id
GROUP BY t.team_name
ORDER BY player_count ASC;

/* 
Question 4
Original Author: Ingrid Velasco (adapted to MyFC dataset)
Original Question: Which business units have the highest revenue growth?
Adapted Question: Which players have the highest performance statistics?
*/

SELECT
    p.pl_name,
    pf.stat_value
FROM dbo.tblPlayerFact pf
JOIN dbo.tblPlayerDim p
    ON pf.pl_ID = p.pl_ID
ORDER BY pf.stat_value DESC;