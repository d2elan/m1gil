-----------------------
          TP1
-----------------------

> Commandes utilisées pour la création de la base de données :

CREATE TABLE PILOTE (
	PLNUM int primary key, 
	PLNOM varchar(32), 
	PLPRENOM varchar(32), 
	VILLE varchar(32), 
	SALAIRE int
);

CREATE TABLE AVION (
  AVNUM int primary key,
  AVNOM varchar(32),
  CAPACITE int,
  LOCALISATION varchar(32)
);

CREATE TABLE VOL (
  VOLNUM int primary key,
  PLNUM int,
  AVNUM int,
  VILLEDEP varchar(32),
  VILLEARR varchar(32),
  HEUREDEP varchar(4),
  HEUREARR varchar(4)
);

ALTER TABLE VOL ADD CONSTRAINT fk_plnum FOREIGN KEY (PLNUM) REFERENCES PILOTE(PLNUM);
ALTER TABLE VOL ADD CONSTRAINT fk_avnum FOREIGN KEY (AVNUM) REFERENCES AVION(AVNUM);


> Remplissage :

INSERT INTO PILOTE VALUES (1, 'MIRANDA', 'SERGE', 'PARIS', 2600);
INSERT INTO PILOTE VALUES (2, 'LETHANH', 'NAHN', 'TOULOUSE', 2100);
INSERT INTO PILOTE VALUES (3, 'TALADOIRE', 'GILLES', 'NICE', 1800);
INSERT INTO PILOTE VALUES (4, 'CHARBONNIER', 'ANNETTE', 'PARIS', 1700);
INSERT INTO PILOTE VALUES (5, 'REY', 'CHRISTOPHE', 'TOULOUSE', 1900);
INSERT INTO PILOTE VALUES (6, 'CHARBONNIER', 'FABIEN', 'PARIS', 1800);
INSERT INTO PILOTE VALUES (7, 'PENAULD', 'PIERRE', 'NICE', 1700);
INSERT INTO PILOTE VALUES (8, 'FOUILHOUX', 'PIERRE', 'LYON', 1500);
INSERT INTO PILOTE VALUES (9, 'GANNAT', 'CHRISTOPHE', null, 1800);
INSERT INTO PILOTE VALUES (10, 'GADAIX', 'SONIA', 'PARIS', 2000);

INSERT INTO AVION VALUES (1, 'A300', 300, 'NICE');
INSERT INTO AVION VALUES (2, 'A310', 300, 'NICE');
INSERT INTO AVION VALUES (3, 'B707', 250, 'PARIS');
INSERT INTO AVION VALUES (4, 'A300', 280, 'LYON');
INSERT INTO AVION VALUES (5, 'CONCORDE', 160, 'NICE');
INSERT INTO AVION VALUES (6, 'B747', 460, 'PARIS');
INSERT INTO AVION VALUES (7, 'B707', 250, 'PARIS');
INSERT INTO AVION VALUES (8, 'A310', 300, 'TOULOUSE');
INSERT INTO AVION VALUES (9, 'MERCURE', 180, 'LYON');
INSERT INTO AVION VALUES (10, 'CONCORDE', 160, 'PARIS');

INSERT INTO VOL VALUES (100, 1, 1, 'NICE', 'TOULOUSE', '1100', '1230');
INSERT INTO VOL VALUES (101, 1, 8, 'PARIS', 'TOULOUSE', '1700', '1830');
INSERT INTO VOL VALUES (102, 2, 1, 'TOULOUSE', 'LYON', '1400', '1600');
INSERT INTO VOL VALUES (103, 5, 3, 'TOULOUSE', 'LYON', '1800', '2000');
INSERT INTO VOL VALUES (104, 9, 1, 'PARIS', 'NICE', '0645', '0815');
INSERT INTO VOL VALUES (105, 10, 2, 'LYON', 'NICE', '1100', '1200');
INSERT INTO VOL VALUES (106, 1, 4, 'PARIS', 'LYON', '0800', '0900');
INSERT INTO VOL VALUES (107, 8, 4, 'NICE', 'PARIS', '0715', '0845');
INSERT INTO VOL VALUES (108, 1, 8, 'NANTES', 'LYON', '0900', '1530');
INSERT INTO VOL VALUES (109, 8, 2, 'NICE', 'PARIS', '1215', '1345');
INSERT INTO VOL VALUES (110, 9, 2, 'PARIS', 'LYON', '1500', '1600');
INSERT INTO VOL VALUES (111, 1, 2, 'LYON', 'NANTES', '1630', '2000');
INSERT INTO VOL VALUES (112, 4, 5, 'NICE', 'LENS', '1100', '1400');
INSERT INTO VOL VALUES (113, 3, 5, 'LENS', 'PARIS', '1500', '1600');
INSERT INTO VOL VALUES (114, 8, 9, 'PARIS', 'TOULOUSE', '1700', '1800');
INSERT INTO VOL VALUES (115, 7, 5, 'PARIS', 'TOULOUSE', '1800', '1900');


