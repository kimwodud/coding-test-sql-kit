-- 코드를 작성해주세요
-- 문제 오류 길이 10cm 이하를 구하는 문제가 아님
-- 10cm이하인 물고기들은 NULL이라고 되어있음 따라서 NULL만 카운트하면됨
SELECT COUNT(*) AS "FISH_COUNT"
FROM FISH_INFO
WHERE LENGTH IS NULL;