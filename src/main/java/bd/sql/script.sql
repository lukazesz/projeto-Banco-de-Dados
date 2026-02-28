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
    id_categoria integer not null,
    foreign key (id_categoria) references categoria(id)
);

create table categoria (
	id serial primary key,
	nome varchar (45) not null
);

INSERT INTO categoria (nome) VALUES
('RPG'), ('FPS'), ('MULTIPLAYER');

ALTER TABLE jogos ADD COLUMN id_categoria INT;
ALTER TABLE jogos ADD FOREIGN KEY (id_categoria) references categoria(id);

INSERT INTO usuario (nome, data_nascimento, email, telefone) VALUES 
('Lucas', '1999-12-21', 'lucas@gmail.com', '83990901234'),
('Miguel', '2005-01-25', 'miguel@gmail.com', '83990905678')

INSERT INTO categoria (nome) VALUES
('RPG'), ('FPS'), ('MULTIPLAYER')

-- =========================================
-- 1) INNER JOIN com 3 tabelas + WHERE
-- Jogos da categoria RPG
-- =========================================
SELECT 
    j.nome AS nome_jogo,
    j.data_compra,
    u.nome AS nome_usuario,
    c.nome AS categoria
FROM jogos j
INNER JOIN usuario u ON j.id_usuario = u.id
INNER JOIN categoria c ON j.id_categoria = c.id
WHERE c.nome = 'RPG';


-- =========================================
-- 2) INNER JOIN com 3 tabelas + WHERE (data e usuário)
-- Jogos comprados após 2023 pelo usuário Lucas
-- =========================================
SELECT 
    j.nome AS nome_jogo,
    u.nome AS nome_usuario,
    c.nome AS categoria,
    j.data_compra
FROM jogos j
INNER JOIN usuario u ON j.id_usuario = u.id
INNER JOIN categoria c ON j.id_categoria = c.id
WHERE j.data_compra > '2023-01-01'
AND u.nome = 'Lucas';


-- =========================================
-- 3) GROUP BY + ORDER BY
-- Quantidade de jogos por usuário
-- =========================================
SELECT 
    u.nome,
    COUNT(j.id) AS total_jogos
FROM usuario u
INNER JOIN jogos j ON u.id = j.id_usuario
GROUP BY u.nome
ORDER BY total_jogos DESC;


-- =========================================
-- 4) GROUP BY + ORDER BY
-- Quantidade de jogos por categoria
-- =========================================
SELECT 
    c.nome AS categoria,
    COUNT(j.id) AS total_jogos
FROM categoria c
INNER JOIN jogos j ON c.id = j.id_categoria
GROUP BY c.nome
ORDER BY total_jogos DESC;


-- =========================================
-- 5) LEFT JOIN
-- Mostrar todos os usuários mesmo que não tenham jogos
-- =========================================
SELECT 
    u.nome,
    j.nome AS nome_jogo
FROM usuario u
LEFT JOIN jogos j ON u.id = j.id_usuario
ORDER BY u.nome;


-- =========================================
-- 6) Subconsulta
-- Usuários que possuem mais jogos que a média
-- =========================================
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

