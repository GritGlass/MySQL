-- https://school.programmers.co.kr/learn/courses/30/lessons/301649#qna
SELECT 
    ID,
    CASE
        WHEN S.RANKS/CNTS <= 0.25 THEN 'CRITICAL'
        WHEN S.RANKS/CNTS <= 0.5 THEN 'HIGH'
        WHEN S.RANKS/CNTS <= 0.75 THEN 'MEDIUM'
    ELSE 'LOW'
    END AS COLONY_NAME
FROM (
    SELECT 
        *,
        RANK() OVER(ORDER BY SIZE_OF_COLONY DESC) AS RANKS,
        COUNT(*) OVER() AS CNTS
    FROM ECOLI_DATA ) AS S
ORDER BY ID;
