-- https://school.programmers.co.kr/learn/courses/30/lessons/276034
SELECT ID,EMAIL,FIRST_NAME,LAST_NAME
FROM DEVELOPERS
WHERE SKILL_CODE & (select CODE from SKILLCODES WHERE NAME like 'Python')
OR SKILL_CODE & (select CODE from SKILLCODES WHERE NAME ='C#')
ORDER BY ID;