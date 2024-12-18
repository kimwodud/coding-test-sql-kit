-- UNION ALL
SELECT TO_CHAR(SALES_DATE, 'YYYY-MM-DD') AS "SALES_DATE"
      , PRODUCT_ID
      , USER_ID
      , SALES_AMOUNT
FROM ONLINE_SALE
WHERE 1=1
AND SUBSTR(TO_CHAR(SALES_DATE, 'YYYY-MM-DD'),1, 7) = '2022-03'
-- ORDER BY SALES_DATE, PRODUCT_ID, USER_ID 여기다 쓰지 않기 셀프웨그헤오 순서 / UNION이라고 따로라고 생각 X

    UNION ALL

SELECT TO_CHAR(SALES_DATE, 'YYYY-MM-DD') AS "SALES_DATE"
      , PRODUCT_ID
      , NULL USER_ID    -- USER_ID 컬럼 NULL로 설정
      , SALES_AMOUNT
FROM OFFLINE_SALE
WHERE 1=1
AND SUBSTR(TO_CHAR(SALES_DATE, 'YYYY-MM-DD'),1, 7) = '2022-03'
ORDER BY SALES_DATE, PRODUCT_ID, USER_ID