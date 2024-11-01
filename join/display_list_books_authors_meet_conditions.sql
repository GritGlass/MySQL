-- https://school.programmers.co.kr/learn/courses/30/lessons/144854
SELECT BOOK_ID,AUTHOR_NAME, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE 
FROM BOOK
LEFT JOIN AUTHOR
ON BOOK.AUTHOR_ID=AUTHOR.AUTHOR_ID
WHERE  category='경제'
ORDER BY PUBLISHED_DATE ;