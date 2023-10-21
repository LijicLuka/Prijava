drop database prijava;
create database prijava;
use prijava;


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

alter table prijava add foreign key (osoba)
references osoba(sifra);
alter table prijava add foreign key (uredaj)
references uredaj(sifra);
alter table prijava add foreign key (vrsta)
references vrsta(sifra);

insert into osoba (sifra,ime,prezime,broj_mob,kartica,uloga) values
(null,Marko,Kanisek,+385 99 455 2000,),
()

insert into prijava (sifra,osoba,vrijeme,vrsta,uredaj) values

insert into vrsta (sifra,naziv) values
(null,ulazak),
(null,pauza),
(null,izlazak);

insert into uredaj (sifra,naziv) values
(null,glavni),
(null,sporedni);
