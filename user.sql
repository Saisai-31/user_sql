/*
My SQl est un système de gestion de base de données relationnelles populaire utilisé pour stocker et récupérer des données. La gestion des utilisateurs dns MySQL est cruciale pour garantir et limiter l'accès aux données sensibles. 

Structure des utilisateurs
Chaque utilisateur est identifié par un nom (username) et associé à un hôte (host) depuis lequel il peut se connecter. La combinaison de l'utilisateur et de l'hote est unique.ADD

Gestion des utilisateurs
    1. Création des utilisateurs

    Pour créer un utilisateur, on utilisise la commmande
*/

create user 'nomutilisateur'@'hote' IDENTIFIED BY 'mot de passe';

/*
Modifier
*/
alter user 'cyrilUser'@'localhost' IDENTIFIED BY 'newpasse';

/*
Rename
*/
rename user 'cyrilUser'@'localhost' to 'cyril'@'localhost';

/*
Supprimer
*/
drop user 'cyril'@'localhost';

/*
Voir tous les utilisateurs
*/
select user from mysql.user;

/*
Voir l'utilisateur actuel
*/
select current_user;

/*
Gestion des PRIVILEGES
Les privilèges déterminent ce que chaque utilisateur est autorisé à faire. Les privilèges incluent les clauses :
INSERT, UPDATE, DELETE, etc. La commande GRANT est utilisée pour accorder les privilèges.
*/
grant select on autorise.* to 'titi'@localhost';
grant all  on utilise.* to 'toto'@'localhost';
 
/*
Revoque les droits
*/
revoke privilege on bdd.* from 'user'@'hote';
*/

/*
Création d'une TABLE
*/
create table personnes(id_personne int not null primary key auto_increment, nom varchar (255) not null, date_naissance date not null, sexe char(1) not null);


create table adresse(id_adresse int not null auto_increment, numero int not null, rue varchar(255) not null, ville varchar(255) not null, code_postal int not null, id_personne int not null, primary key (id_adresse), foreign key (id_personne) references personnes (id_personne) ) engine=Innodb;

/*
Modifier avec alter
*/
ALTER TABLE personnes ADD prenom VARCHAR(255) NOT NULL AFTER nom;
alter table personnes engine=Innodb;
