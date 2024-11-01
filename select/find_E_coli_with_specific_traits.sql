-- https://school.programmers.co.kr/learn/courses/30/lessons/301646
SELECT COUNT(*) AS `COUNT`
FROM ECOLI_DATA
WHERE 
  -- 2번 형질이 없는 대장균 (2번째 비트가 0)
  (GENOTYPE & 2 = 0)
  AND
  -- 1번 또는 3번 형질을 보유한 대장균 (1번째 비트가 1 또는 3번째 비트가 1)
  (GENOTYPE & 1 = 1 OR GENOTYPE & 4 = 4);