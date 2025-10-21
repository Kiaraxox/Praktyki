USE Ksiegarnia;
CREATE TABLE Autorzy (
ID int PRIMARY KEY AUTO_INCREMENT,
Imie VARCHAR(20),
Nazwisko VARCHAR(25)
);
CREATE TABLE Ksiazki (
ID int PRIMARY KEY AUTO_INCREMENT,
Tytul VARCHAR(100),
IDAutora int, 
FOREIGN KEY (IDAutora) REFERENCES Autorzy(ID)
);
CREATE TABLE SzczegoloweInformacje (
ID int PRIMARY KEY AUTO_INCREMENT,
IDKsiazki int,
ISBN VARCHAR(17),
Opis VARCHAR(200),
Okladka VARCHAR(100),
FOREIGN KEY (IDKsiazki) REFERENCES Ksiazki(ID)    
);
CREATE TABLE Magazyn (
ID int PRIMARY KEY AUTO_INCREMENT,
IDKsiazki int,
Cena DECIMAL(5, 2),
Ilosc int,
FOREIGN KEY (IDKsiazki) REFERENCES Ksiazki(ID)
);
