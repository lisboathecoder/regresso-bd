-- Query para a criação da tabela de artistas --
CREATE TABLE artists (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    membros INT,
    genero_musical VARCHAR(35),
    ano_lancamento INT,
    pais_origem VARCHAR(50),
    musica_famosa  VARCHAR(50),
    ativo BOOLEAN NOT NULL 
);

INSERT INTO artists (nome, tipo, membros, genero_musical, ano_lancamento, pais_origem, musica_famosa, ativo) 
VALUES
('P.Diddy', 'Solo', 1, 'Rap', 1990, 'Estados Unidos', 'Last Night', TRUE),
('Racionais', 'Grupo', 4, 'Rap', 1988, 'Brasil', 'Vida Loka PT.1', TRUE),
('Travis Scott', 'Solo', 1, 'Trap/Rap', 2012, 'Estados Unidos', 'Sicko Mode', TRUE),
('Kendrick Lamar', 'Solo', 1, 'Rap', 2003, 'Estados Unidos', 'HUMBLE.', TRUE),
('Migos', 'Grupo', 3, 'Trap/Rap', 2009, 'Estados Unidos', 'Bad and Boujee', TRUE),
('Playboi Carti', 'Solo', 1, 'Trap', 2011, 'Estados Unidos', 'Magnolia', TRUE),
('Destroy Lonely', 'Solo', 1, 'Trap', 2016, 'Estados Unidos', 'NOSTYLIST', TRUE),
('Yeat', 'Solo', 1, 'Trap', 2018, 'Estados Unidos', 'Monëy so big', TRUE),
('Ken Carson', 'Solo', 1, 'Trap', 2015, 'Estados Unidos', 'Yale', TRUE),
('SoFaygo', 'Solo', 1, 'Trap', 2018, 'Estados Unidos', 'Knock Knock', TRUE),
('Lil Tecca', 'Solo', 1, 'Trap', 2017, 'Estados Unidos', 'Ransom', TRUE),
('Central Cee', 'Solo', 1, 'Trap', 2014, 'Reino Unido', 'Doja', TRUE);
