SELECT  ri.REST_ID
        , ri.REST_NAME
        , ri.FOOD_TYPE
        , ri.FAVORITES
        , ri.ADDRESS
        , ROUND(AVG(rr.REVIEW_SCORE), 2) AS "SCORE"
FROM REST_INFO ri
INNER JOIN REST_REVIEW rr ON rr.REST_ID = ri.REST_ID --INNER, LEFT 차이?
WHERE SUBSTR(ri.ADDRESS,1,2) = '서울'
GROUP BY ri.REST_ID, ri.REST_NAME, ri.FOOD_TYPE, ri.FAVORITES, ri.ADDRESS -- 다 묶는이유?
ORDER BY SCORE DESC, ri.FAVORITES DESC;