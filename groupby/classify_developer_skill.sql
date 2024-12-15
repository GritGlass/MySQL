-- https://school.programmers.co.kr/learn/courses/30/lessons/276036
WITH DF AS (
SELECT D.ID AS ID,
    D.EMAIL AS EMAIL, 
    GROUP_CONCAT(S.NAME) AS NAME,
    GROUP_CONCAT(S.CATEGORY) AS CATEGORY
FROM DEVELOPERS D
JOIN SKILLCODES S ON (S.CODE & D.SKILL_CODE)>0
GROUP BY D.ID, D.EMAIL)
SELECT 
    CASE
        WHEN  NAME LIKE '%Python%' AND CATEGORY LIKE '%Front%' THEN 'A'
        WHEN NAME LIKE '%C#%' THEN 'B'
        WHEN CATEGORY LIKE '%Front%' THEN 'C'
    END GRADE,
    ID,
    EMAIL
FROM DF
HAVING GRADE IS NOT NULL
ORDER BY GRADE,ID
;
