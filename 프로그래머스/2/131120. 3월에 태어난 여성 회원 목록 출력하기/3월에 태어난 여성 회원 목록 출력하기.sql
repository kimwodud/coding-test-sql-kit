SELECT MEMBER_ID, MEMBER_NAME, GENDER, TO_CHAR(DATE_OF_BIRTH, 'YYYY-MM-DD')
FROM MEMBER_PROFILE
WHERE 1=1
AND SUBSTR(TO_CHAR(DATE_OF_BIRTH, 'YYYY-MM-DD'),7,1) = '3'
AND TLNO IS NOT NULL
AND GENDER ='W'
ORDER BY MEMBER_ID;