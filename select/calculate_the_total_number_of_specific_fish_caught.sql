-- https://school.programmers.co.kr/learn/courses/30/lessons/298518
select COUNT(*) AS FISH_COUNT
from FISH_INFO FISH
JOIN FISH_NAME_INFO INFO ON INFO.FISH_TYPE=FISH.FISH_TYPE
WHERE INFO.FISH_NAME IN ('BASS','SNAPPER');