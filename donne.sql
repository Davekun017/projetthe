create  database tea;
use tea;

create table administrateur(
    id_admin int auto_increment primary key,
    nom_admin varchar(50) not null,
    email varchar(50) not null,
    mdp varchar(50) not null
);

create table user (
    id_user smallint auto_increment,
    nom_user varchar(100) not null,
    user_email varchar(100) not null,
    user_mdp varchar(50) not null,
    primary key (id_user)
);

insert into user (nom_user,user_email,user_mdp) values ("Jax", "jax@gmail.com", "jax");

create table variete(
    id_variete int auto_increment primary key,
    nom_variete varchar(50) not null,
    occupation DECIMAL(10,2) NOT NULL check (occupation>0),
    rendement DECIMAL(10,2) NOT NULL check (rendement>0)
);
create table parcelle(
    id_parcelle int auto_increment primary key,
    nom_parcelle varchar(50) not null,
    surface decimal(10,2) not null check (surface>0),
    id_variete int not null,
    foreign key (id_variete) references variete(id_variete)
);

create table cueilleurs(
    id_cueilleur int auto_increment primary key,
    nom_cueilleur varchar(50) not null,
    genre varchar(50),
    dtn DATE not null
);

CREATE TABLE IF NOT EXISTS categories(
    id_categorie INT AUTO_INCREMENT PRIMARY KEY,
    nom_categorie VARCHAR(255) NOT NULL
);
create table depenses(
    id_depense int auto_increment primary key,
    id_categorie int,
    nom_depense varchar(50),
    cout decimal(10,2),
    daty DATETIME,
    foreign key (id_categorie) references categories(id_categorie)
);

INSERT INTO categories_depenses (nom_categorie) VALUES
('intrant'),
('equipement'),
('main work'),
('entretient');

INSERT INTO variete_the (nom_variete, occupation_m2, rendement_kg_mois) VALUES
('Variete1', 1.8, 10),
('Variete2', 2.0, 12),
('Variete3', 1.5, 8);


INSERT INTO Administrateur (nom_admin, email, mdp) VALUES
('admin', 'admin@gmail.com', 'admin');


INSERT INTO Parcelle (nom_parcelle, surface, id_variation) VALUES
('Parcelle1', '100m2', 1),
('Parcelle2', '150m2', 2),
('Parcelle3', '120m2', 3);

INSERT INTO Cueilleurs (nom_cueilleur, genre, dtn) VALUES
('Cueilleur1', 'Homme', '1990-05-15'),
('Cueilleur2', 'Femme', '1985-12-20'),
('Cueilleur3', 'Homme', '1995-08-10');


INSERT INTO depenses (id_categorie, nom_depense, cout, daty) VALUES
(1, 'Engrais', 50.25, '2024-02-10 08:00:00'),
(2, 'Carburant', 120.00, '2024-02-11 14:30:00'),
(1, 'Engrais', 35.75, '2024-02-12 10:45:00');





