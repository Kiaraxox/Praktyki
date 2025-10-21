CREATE TABLE KsiazkaZAutorem (
ID int PRIMARY KEY AUTO_INCREMENT,
IDKsiazki int,
IDAutora int,
FOREIGN KEY (IDKsiazki) REFERENCES ksiazki(ID),   
FOREIGN KEY (IDAutora) REFERENCES autorzy(ID)       
);

ALTER TABLE ksiazki ADD ISBN;

ALTER TABLE szczegoloweinformacje DROP COLUMN ISBN;

ALTER TABLE ksiazki DROP FOREIGN KEY ksiazki_ibfk_1;

ALTER TABLE ksiazki DROP COLUMN IDAutora;

DELETE FROM szczegoloweinformacje WHERE ID = 2;

DELETE FROM szczegoloweinformacje WHERE ID = 5;

DELETE FROM szczegoloweinformacje WHERE ID = 8;

DELETE FROM szczegoloweinformacje WHERE IDKsiazki = 12;

DELETE FROM magazyn WHERE IDKsiazki = 2;

DELETE FROM magazyn WHERE IDKsiazki = 5;

DELETE FROM magazyn WHERE IDKsiazki = 8;

DELETE FROM magazyn WHERE IDKsiazki = 12;

ALTER TABLE magazyn DROP FOREIGN KEY magazyn_ibfk_1;

ALTER TABLE szczegoloweinformacje DROP FOREIGN KEY szczegoloweinformacje_ibfk_1;

DELETE FROM ksiazki WHERE ID = 2;

DELETE FROM ksiazki WHERE ID = 5;

DELETE FROM ksiazki WHERE ID = 8;
 
DELETE FROM ksiazki WHERE ID = 12;

UPDATE ksiazki SET Tytul = 'O''Reilly Head First SQL'  Where ID = 10;

UPDATE ksiazki SET ISBN = '978-1-4571-0402-2' WHERE ID = 1;

UPDATE ksiazki SET ISBN = '978-1-4302-5782-0' WHERE ID = 3;

UPDATE ksiazki SET ISBN = '978-1-484201-10-7' WHERE ID = 4;

UPDATE ksiazki SET ISBN = '978-1-484213-78-0' WHERE ID = 6;

UPDATE ksiazki SET ISBN = '978-1-4493-9321-2' WHERE ID = 7; 

UPDATE ksiazki SET ISBN = '978-0-596-52684-9' WHERE ID = 9;

UPDATE ksiazki SET ISBN = '978-0-596-52684-9' WHERE ID = 10;

UPDATE ksiazki SET ISBN = '978-1-484221-89-1' WHERE ID = 11;


INSERT INTO ksiazkazautorem (IDKsiazki, IDAutora) VALUES (1, 1),
(1, 2),
(3, 3),
(4, 4),
(4, 5),
(6, 6),
(7, 7),
(7, 8),
(9, 9),
(10, 9),
(11, 11);

ALTER TABLE SzczegoloweInformacje ADD CONSTRAINT szczegoloweinformacje_ibfk_1 FOREIGN KEY (IDKsiazki) REFERENCES Ksiazki(ID);



ALTER TABLE Magazyn ADD CONSTRAINT magazyn_ibfk_1 FOREIGN KEY (IDKsiazki) REFERENCES Ksiazki(ID);



































