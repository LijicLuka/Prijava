DROP DATABASE IF EXISTS prijava;

CREATE DATABASE prijava;

USE prijava;

CREATE TABLE osoba (
    sifra INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ime VARCHAR(50),
    prezime VARCHAR(50),
    broj_mob FLOAT(30),
    kartica VARCHAR(20),
    uloga VARCHAR(50)
);

CREATE TABLE prijava (
    sifra INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    osoba INT NOT NULL,
    vrijeme TIME,
    vrsta INT NOT NULL,
    uredaj INT NOT NULL
);

CREATE TABLE vrsta (
    sifra INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    naziv VARCHAR(50)
);

CREATE TABLE uredaj (
    sifra INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    naziv VARCHAR(50)
);

ALTER TABLE prijava
ADD FOREIGN KEY (osoba)
REFERENCES osoba(sifra);

ALTER TABLE prijava
ADD FOREIGN KEY (uredaj)
REFERENCES uredaj(sifra);

ALTER TABLE prijava
ADD FOREIGN KEY (vrsta)
REFERENCES vrsta(sifra);

INSERT INTO osoba (ime, prezime, broj_mob, kartica, uloga) 
VALUES 
('Ivana', 'Babić', 0951234567, '00260', 'radnik'),
('Ante', 'Kovač', 0912345678, '00261', 'radnik'),
('Maja', 'Pavić', 0987654321, '00262', 'menadžer'),
('Igor', 'Novak', 0954321098, '00263', 'menadžer'),
('Tina', 'Hrvaćanin', 0976543210, '00264', 'radnik'),
('Luka', 'Horvat', 0954321098, '00265', 'radnik'),
('Sanja', 'Jurić', 0912345678, '00266', 'menadžer'),
('Stjepan', 'Matić', 0976543210, '00267', 'direktor'),
('Petar', 'Kovačević', 0912345678, '00268', 'radnik'),
('Nina', 'Horvat', 0954321098, '00269', 'radnik'),
('Karlo', 'Novak', 0987654321, '00270', 'menadžer'),
('Ivana', 'Pavić', 0976543210, '00271', 'radnik'),
('Borna', 'Jurić', 0954321098, '00272', 'radnik'),
('Lara', 'Matić', 0912345678, '00273', 'menadžer'),
('Filip', 'Babić', 0987654321, '00274', 'radnik'),
('Lea', 'Horvat', 0951234567, '00275', 'direktor'),
('Ivan', 'Kovačević', 0951234567, '00276', 'radnik'),
('Elena', 'Matić', 0912345678, '00277', 'menadžer'),
('Marko', 'Pavić', 0954321098, '00278', 'radnik'),
('Ana', 'Kovač', 0976543210, '00279', 'radnik');

-- Unesite podatke u tablicu "vrsta":
INSERT INTO vrsta (naziv) VALUES ('ručak');
INSERT INTO vrsta (naziv) VALUES ('sastanak');
INSERT INTO vrsta (naziv) VALUES ('odmor');
INSERT INTO vrsta (naziv) VALUES ('doručak');

-- Unesite podatke u tablicu "uredaj":
INSERT INTO uredaj (naziv) VALUES ('računalo');
INSERT INTO uredaj (naziv) VALUES ('mobilni uređaj');
INSERT INTO uredaj (naziv) VALUES ('radni stol');
INSERT INTO uredaj (naziv) VALUES ('printer');

-- Osoba 1 ulazi na radno mjesto koristeći računalo.
INSERT INTO prijava (osoba, vrijeme, vrsta, uredaj) VALUES (1, NOW(), 1, 1);
-- Osoba 2 ima sastanak koristeći radni stol.
INSERT INTO prijava (osoba, vrijeme, vrsta, uredaj) VALUES (2, NOW(), 2, 3);
-- Osoba 3 ima pauzu koristeći mobilni uređaj.
INSERT INTO prijava (osoba, vrijeme, vrsta, uredaj) VALUES (3, NOW(), 3, 2);




