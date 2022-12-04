-- 방법(1)
SELECT HOUR, COUNT(*) AS "COUNT"
FROM 
    (SELECT TO_CHAR(DATETIME, 'HH24') AS "HOUR" FROM ANIMAL_OUTS)
WHERE HOUR BETWEEN 9 AND 19
GROUP BY HOUR
ORDER BY HOUR;

-- 방법(2)
SELECT TO_CHAR(DATETIME, 'HH24'), COUNT(*) AS "COUNT"
FROM ANIMAL_OUTS
WHERE TO_CHAR(DATETIME, 'HH24') BETWEEN 9 AND 19
GROUP BY TO_CHAR(DATETIME, 'HH24')
ORDER BY TO_CHAR(DATETIME, 'HH24');