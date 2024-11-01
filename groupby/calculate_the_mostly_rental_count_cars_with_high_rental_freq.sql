-- https://school.programmers.co.kr/learn/courses/30/lessons/151139
SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(*) AS RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE CAR_ID IN (
    SELECT CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE START_DATE >= '2022-08-01' AND START_DATE < '2022-11-01'
    GROUP BY CAR_ID
    HAVING COUNT(*)>=5)
AND START_DATE >= '2022-08-01' AND START_DATE < '2022-11-01'
GROUP BY MONTH,CAR_ID
HAVING COUNT(*)>=1
ORDER BY MONTH ASC,CAR_ID DESC;
