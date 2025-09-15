-- Query para a criação da tabela de artistas --
CREATE TABLE artists (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    membros INT,
    genero-musical VARCHAR(35),
    ano_lancamento INT,
    pais_origem VARCHAR(50),
    musica_famosa  VARCHAR(50),
    ativo BOOLEAN NOT NULL 
);