> Commandes réponses aux questions :

1) SELECT * FROM PILOTE;

     PLNUM PLNOM			    PLPRENOM
---------- -------------------------------- --------------------------------
VILLE				    SALAIRE
-------------------------------- ----------
	 1 MIRANDA			    SERGE
PARIS				       2600

	 2 LETHANH			    NAHN
TOULOUSE			       2100

	 3 TALADOIRE			    GILLES
NICE				       1800

	 4 CHARBONNIER			    ANNETTE
PARIS				       1700

	 5 REY				    CHRISTOPHE
TOULOUSE			       1900

	 6 CHARBONNIER			    FABIEN
PARIS				       1800

	 7 PENAULD			    PIERRE
NICE				       1700

	 8 FOUILHOUX			    PIERRE
LYON				       1500

	 9 GANNAT			    CHRISTOPHE
				       1800

	10 GADAIX			    SONIA
PARIS				       2000


2) SELECT PLNOM, VILLE FROM PILOTE;

PLNOM				 VILLE
-------------------------------- --------------------------------
MIRANDA 			 PARIS
LETHANH 			 TOULOUSE
TALADOIRE			 NICE
CHARBONNIER			 PARIS
REY				 TOULOUSE
CHARBONNIER			 PARIS
PENAULD 			 NICE
FOUILHOUX			 LYON
GANNAT
GADAIX				 PARIS

3) SELECT PLNUM, PLNOM FROM PILOTE;

     PLNUM PLNOM
---------- --------------------------------
	 1 MIRANDA
	 2 LETHANH
	 3 TALADOIRE
	 4 CHARBONNIER
	 5 REY
	 6 CHARBONNIER
	 7 PENAULD
	 8 FOUILHOUX
	 9 GANNAT
	10 GADAIX

4) SELECT DISTINCT VILLEDEP FROM VOL;

VILLEDEP
--------------------------------
TOULOUSE
LYON
NICE
PARIS
NANTES
LENS

5) SELECT DISTINCT PLNOM FROM PILOTE WHERE VILLE='PARIS';

PLNOM
--------------------------------
CHARBONNIER
GADAIX
MIRANDA

6) SELECT DISTINCT PLNOM FROM PILOTE WHERE SALAIRE>=2500;

PLNOM
--------------------------------
MIRANDA

7) SELECT DISTINCT PLNOM FROM PILOTE WHERE VILLE IS NULL;

PLNOM
--------------------------------
GANNAT

8) SELECT * FROM AVION WHERE AVNOM='A310' OR AVNOM='A320' OR AVNOM='A330' OR AVNOM='A340';

     AVNUM AVNOM			      CAPACITE
---------- -------------------------------- ----------
LOCALISATION
--------------------------------
	 2 A310 				   300
NICE

	 8 A310 				   300
TOULOUSE

9) SELECT DISTINCT PLNOM FROM PILOTE WHERE 2000 <= SALAIRE AND SALAIRE <= 2500;

PLNOM
--------------------------------
GADAIX
LETHANH

10) SELECT DISTINCT CAPACITE FROM AVION WHERE AVNOM LIKE 'A%';

  CAPACITE
----------
       280
       300

11) SELECT DISTINCT AVNOM FROM AVION WHERE AVNOM<>'A310' AND AVNOM<>'A320' AND AVNOM<>'A330' AND AVNOM<>'A340';

AVNOM
--------------------------------
A300
B747
MERCURE
B707
CONCORDE

12) SELECT * FROM VOL WHERE VILLEDEP='NICE' AND VILLEARR='PARIS';

    VOLNUM	PLNUM	   AVNUM VILLEDEP
