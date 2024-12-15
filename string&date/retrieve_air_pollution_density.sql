-- https://school.programmers.co.kr/learn/courses/30/lessons/284530
select 
    YEAR(YM) AS YEAR,
    ROUND(AVG(PM_VAL1),2) AS `PM10`,
    ROUND(AVG(PM_VAL2),2) AS `PM2.5`
FROM AIR_POLLUTION AS AIR
WHERE LOCATION2='수원'
GROUP BY YEAR(YM)
ORDER BY YEAR(YM)