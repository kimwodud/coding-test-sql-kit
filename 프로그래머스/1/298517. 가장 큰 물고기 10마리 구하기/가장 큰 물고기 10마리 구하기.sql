-- MySQL은 LIMIT으로 가져올 상위 행개수 지정
-- Oracle은 ROWNUM은 ORDER BY가 돌고 돌아야하기때문에 서브쿼리(인라인뷰)사용하고 ROWNUM사용
SELECT ID, LENGTH
FROM FISH_INFO
ORDER BY LENGTH DESC, ID
LIMIT 10;