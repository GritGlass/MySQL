-- https://school.programmers.co.kr/learn/courses/30/lessons/299305
SELECT
    ID,
    IFNULL(
        (
            SELECT
                COUNT(*)
            FROM
                ECOLI_DATA
            GROUP BY
                PARENT_ID
            HAVING
                PARENT_ID = ID
        ), 0
    ) AS CHILD_COUNT
FROM ECOLI_DATA
ORDER BY ID;