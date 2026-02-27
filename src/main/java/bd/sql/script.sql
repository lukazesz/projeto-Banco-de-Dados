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

SELECT 
    j.nome AS nome_jogo,
    j.data_compra,
    u.nome AS nome_usuario,
    u.email
FROM jogos j
INNER JOIN usuario u ON j.id_usuario = u.id
WHERE u.nome = 'Lucas';

SELECT 
    j.nome AS nome_jogo,
    j.data_compra,
    u.nome,
    u.telefone
FROM jogos j
INNER JOIN usuario u ON j.id_usuario = u.id
WHERE j.data_compra > '2023-01-01';

SELECT 
    u.nome,
    COUNT(j.id) AS quantidade_jogos
FROM usuario u
INNER JOIN jogos j ON u.id = j.id_usuario
GROUP BY u.nome
ORDER BY quantidade_jogos DESC;

SELECT 
    EXTRACT(YEAR FROM j.data_compra) AS ano,
    COUNT(j.id) AS total_jogos
FROM jogos j
INNER JOIN usuario u ON j.id_usuario = u.id
GROUP BY ano
ORDER BY ano DESC;

SELECT 
    u.nome,
    j.nome AS nome_jogo
FROM usuario u
LEFT JOIN jogos j ON u.id = j.id_usuario
ORDER BY u.nome;

SELECT 
    u.nome
FROM usuario u
WHERE (
    SELECT COUNT(*)
    FROM jogos j
    WHERE j.id_usuario = u.id
) > (
    SELECT AVG(qtd)
    FROM (
        SELECT COUNT(*) AS qtd
        FROM jogos
        GROUP BY id_usuario
    ) AS subconsulta
);

