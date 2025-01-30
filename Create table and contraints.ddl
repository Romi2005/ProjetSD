-- *********************************************
-- * SQL MySQL generation                      
-- *--------------------------------------------
-- * DB-MAIN version: 11.0.2              
-- * Generator date: Sep 20 2021              
-- * Generation date: Wed Dec  6 07:28:51 2023 
-- * LUN file: /home/simal221/Documents/Science des Données 2023 - 2024/Travail de groupe/Semestre1/Intégration de données dans un datawarehouse/Projet/Resultats/Intégration_SAE.lun 
-- * Schema: SCHEMA RELATIONNEL/1 
-- ********************************************* 


-- Database Section
-- ________________ 

-- create database SCHEMA RELATIONNEL;
-- use SCHEMA RELATIONNEL;


-- Tables Section
-- _____________ 

create table MESURE (
     Date datetime not null,
     station char(255) not null,
     typeMesure char(255) not null,
     valeurMesure float(11),
     constraint IDMESURE primary key (Date, station, typeMesure));

create table TYPEDESCRIPTION (
     libelle char(255) not null,
     unite char(255),
     description char(255),
     constraint IDTYPE_DESCRIPTION_ID primary key (libelle));


-- Constraints Section
-- ___________________ 

alter table MESURE add constraint FKdecrire_FK
     foreign key (typeMesure)
     references TYPEDESCRIPTION (libelle);

-- Not implemented
-- alter table TYPEDESCRIPTION add constraint IDTYPE_DESCRIPTION_CHK
--     check(exists(select * from MESURE
--                  where MESURE.typeMesure = libelle)); 


-- Index Section
-- _____________ 

