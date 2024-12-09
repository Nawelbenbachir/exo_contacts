DROP DATABASEIF EXISTS exo_contact ;
CREATE DATABASE IF NOT EXISTS exo_contact CHARACTER SET utf8 COLLATE utf8_general_ci;
USE exo_contacts;

CREATE TABLE pays(
   iso_3 VARCHAR(3),
   nom VARCHAR(70) NOT NULL,
   iso_2 VARCHAR(2) NOT NULL,
   nationalite VARCHAR(30),
   PRIMARY KEY(iso_3)
);

CREATE TABLE contacts(
   id BIGINT AUTO_INCREMENT,
   nom VARCHAR(70) NOT NULL,
   prenom VARCHAR(50) NOT NULL,
   adresse TEXT,
   cp VARCHAR(20),
   ville VARCHAR(50),
   pays_iso_3 VARCHAR(3) NOT NULL,
   date_de_naissance DATE,
   sexe VARCHAR(20),
   PRIMARY KEY(id),
   FOREIGN KEY(iso_3) REFERENCES pays(iso_3)
);


CREATE TABLE telephone(
   id BIGINT PRIMARY KEY AUTO_INCREMENT,
   id_contact BIGINT ,
   numero VARCHAR(50) NOT NULL,
   type VARCHAR(50),
   FOREIGN KEY(id_contact) REFERENCES contacts(id)
);

insert into contacts ( nom, prenom, adresse, cp, ville, pays_iso_3, date_de_naissance, sexe) values
 ('Ailey', 'Schuster','301 Rue Plaza', 93000, null, 26/02/2000, 'femme' ),
 ('George','Cerez','45 avenue des champs',13000,'Marseille','AFG',20/12/2010,null ),
 ('Amelie','POulain','54 rue du boulevard', null, null, 'ARM', 13/10/1999,null ),
 ('Julien','Dupont','60 rue Colette',null,null,'BLR',05/02/2000,'homme'),
 ('Oriane','Sheinzer', '80 boulevard gambetta',84200,'Carpentras','DZA',07/07/1995, null),
 ('Eric','Dupont',null,null,'Paris' ,'AZE', 16/10/1985,null),
 ('Fabienne','Murs',null,54000,null,'COL',09/09/1995,'femme'),
 ('Mohammed','Salah',null,75000,'PAris','CAN',05/05/2001,'homme'),
 ('Antoine','Rozet', '8 impasse poulette',78000, null,'ARG', 15/15/2001,'homme'),
 ('Julie','Salomon',null,45000,null,'ALB',null,'femme');



INSERT INTO pays (iso_3, nom, iso_2, nationalite ) VALUES 
('AFG','Afghanistan','AF', 'Afghane'),
('ALB','Albanie', 'AL', 'Albanaise'),
('DZA', 'Algerie','DZ','Algérienne'),
( 'AGO', 'Angola','AO',  'Angolaise'),
( 'AZE', 'Azerbaijan','AZ',  'Azerbaïdjanaise'),
( 'ARG', 'Argentine','AR', 'Argentine'),
( 'AUS', 'Australie','AU', 'Australienne'),
('AUT', 'Autriche', 'AT', 'Autrichienne'),
( 'ARM', 'Armenie','AM',  'Arménienne'),
( 'BEL', 'Belgique','BE',  'Belge'),
( 'BTN', 'Bhutan','BT',  'Bhoutane'),
( 'BOL', 'Bolivie','BO', 'Bolivienne'),
( 'BIH', 'Bosnie','BA',  'Bosniaque'),
('BRA', 'Brésil','BR',  'Brésil'),
( 'BGR', 'Bulgarie', 'BG','Bulgare'),
( 'BLR', 'Bielorussie','BY',  'Bielorusse'),
('KHM', 'Cambodge', 'KH', 'Cambodgienne'),
( 'CMR', 'Cameroun','CM',  'Camerounaise'),
( 'CAN', 'Canada','CA',  'Canadienne'),
( 'CHL', 'Chili', 'CL', 'Chilienne'),
( 'CHN', 'Chine','CN',  'Chinoise'),
('COL', 'Colombie','CO',  'Colombienne'),
( 'COG', 'Congo','CG',  'Congolaise'),
( 'CUB', 'Cuba','CU', 'Cubaine'),
( 'CYP', 'Chypre','CY',  'Chypriote'),
( 'CZE', 'République Tchèque','CZ',  ' Tchèque');


INSERT INTO telephone (numero,type ) VALUES 
('0658594650',null),
('0782903277',null),
('0490261312',null),
('0659788545',null),
('074467898',null),
('0632121415',null),
('0784561216',null),
('0658474541',null),
('0786451210',null),
('0659462230',null);


