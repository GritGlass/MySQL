-- https://school.programmers.co.kr/learn/courses/30/lessons/132204#qna
SELECT APP.APNT_NO,PA.PT_NAME,PA.PT_NO,APP.MCDP_CD,DOC.DR_NAME, APP.APNT_YMD
FROM APPOINTMENT APP
JOIN DOCTOR DOC ON DOC.DR_ID=APP.MDDR_ID
JOIN PATIENT PA ON PA.PT_NO=APP.PT_NO
WHERE APP.APNT_YMD LIKE '2022-04-13%'
AND APP.APNT_CNCL_YN ='N'
AND APP.MCDP_CD = 'CS'
ORDER BY APP.APNT_YMD;