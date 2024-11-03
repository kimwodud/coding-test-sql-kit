-- PATENT_TEAM_ID는 전 단계의 아이템을 뜻함(어떤 아이템의 부모인지)
-- RARE등급 아이템에서 업그레이드된 아이템만 출력 -> 서브쿼리 사용하기
-- 다시
SELECT ii.ITEM_ID, ii.ITEM_NAME, ii.RARITY
FROM ITEM_INFO ii
INNER JOIN ITEM_TREE it
ON ii.ITEM_ID = it.ITEM_ID
WHERE it.PARENT_ITEM_ID IN (
    SELECT ITEM_ID
    FROM ITEM_INFO
    WHERE RARITY = 'RARE'
)
ORDER BY 1 DESC;