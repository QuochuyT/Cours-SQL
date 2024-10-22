DROP DATABASE IF EXISTS compta;
CREATE DATABASE IF NOT EXISTS compta;
USE compta;

DROP TABLE IF EXISTS article;
CREATE TABLE IF NOT EXISTS article (
    id INT PRIMARY KEY,
    ref VARCHAR(50),
    designation VARCHAR(50),
    prix DECIMAL(6, 2),
    id_fou INT
);

DROP TABLE IF EXISTS fournisseur;
CREATE TABLE IF NOT EXISTS fournisseur (id INT PRIMARY KEY, nom VARCHAR(50));

DROP TABLE IF EXISTS bon;
CREATE TABLE IF NOT EXISTS bon (
    id INT PRIMARY KEY,
    numero INT,
    date_cmde DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    delai INT,
    id_fou INT
);

DROP TABLE IF EXISTS compo;
CREATE TABLE IF NOT EXISTS compo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_art INT,
    id_bon INT,
    qte INT
);

-- mettre la foreign key de Article
ALTER TABLE
    article
ADD
    CONSTRAINT FOREIGN KEY (id_fou) REFERENCES fournisseur(id);

-- mettre la foreign key de bon
ALTER TABLE
    bon
ADD
    CONSTRAINT FOREIGN KEY (id_fou) REFERENCES fournisseur(id);

-- mettre la foreign key de compo
ALTER TABLE
    compo
ADD
    CONSTRAINT FOREIGN KEY (id_art) REFERENCES article(id);

-- mettre la foreign key de compo
ALTER TABLE
    compo
ADD
    CONSTRAINT FOREIGN KEY (id_bon) REFERENCES bon(id);

-- Insérer les valeurs

INSERT INTO fournisseur (id, nom) VALUES
(1, 'Française d''Imports'),
(2, 'FDM SA'),
(3, 'Dubois & Fils');

INSERT INTO article (id, ref, designation, prix, id_fou) VALUES
(1, 'A01', 'Perceuse P1', 74.99, 1),
(2, 'F01', 'Boulon laiton 4 x 40 mm (sachet de 10)', 2.25, 2),
(3, 'F02', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.45, 2),
(4, 'D01', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.40, 3),
(5, 'A02', 'Meuleuse 125mm', 37.85, 1),
(6, 'D03', 'Boulon acier zingué 4 x 40mm (sachet de 10)', 1.80, 3),
(7, 'A03', 'Perceuse à colonne', 185.25, 1),
(8, 'D04', 'Coffret mêches à bois', 12.25, 3),
(9, 'F03', 'Coffret mêches plates', 6.25, 2),
(10, 'F04', 'Fraises d''encastrement', 8.14, 2);

INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (1, 1, 3, 1, '2019-02-08 09:30:00');
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES
(1, 1, 3),
(5, 1, 4),
(7, 1, 1);

INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (2, 2, 5, 2, '2019-03-02 09:30:00');
INSERT INTO COMPO (ID_ART, ID_BON, QTE) values (2, 2, 25),
(3, 2, 15),
(9, 2, 8),
(10, 2, 11);

INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (3, 3, 2, 3, '2019-04-03 17:30:00');
INSERT INTO COMPO (ID_ART, ID_BON, QTE) values (4, 3, 25),
(6, 3, 40),
(8, 3, 15);

INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (4, 4, 2, 3, '2019-04-05 11:40:00');
INSERT INTO COMPO (ID_ART, ID_BON, QTE) values (4, 4, 10),
(6, 4, 15),
(8, 4, 8);

INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (5, 5, 7, 2, '2019-05-15 14:45:00');
INSERT INTO COMPO (ID_ART, ID_BON, QTE) values (2, 5, 17),
(3, 5, 13),
(10, 5, 9);

INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (6, 6, 0, 1, '2019-06-24 18:55:00');
