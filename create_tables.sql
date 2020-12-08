CREATE TABLE ETUDIANT
    (
        Num_insc NUMBER(4) CONSTRAINT Num_insc_nn NOT NULL, CONSTRAINT Num_insc_pk PRIMARY KEY(Num_insc),
        Nom_etd CHAR(30),
        Prenom_etd CHAR(30),
        CNE VARCHAR2(30) CONSTRAINT CNE_nn NOT NULL,
        An_etd NUMBER(4),
        EMAIL VARCHAR2(30),
        Num_Tel NUMBER(10),
        ADRESSE VARCHAR2(30),
        Fil_etd CHAR(6),
        Log_in VARCHAR2(30),  
                CONSTRAINT Log_In_fk  
                FOREIGN KEY (Log_In)  
                REFERENCES UTILISATEUR ,
        Password_ VARCHAR2(16),
        Type_Utlisateur CHAR(20)
    );
CREATE TABLE COURS
    (
        Num_Cours NUMBER(10) CONSTRAINT Num_cours_nn NOT NULL, CONSTRAINT Num_cours_pk PRIMARY KEY(Num_Cours),
        Duree_Cours VARCHAR2(10),
        Description_ CHAR(100),
        DATE_DIFF_COURS DATE,
        Semestre NUMBER(2),
        Module_Format CHAR(20),
        Fil_etd CHAR(6)
    );

CREATE TABLE UTILISATEUR
    (
        Log_in VARCHAR2(30) CONSTRAINT Log_in_nn NOT NULL, CONSTRAINT Log_in_pk PRIMARY KEY(Log_In),
        Password_ VARCHAR2(16) CONSTRAINT Password_nn NOT NULL,
        Type_Utlisateur CHAR(9) CONSTRAINT Type_utilisateur_nn NOT NULL
    );

