use bd2;
CREATE TABLE estudantes (
	id INT,
	nome varchar(255) NOT NULL,
	cidade varchar(255) NOT NULL
);
alter table estudantes
modify column id int primary key;
show columns from estudantes;
CREATE TABLE escritorio(
	id INT,
	localizacao varchar(255) NOT NULL,
	nome_responsavel varchar(255) NOT NULL,
    cpf_responsavel INT,
    unique (cpf_responsavel)
);
show columns from escritorio;

create table autores (
	id int(11) primary key auto_increment,
    nome varchar(255) not null
);

create table artigos (
	id int(11) primary key auto_increment,
    nome varchar(255) not null,
    valor float not null,
    autor_id int(11) not null,
    foreign key(autor_id) references autores (id)
);

show columns