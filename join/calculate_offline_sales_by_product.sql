-- https://school.programmers.co.kr/learn/courses/30/lessons/131533
SELECT PRODUCT.PRODUCT_CODE, SUM(PRODUCT.PRICE*OFFLINE_SALE .SALES_AMOUNT) AS SALES
FROM PRODUCT
JOIN OFFLINE_SALE 
ON OFFLINE_SALE.PRODUCT_ID=PRODUCT.PRODUCT_ID
GROUP BY PRODUCT_CODE
ORDER BY SALES DESC, PRODUCT_CODE;