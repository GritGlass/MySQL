-- https://school.programmers.co.kr/learn/courses/30/lessons/151141#qna
WITH DF AS (
SELECT 
    HIST.HISTORY_ID,
    CAR.DAILY_FEE,
    DATEDIFF(HIST.END_DATE,HIST.START_DATE)+1 AS DAYS,
    CASE 
        WHEN DATEDIFF(HIST.END_DATE,HIST.START_DATE)+1 <= 6 THEN 0
        WHEN DATEDIFF(HIST.END_DATE,HIST.START_DATE)+1 <=29 THEN 7
        WHEN DATEDIFF(HIST.END_DATE,HIST.START_DATE)+1 <=89 THEN 30
        ELSE 90
    END CNT_DATE
FROM CAR_RENTAL_COMPANY_CAR CAR
JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY HIST ON HIST.CAR_ID=CAR.CAR_ID AND CAR.CAR_TYPE = '트럭')
SELECT 
    DF.HISTORY_ID,
    CAST((1-IFNULL(PLAN.DISCOUNT_RATE,0)/100)*DF.DAYS*DF.DAILY_FEE AS SIGNED) AS FEE
FROM DF
LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN PLAN ON PLAN.DURATION_TYPE=DF.CNT_DATE AND PLAN.CAR_TYPE ='트럭'
ORDER BY FEE DESC, HISTORY_ID DESC ;



