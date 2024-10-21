DROP DATABASE IF EXISTS COMPTA;

CREATE DATABASE IF NOT EXISTS COMPTA;

USE COMPTA;

DROP TABLE IF EXISTS ARTICLE;

CREATE TABLE
    IF NOT EXISTS ARTICLE (
        id INT PRIMARY KEY,
        ref VARCHAR(50),
        designation VARCHAR(50),
        prix DECIMAL(7, 2),
        id_fou INT
    );

DROP TABLE IF EXISTS FOURNISSEUR;

CREATE TABLE
    IF NOT EXISTS FOURNISSEUR (id INT PRIMARY KEY, nom VARCHAR(25));

DROP TABLE IF EXISTS BON;

CREATE TABLE
    IF NOT EXISTS BON (
        id INT PRIMARY KEY,
        numero INT,
        date_cmde DATETIME,
        delai INT,
        id_fou INT
    );

DROP TABLE IF EXISTS COMPO;

CREATE TABLE
    IF NOT EXISTS COMPO (
        id INT PRIMARY KEY,
        id_art INT,
        id_bon INT,
        qte INT
    );

ALTER TABLE ARTICLE ADD CONSTRAINT FOREIGN KEY (id_fou) REFERENCES FOURNISSEUR (id);

ALTER TABLE BON ADD CONSTRAINT FOREIGN KEY (id_fou) REFERENCES FOURNISSEUR (id);

ALTER TABLE COMPO ADD CONSTRAINT FOREIGN KEY (id_art) REFERENCES ARTICLE (id);

ALTER TABLE COMPO ADD CONSTRAINT FOREIGN KEY (id_bon) REFERENCES BON (id);