drop database if exists sbatelier;
create database sbatelier;
use sbatelier;

create table Client(
	numeroCLient int Primary key,
	civilité varchar(50),
	nom varchar(50),
	prenom varchar(50),
	dateNaissance Date,
	mail varchar(50),
	mdp varchar(50),
	adresse varchar(50),
	codePostal int,
	ville varchar(50),
	numeroTel varchar(50)
);

create table ResponsableAtelier(
	numeroResponsableAtelier int Primary key,
	nomConnexion varchar(50),
	nom varchar(50),
	prénom varchar(50)
);


create table Atelier(
	numeroAtelier int Primary key,
	dateEnregistrement Date,
	dateProgram DateTime,
	durée int,
	nbPlaces int,
	theme varchar(50)
);

create table Participation(
	dateInscription Date,
	numeroAtelier int,
	numeroCLient int,
	foreign key (numeroCLient) references Client(numeroCLient),
	foreign key (numeroAtelier) references Atelier(numeroAtelier)
);

create table Programmer(
	numeroAtelier int,
	numeroResponsableAtelier int,
	foreign key (numeroAtelier) references Atelier(numeroAtelier),
	foreign key (numeroResponsableAtelier) references ResponsableAtelier(numeroResponsableAtelier)
);
