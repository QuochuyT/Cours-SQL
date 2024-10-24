USE COMPTA;

SELECT
    *
FROM
    ARTICLE;

SELECT
    REF, DESIGNATION
FROM
    ARTICLE
WHERE PRIX > 2;

SELECT
    *
FROM
    ARTICLE
WHERE PRIX
    >= 2
    AND PRIX <= 6.25;

SELECT
    *
FROM
    ARTICLE
WHERE
    PRIX BETWEEN 2 AND 6.25;


SELECT
    *
FROM
    ARTICLE
WHERE
    PRIX NOT BETWEEN 2 AND 6.25
    AND ID_FOU = 1
    ORDER BY PRIX DESC;

SELECT * FROM ARTICLE
WHERE ID_FOU = 1
OR ID_FOU = 3;

SELECT * FROM ARTICLE 
WHERE ID_FOU IN (1,3);

SELECT * FROM ARTICLE 
WHERE ID_FOU NOT IN (1,3);

SELECT * FROM BON
WHERE DATE_CMDE BETWEEN '2019-02-01' AND '2019-04-30';

