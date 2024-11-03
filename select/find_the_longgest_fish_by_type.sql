-- https://school.programmers.co.kr/learn/courses/30/lessons/293261
SELECT FISH.ID, NAME.FISH_NAME,FISH.LENGTH
FROM FISH_INFO FISH
JOIN FISH_NAME_INFO NAME ON FISH.FISH_TYPE = NAME.FISH_TYPE
WHERE FISH.LENGTH = (SELECT MAX(LENGTH)
                    FROM FISH_INFO
                    WHERE FISH_TYPE=FISH.FISH_TYPE)
ORDER BY FISH.ID;