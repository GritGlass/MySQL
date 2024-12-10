-- https://school.programmers.co.kr/learn/courses/30/lessons/59413
WITH RECURSIVE time AS(
    SELECT 0 AS num
    UNION ALL
    SELECT num+1
    FROM time
    WHERE num<23
) 
select 
    time.num as HOUR,
    IFNULL(animal.cnt,0) AS COUNT
from time
left join (select 
    HOUR(datetime) AS hour,
    count(*) as cnt
from ANIMAL_OUTS
group by HOUR(datetime)) animal on animal.hour = time.num
order by hour;
