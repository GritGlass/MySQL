-- https://school.programmers.co.kr/learn/courses/30/lessons/164671
SELECT CONCAT("/home/grep/src/",F.board_id, "/",F.file_id,F.file_name,F.file_ext) AS FILE_PATH
FROM USED_GOODS_FILE F 
WHERE BOARD_ID=(SELECT BOARD_ID FROM USED_GOODS_BOARD ORDER BY VIEWS DESC LIMIT 1)
ORDER BY FILE_ID DESC;
