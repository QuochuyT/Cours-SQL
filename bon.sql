USE COMPTA;

-- UPDATE bon 
-- SET DATE_CMDE = '2019-02-08 09:30:00' 
-- WHERE ID = 1;
INSERT INTO
    BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE)
VALUES
    (1, 1, 3, 1, '2019-02-08 09:30:00');

INSERT INTO
    COMPO (ID_ART, ID_BON, QTE)
VALUES
    (1, 1, 3),
    (5, 1, 4),
    (7, 1, 1);

INSERT INTO
    BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE)
VALUES
    (2, 2, 5, 2, '2019-03-02 09:30:00');

INSERT INTO
    COMPO (ID_ART, ID_BON, QTE)
values
    (2, 2, 25),
    (3, 2, 15),
    (9, 2, 8),
    (10, 2, 11);

INSERT INTO
    BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE)
VALUES
    (3, 3, 2, 3, '2019-04-03 17:30:00');

INSERT INTO
    COMPO (ID_ART, ID_BON, QTE)
values
    (4, 3, 25),
    (6, 3, 40),
    (8, 3, 15);

INSERT INTO
    BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE)
VALUES
    (4, 4, 2, 3, '2019-04-05 11:40:00');

INSERT INTO
    COMPO (ID_ART, ID_BON, QTE)
values
    (4, 4, 10),
    (6, 4, 15),
    (8, 4, 8);

INSERT INTO
    BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE)
VALUES
    (5, 5, 7, 2, '2019-05-15 14:45:00');

INSERT INTO
    COMPO (ID_ART, ID_BON, QTE)
values
    (2, 5, 17),
    (3, 5, 13),
    (10, 5, 9);

INSERT INTO
    BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE)
VALUES
    (6, 6, 0, 1, '2019-06-24 18:55:00');