CREATE TABLE FORMAT
    (
        Num_Format NUMBER(10) CONSTRAINT Num_Format_nn NOT NULL, CONSTRAINT Num_Format_pk PRIMARY KEY(Num_Format),
        Nom_Format CHAR(20),
        Prenom_Format CHAR(20),
        Email_Format VARCHAR2(40),
        Adresse_Format VARCHAR2(50),
        Tele_Format NUMBER(10),
        Module_Format CHAR(20),
        Log_in VARCHAR2(30), 
                CONSTRAINT Log_In_fk2  
                FOREIGN KEY (Log_In)  
                REFERENCES UTILISATEUR ,
        Password_ VARCHAR2(16),
        Type_Utlisateur CHAR(9)
    );

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('444', 'Karolina', 'Goodchild', 'kgoodchild0@dion.ne.jp', '15 Burrows Junction', 'kgoodchild0', '6UEBwHUI', 1998,'GI','Student',5212798616,'B5B34C');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('855', 'Hillier', 'Newby', 'hnewby1@nih.gov', '754 Wayridge Park', 'hnewby1', 'Td8yV4Y6clWT', 1997,'IDSD','Student',2540346275,'8D780F');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('466', 'Harland', 'Nealand', 'hnealand2@de.vu', '63544 Cody Pass', 'hnealand2', 'X0DMEC1w', 1987,'TM','Student',2464046641,'E89A35');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('999', 'Wilfred', 'Tonbridge', 'wtonbridge3@weebly.com', '54 Anderson Road', 'wtonbridge3', 'ff1MrleV4', 1991,'GODT','Student',5530090440,'7B520A');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('728', 'Ariela', 'Buffy', 'abuffy4@aboutads.info', '48 Mosinee Point', 'abuffy4', 'kGeZvbF4U9C', 2007,'TM','Student',7360407845,'E505DD');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('923', 'Fae', 'Cosgreave', 'fcosgreave5@wordpress.org', '5167 Moulton Point', 'fcosgreave5', 'NMMUxTw', 1992,'GI','Student',4770343630,'B1E72F');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('836', 'Heindrick', 'Fortnam', 'hfortnam6@cmu.edu', '47 Lake View Court', 'hfortnam6', 'mCg3o9', 2000,'GE','Student',3856803168,'65633C');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('696', 'Brandy', 'Heggman', 'bheggman7@admin.ch', '7 Spaight Terrace', 'bheggman7', '26kLogO92S', 2000,'GODT','Student',8343215200,'D08C4A');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('267', 'Jannel', 'McAusland', 'jmcausland8@mit.edu', '9043 Menomonie Drive', 'jmcausland8', 'u5LxQjD8D6U6', 2011,'GE','Student',6470694782,'933C48');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('224', 'Sancho', 'Dugall', 'sdugall9@tripod.com', '4356 Becker Crossing', 'sdugall9', 'P0qwItV', 1993,'GODT','Student',0900276399,'9506A4');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('930', 'Lauretta', 'Tuxwell', 'ltuxwella@google.com.br', '1 Sugar Road', 'ltuxwella', 'RKyF4Em2f', 2003,'GE','Student',1646010142,'7121E8');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('401', 'Lauretta', 'Goshawk', 'lgoshawkb@cargocollective.com', '01331 Oak Valley Drive', 'lgoshawkb', '3O1aK0DImV1', 2005,'GI','Student',5715743502,'4B6067');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('789', 'Ringo', 'Cashin', 'rcashinc@wunderground.com', '70098 Granby Plaza', 'rcashinc', 'DXCf6jzaQWqq', 2006,'IDSD','Student',5006445665,'9DEAA5');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('289', 'Nyssa', 'Durdle', 'ndurdled@house.gov', '7249 Eliot Court', 'ndurdled', 'wL9qBhR', 2006,'TM','Student',6763484205,'85381A');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('166', 'Whitaker', 'Lankham', 'wlankhame@microsoft.com', '28 Tennyson Pass', 'wlankhame', 'dxnukgn', 2005,'IDSD','Student',3851856493,'53000D');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('238', 'Fulton', 'Arnould', 'farnouldf@taobao.com', '267 Ridgeway Junction', 'farnouldf', 'M2TFwu', 1998,'TM','Student',6962046639,'A08A05');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('988', 'Estel', 'Dewitt', 'edewittg@edublogs.org', '640 Paget Terrace', 'edewittg', 'vfTlOUFEjLPV', 2011,'GI','Student',3831076993,'810E57');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('242', 'Dorey', 'MacRannell', 'dmacrannellh@prlog.org', '6 Badeau Trail', 'dmacrannellh', 'kVuhDdG', 2005,'GODT','Student',3927139378,'0DD03B');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('390', 'Rosetta', 'Phillimore', 'rphillimorei@shinystat.com', '2197 Little Fleur Avenue', 'rphillimorei', '82ytBqH6x', 2003,'GE','Student',9946469734,'2BB2F8');
insert into ETUDIANT ( Num_insc, Prenom_etd, nom_etd, Email, Adresse, Log_In, Password_, An_etd,Fil_etd,Type_Utlisateur,Num_Tel,CNE) values ('900', 'Cecelia', 'Mendel', 'cmendelj@deviantart.com', '2789 Pleasure Road', 'cmendelj', '9Znprz', 1993,'IDSD','Student',9946469734,'FC17D4');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('kgoodchild0', '6UEBwHUI','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('hnewby1', 'Td8yV4Y6clWT','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('hnealand2', 'X0DMEC1w','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('wtonbridge3', 'ff1MrleV4','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('abuffy4', 'kGeZvbF4U9C','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ( 'fcosgreave5', 'NMMUxTw','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('hfortnam6', 'mCg3o9','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ( 'bheggman7', '26kLogO92S','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('jmcausland8', 'u5LxQjD8D6U6','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('sdugall9', 'P0qwItV','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('ltuxwella', 'RKyF4Em2f','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('lgoshawkb', '3O1aK0DImV1','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('rcashinc', 'DXCf6jzaQWqq','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('ndurdled', 'wL9qBhR','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('wlankhame', 'dxnukgn','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('farnouldf', 'M2TFwu','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('edewittg', 'vfTlOUFEjLPV','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('dmacrannellh', 'kVuhDdG','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ( 'rphillimorei', '82ytBqH6x','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('cmendelj', '9Znprz','Student');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('W044 ', 'KRF15BIT1KF ', 'Teacher');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ( 'A683 ', 'DEK91UWL8UL ', 'Teacher');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('A869 ', 'XLL13CRW3RN ', 'Teacher');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('G147 ', 'PBO69YDD2PH ', 'Teacher');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ( 'A259 ', 'DFX98UNY4CK ', 'Teacher');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('V947 ', 'XRA75QQR8BW ', 'Teacher');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('W071 ', 'OPV26WMA1PY ', 'Teacher');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ( 'A174 ', 'TXM71MRX1QM ', 'Teacher');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ( 'H577 ', 'PFO80GBF7ET ', 'Teacher');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('P389 ', 'UIE50UOT7UF ' ,'Teacher');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('Q657','HGQ87RNQ8DE','Teacher');
insert into Utilisateur (Log_In,Password_,Type_Utlisateur) values ('admin','admin','Admin');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('07/05/2020', 'Customizable cohesive project', 393344661,'1h30',01,'SI','GI');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('07/07/2020', 'Diverse bottom-line architecture', 873899393,'3h00',03,'Business English','TM');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('05/01/2020', 'Mandatory intermediate capacity', 728743845,'1h30',04,'Project managment','GI');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('01/04/2020', 'Exclusive dedicated emulation', 646345701,'3h00',02,'Communication','GE');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('07/04/2020', 'Implemented well-modulated function', 143650068,'3h00',05,'Web dev','IDSD');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('06/07/2020', 'Persistent systematic model', 110494052,'3h00',01,'Spanish','GODT');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('05/04/2020', 'Synergistic user-facing extranet', 476026953,'1h30',04,'Business English','GODT');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('02/05/2020', 'Distributed intermediate projection', 820371429,'3h00',03,'Web dev','GI');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('09/05/2020', 'Re-contextualized tangible encoding', 868330998,'1h30',02,'Communication','IDSD');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('05/03/2020', 'Realigned dedicated hierarchy', 372728267,'1h30',05,'Networks','GI');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('10/10/2020', 'Mandatory intermediate hierarchy', 953350031,'1h30',06,'Economics','TM');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('04/06/2020', 'Synergistic real-time utilisation', 812251335,'3h00',06,'Advanced_Database','IDSD');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('02/02/2020', 'Vision-oriented fresh-thinking capacity', 184200668,'1h30',01,'Communication','GI');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('06/10/2020', 'Seamless discrete paradigm', 720710420,'3h00',02,'Networks','GI');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('07/05/2020', 'Customizable cohesive project', 395344661,'1h30',01,'Advanced_Database','GI');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('07/07/2019', 'Diverse bottom_line architecture', 773899393,'3h00',03,'Hotel managment','GODT');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('05/01/2019', 'Mandatory_intermediate capacity', 528743845,'1h30',04,'Economics','GODT');
insert into COURS (DATE_DIFF_COURS, Description_, Num_Cours,Duree_Cours,Semestre,Module_Format,Fil_etd) values ('01/04/2019', 'Exclusive dedicated emulation', 246345701,'3h00',02,'fluid mechanics','GE');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO FORMAT ( Num_Format , Nom_Format , Prenom_Format , Email_Format , Tele_Format , Adresse_Format , Log_in , Password_ ,Type_Utlisateur,Module_Format ) VALUES (2,'Burch ', 'Cheyenne ', 'Sed@quisurnaNunc.edu ', '0711260182 ', 'P.O. Box 142, 5489 Vivamus Avenue ', 'P389 ', 'UIE50UOT7UF ' ,'Teacher','SI');
INSERT INTO FORMAT ( Num_Format , Nom_Format , Prenom_Format , Email_Format , Tele_Format , Adresse_Format , Log_in , Password_,Type_Utlisateur,Module_Format ) VALUES (1,'Foster ', 'Kiayada ', 'eros.enim@volutpatNullafacilisis.edu ', '0773081577 ', 'Ap #829-4739 Hendrerit Av. ', 'H577 ', 'PFO80GBF7ET ', 'Teacher','Business English');
INSERT INTO FORMAT ( Num_Format , Nom_Format , Prenom_Format , Email_Format , Tele_Format , Adresse_Format , Log_in , Password_ ,Type_Utlisateur,Module_Format) VALUES (8,'Terry ', 'McKenzie ', 'quis.massa@semmolestie.org ', '0933611052 ', '5446 Odio St. ', 'A174 ', 'TXM71MRX1QM ', 'Teacher','Communication');
INSERT INTO FORMAT ( Num_Format , Nom_Format , Prenom_Format , Email_Format , Tele_Format , Adresse_Format , Log_in , Password_ ,Type_Utlisateur,Module_Format) VALUES (4,'Jarvis ', 'Thane ', 'dictum@Cumsociis.co.uk ', '0402673106 ', 'P.O. Box 721, 3353 Vehicula Avenue ', 'W071 ', 'OPV26WMA1PY ', 'Teacher','Networks');
INSERT INTO FORMAT ( Num_Format , Nom_Format , Prenom_Format , Email_Format , Tele_Format , Adresse_Format , Log_in , Password_ ,Type_Utlisateur,Module_Format) VALUES (5,'Norris ', 'Keefe ', 'in.magna@Aliquamauctor.net ', '0972583276', '7754 Litora Avenue ', 'V947 ', 'XRA75QQR8BW ', 'Teacher','Economics');
INSERT INTO FORMAT ( Num_Format , Nom_Format , Prenom_Format , Email_Format , Tele_Format , Adresse_Format , Log_in , Password_ ,Type_Utlisateur,Module_Format) VALUES (10,'Dickson ', 'Bree ', 'imperdiet@anteblandit.edu ', '0395144934', '2045 Lectus, Street ', 'A259 ', 'DFX98UNY4CK ', 'Teacher','Web dev');
INSERT INTO FORMAT ( Num_Format , Nom_Format , Prenom_Format , Email_Format , Tele_Format , Adresse_Format , Log_in , Password_ ,Type_Utlisateur,Module_Format) VALUES (3,'Dominguez ', 'Gabriel ', 'metus.In@Proin.net ', '0810507528 ', 'Ap #343-5157 Cursus. Av. ', 'G147 ', 'PBO69YDD2PH ', 'Teacher','Hotel managment');
INSERT INTO FORMAT ( Num_Format , Nom_Format , Prenom_Format , Email_Format , Tele_Format , Adresse_Format , Log_in , Password_ ,Type_Utlisateur,Module_Format) VALUES (9,'Hammond ', 'Samuel ', 'Phasellus.vitae.mauris@justo.net ', '0251230072 ', '253-2060 Ornare, Av. ', 'A869 ', 'XLL13CRW3RN ', 'Teacher','Spanish');
INSERT INTO FORMAT ( Num_Format , Nom_Format , Prenom_Format , Email_Format , Tele_Format , Adresse_Format , Log_in , Password_ ,Type_Utlisateur,Module_Format) VALUES (6,'Herman ', 'Clementine ', 'Fusce.fermentum@et.org ', '0887409839', '350-4316 Malesuada. Road ', 'A683 ', 'DEK91UWL8UL ', 'Teacher','Project managment');
INSERT INTO FORMAT ( Num_Format , Nom_Format , Prenom_Format , Email_Format , Tele_Format , Adresse_Format , Log_in , Password_ ,Type_Utlisateur,Module_Format) VALUES (11,'Wheeler ', 'Bruce ', 'consequat.auctor@atfringilla.org ', '0748053221', 'P.O. Box 874, 9548 Dui Avenue ', 'W044 ', 'KRF15BIT1KF ', 'Teacher','Advanced_Database');
INSERT INTO FORMAT ( Num_Format , Nom_Format , Prenom_Format , Email_Format , Tele_Format , Adresse_Format , Log_in , Password_ ,Type_Utlisateur,Module_Format) VALUES (7,'Mcbride','Macaulay','semper.lectus@laoreetposuereenim.ca','0773405321','075 Non, Avenue','Q657','HGQ87RNQ8DE','Teacher','fluid mechanics');
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//afficher tous les etudiants de la filiere GI
Select * from etudiant where Fil_etd = 'GI'; 
//afficher tous les etudiants de la filiere IDSD
Select * from etudiant where Fil_etd = 'IDSD';
//afficher tous les etudiants de la filiere TM
Select * from etudiant where Fil_etd = 'TM';
//afficher tous les etudiants de la filiere GODT
Select * from etudiant where Fil_etd = 'GODT';
//afficher tous les etudiants de la filiere GE
Select * from etudiant where Fil_etd = 'GE';
//le nombre total d’étudiants
SELECT count(*) FROM ETUDIANT;
//Les informations relatives aux étudiants ,selon l’ordre alphabétique croissant du nom
SELECT * FROM ETUDIANT ORDER BY Nom_Etd ASC
//Les noms et les numeros des enseignants de la filiere GI et IDSD 
SELECT F.Num_Format, F. Nom_Format , C.Fil_etd FROM FORMAT F INNER JOIN COURS C
ON C.Module_Format=F.Module_Format WHERE C.Fil_etd='GI';
//Le nombre d’enseignants de la matière dont le nom est ‘GODT’ :
SELECT COUNT(*) FROM FORMAT F INNER JOIN COURS C ON C.Module_Format=F.Module_Format WHERE C.Fil_etd='GODT';