---------- ---------- ---------- --------------------------------
VILLEARR			 HEUR HEUR
-------------------------------- ---- ----
       107	    8	       4 NICE
PARIS				 0715 0845

       109	    8	       2 NICE
PARIS				 1215 1345

13) SELECT * FROM VOL WHERE HEUREARR <= &VAL;

Avec VAL = '1400' :

    VOLNUM	PLNUM	   AVNUM VILLEDEP
---------- ---------- ---------- --------------------------------
VILLEARR			 HEUR HEUR
-------------------------------- ---- ----
       100	    1	       1 NICE
TOULOUSE			 1100 1230

       104	    9	       1 PARIS
NICE				 0645 0815

       105	   10	       2 LYON
NICE				 1100 1200


    VOLNUM	PLNUM	   AVNUM VILLEDEP
---------- ---------- ---------- --------------------------------
VILLEARR			 HEUR HEUR
-------------------------------- ---- ----
       106	    1	       4 PARIS
LYON				 0800 0900

       107	    8	       4 NICE
PARIS				 0715 0845

       109	    8	       2 NICE
PARIS				 1215 1345

       112	    4	       5 NICE
LENS				 1100 1400

14) SELECT AVG(SALAIRE) FROM PILOTE WHERE VILLE = 'PARIS';

AVG(SALAIRE)
------------
	2025

15) SELECT COUNT(*) FROM VOL WHERE VILLEDEP='PARIS';

  COUNT(*)
----------
	 6

16) SELECT PLNOM FROM PILOTE WHERE PLNUM IN (
      SELECT PLNUM FROM VOL WHERE VILLEDEP='PARIS' AND AVNUM IN (
        SELECT DISTINCT AVNUM FROM AVION WHERE AVNOM LIKE 'A%'));
        
PLNOM
--------------------------------
MIRANDA
GANNAT
        
17) SELECT * FROM AVION WHERE LOCALISATION = (SELECT LOCALISATION FROM AVION WHERE AVNUM = 3);

     AVNUM AVNOM			      CAPACITE
---------- -------------------------------- ----------
LOCALISATION
--------------------------------
	 3 B707 				   250
PARIS

	 6 B747 				   460
PARIS

	 7 B707 				   250
PARIS

	10 CONCORDE				   160
PARIS

18) SELECT * FROM PILOTE WHERE SALAIRE >= (SELECT AVG(SALAIRE) FROM PILOTE);

     PLNUM PLNOM			    PLPRENOM
---------- -------------------------------- --------------------------------
VILLE				    SALAIRE
-------------------------------- ----------
	 1 MIRANDA			    SERGE
PARIS				       2600

	 2 LETHANH			    NAHN
TOULOUSE			       2100

	 5 REY				    CHRISTOPHE
TOULOUSE			       1900

	10 GADAIX			    SONIA
PARIS				       2000

19) SELECT PLNOM FROM PILOTE WHERE PLNUM IN (SELECT DISTINCT PLNUM FROM VOL WHERE VILLEDEP='PARIS');

PLNOM
--------------------------------
MIRANDA
PENAULD
FOUILHOUX
GANNAT

20) SELECT * FROM PILOTE WHERE VILLE='NICE' AND SALAIRE >= (SELECT MAX(SALAIRE) FROM PILOTE WHERE VILLE = 'PARIS');

no rows selected

21) SELECT * FROM PILOTE WHERE VILLE='NICE' AND SALAIRE >= (SELECT MIN(SALAIRE) FROM PILOTE WHERE VILLE = 'PARIS');

     PLNUM PLNOM			    PLPRENOM
---------- -------------------------------- --------------------------------
VILLE				    SALAIRE
-------------------------------- ----------
	 3 TALADOIRE			    GILLES
NICE				       1800

	 7 PENAULD			    PIERRE
NICE				       1700

22) CREATE VIEW MIRANDA AS SELECT * FROM PILOTE WHERE PLNOM='MIRANDA' WITH READ ONLY; 
    SELECT * FROM PILOTE WHERE VILLE = (SELECT VILLE FROM MIRANDA) AND SALAIRE = (SELECT SALAIRE FROM MIRANDA);

     PLNUM PLNOM			    PLPRENOM
