drop database prijava,
create database prijava;

create table osoba(
    sifra int primary key not null,
    ime varchar (50),
    prezime varchar (50),
    broj_mob float (30),
    kartica decimal (20),
    uloga varchar(50)
);

create table prijava(
    sifra int primary key not null,
    osoba int not null,
    vrijeme time,
    vrsta int not null,
    uredaj int not null
);

create table vrsta(
    sifra int primary key not null,
    naziv varchar (50)
);

create table uredaj(
    sifra int primary key not null,
    naziv varchar (50)
);

