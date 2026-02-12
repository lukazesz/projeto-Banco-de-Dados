create table usuario (
	id serial primary key,
	nome varchar (60) not null,
    data_nascimento date not null,
    email varchar(40),
    telefone varchar(15)
);

create table jogos (
	id serial primary key,
	nome varchar (45) not null,
	data_compra date not null,
    id_usuario integer not null,
    foreign key (id_usuario) references usuario(id)
);

INSERT INTO usuario (nome, data_nascimento, email, telefone) VALUES 
('Lucas', '1999-12-21', 'lucas@gmail.com', '83990901234'),
('Miguel', '2005-01-25', 'miguel@gmail.com', '83990905678')