---------- -------------------------------- --------------------------------
VILLE				    SALAIRE
-------------------------------- ----------
	 1 MIRANDA			    SERGE
PARIS				       2600

23) SELECT * FROM PILOTE WHERE VILLE='PARIS' ORDER BY SALAIRE DESC, PLNOM; 

     PLNUM PLNOM			    PLPRENOM
---------- -------------------------------- --------------------------------
VILLE				    SALAIRE
-------------------------------- ----------
	 1 MIRANDA			    SERGE
PARIS				       2600

	10 GADAIX			    SONIA
PARIS				       2000

	 6 CHARBONNIER			    FABIEN
PARIS				       1800

	 4 CHARBONNIER			    ANNETTE
PARIS				       1700

24) SELECT PLNUM, COUNT(*) FROM VOL GROUP BY PLNUM ORDER BY PLNUM;
    
     PLNUM	   NB
---------- ----------
	 1	    5
	 2	    1
	 3	    1
	 4	    1
	 5	    1
	 7	    1
	 8	    3
	 9	    2
	10	    1

25) SELECT PLNUM, AVNUM, COUNT(*) FROM VOL GROUP BY PLNUM, AVNUM ORDER BY PLNUM, AVNUM;

     PLNUM	AVNUM	COUNT(*)
---------- ---------- ----------
	 1	    1	       1
	 1	    2	       1
	 1	    4	       1
	 1	    8	       2
	 2	    1	       1
	 3	    5	       1
	 4	    5	       1
	 5	    3	       1
	 7	    5	       1
	 8	    2	       1
	 8	    4	       1
	 8	    9	       1
	 9	    1	       1
	 9	    2	       1
	10	    2	       1
  
26) CREATE VIEW NB_VOLS AS SELECT PLNUM, COUNT(*) AS NB FROM VOL GROUP BY PLNUM WITH READ ONLY;
    SELECT * FROM NB_VOLS WHERE NB >= 5;

PLNUM	       NB
---------- ----------
	 1	    5

27) SELECT PLNOM FROM PILOTE WHERE PLNUM IN (SELECT PLNUM FROM NB_VOLS WHERE NB >= 5);

PLNOM
--------------------------------
MIRANDA

28) SELECT * FROM AVION WHERE CAPACITE >= 250 OR LOCALISATION='PARIS';

     AVNUM AVNOM			      CAPACITE
---------- -------------------------------- ----------
LOCALISATION
--------------------------------
	 1 A300 				   300
NICE

	 2 A310 				   300
NICE

	 3 B707 				   250
PARIS

	 4 A300 				   280
LYON

	 6 B747 				   460
PARIS

	 7 B707 				   250
PARIS

	 8 A310 				   300
TOULOUSE

	10 CONCORDE				   160
PARIS

29) SELECT PLNUM FROM VOL WHERE AVNUM = 2 INTERSECT SELECT PLNUM FROM VOL WHERE AVNUM = 4;

     PLNUM
----------
	 1
	 8

30) SELECT PLNUM FROM VOL WHERE AVNUM = 2 UNION SELECT PLNUM FROM VOL WHERE AVNUM = 4;

     PLNUM
----------
	 1
	 8
	 9
	10

31) SELECT PLNUM FROM VOL WHERE AVNUM = 2 MINUS SELECT PLNUM FROM VOL WHERE AVNUM = 4; 

     PLNUM
----------
	 9
	10

32) CREATE VIEW PLANES_BY_PILOTE AS SELECT DISTINCT PLNUM, AVNUM FROM VOL WITH READ ONLY;
    SELECT PLNUM FROM PLANES_BY_PILOTE GROUP BY PLNUM HAVING COUNT(*) = (SELECT COUNT (*) FROM AVION);

no rows selected

33) CREATE VIEW A310 AS SELECT AVNUM FROM AVION WHERE AVNOM='A310' WITH READ ONLY;
    SELECT DISTINCT PLNUM FROM VOL WHERE AVNUM IN (SELECT AVNUM FROM A310)
    GROUP BY PLNUM HAVING COUNT(DISTINCT AVNUM) = (SELECT COUNT(*) FROM A310);

     PLNUM
----------
	 1
  

> Suppression des vues déclarées précedemment

DROP VIEW MIRANDA;
DROP VIEW NB_VOLS;
DROP VIEW PLANES_BY_PILOTE;
DROP VIEW A310;