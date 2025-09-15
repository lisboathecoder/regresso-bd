-- Query para a criação da tabela de times de cs2 --
CREATE TABLE timescs2 (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(20) NOT NULL,
    membros INT,
    jogador_estrela VARCHAR(35),
    major BOOLEAN NOT NULL,
    ativo BOOLEAN NOT NULL 
);
INSERT INTO artists (nome, nacionalidade, membros, jogador_estrela, major, ativo)
VALUES
('FURIA', 'Brasil', 5, 'KSCERATO', FALSE, TRUE),
('Imperial', 'Brasil', 5, 'try', FALSE, TRUE),
('SK Gaming', 'Brasil', 5, 'coldzera', TRUE, FALSE),
('Natus Vincere', 'Ucrânia', 5, 'b1t', TRUE, TRUE),
('FaZe Clan', 'Internacional', 5, 'frozen', TRUE, TRUE),
('Team Liquid', 'Estados Unidos', 5, 'NertZ', FALSE, TRUE),
('Virtus.pro', 'Rússia', 5, 'fame', FALSE, TRUE),
('Astralis', 'Dinamarca', 5, 'dev1ce', TRUE, TRUE),
('G2 Esports', 'Internacional', 5, 'huNter-', FALSE, TRUE),
('paiN Gaming', 'Brasil', 5, 'biguzera', FALSE, TRUE); 
