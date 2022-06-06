create database strangerThings;

use strangerThings;

create table personagem (
idPersonagem int primary key auto_increment,
nome varchar(45),
fklider int,
foreign key (fklider) references personagem (idpersonagem)
) auto_increment = 3;

create table Mundo_Normal (
idMundo_normal int,
fkpersonagem int, 
foreign key (fkpersonagem) references personagem (idpersonagem),
primary key (idMundo_normal, fkpersonagem)
);

create table Mundo_Invertido (
idMundo_invertido int,
fkpersonagem int, 
foreign key (fkpersonagem) references personagem (idpersonagem),
primary key (idMundo_invertido, fkpersonagem)
);

create table poderes (
idPoderes int primary key auto_increment,
nome varchar(45),
descricao varchar(100),
forca int,
fkpersonagem int,
foreign key (fkpersonagem) references personagem (idPersonagem)
) auto_increment = 21;


create table batalha(
idBatalha int primary key auto_increment,
nome varchar(45)
)auto_increment = 51;

create table integrantesBatalha(
fkpersongem int,
foreign key (fkpersonagem) references personagem (idpersonagem),
fkBatalha int,
foreign key (fkBatalha) references batalha (idBatalha),
dataBatalha date
);

insert into personagem (nome, fklider) values
('Mike', null),
('Eleven', 3),
('Steve', 3),
('Thessalhydra', null),
('Demogorgon', 6),
('Demo-dog', 6);

insert into Mundo_normal values
(1, 3),
(1, 4),
(1, 5);

insert into Mundo_invertido values
(2, 6),
(2, 7),
(2, 8);

insert into poderes (nome, descricao, forca) values
('Liderança', 'Mike usa seu conhecimento em RPG e video-games pra resolver os problemas e derrotar os invasores do mundo invertido', 200),
('Habilidades psíquicas', 'Eleven consegue mexer coisas com o poder da mente, inclusive quebrar coisas (como ossos, então tome cuidado)', 5000),
('Bastao com pregos', 'Steven é um menino comum porém ele tem um bastao com pregos o que é mt daora', 1500),
('Controlar os monstros do mundo invertido', 'Thessalhydra é um monstro enorme do mundo invertido, seu objetivo é dominar o mundo dos humanos usando seus lacaios (e seu poder é mais de 9 mil)', 9100),
('Predador', 'Demogorgon como um ótimo predador consegue sentir o cheiro de sangue a kilometros e usa da sua incrivel velocidade e força para transitar entre os mundos e caçar suas presas', 3000),
('lacaios do thesalhydra', 'Os demo-dogs não são inteligentes ou super fortes, porém quando em bando são mt perigosos (alguns gostam de caramelo então se vc se deparar com um, pode ser um jeito de vc escapar)', 1000);

insert into batalha (nome) values
('Batalha de Hawkins'), 
('Batalha de Nova york'), 
('Batalha no Laboratório'); 

insert into integranteBatalha (fkPersonagem, fkBatalha, dataBatalha) values
(3, 51, '08-09-1982'),
(4, 51, '08-09-1982'),
(7, 51, '08-09-1982'),
(8, 51, '10-11-1982'),
(3, 52, '10-11-1984'),
(5, 52, '10-11-1984'),
(6, 52, '10-11-1984'),
(8, 52, '10-11-1984'),
(4, 53, '05-03-1986'),
(5, 53, '05-03-1986'),
(6, 53, '05-03-1986'),
(7, 53, '05-03-1986');

