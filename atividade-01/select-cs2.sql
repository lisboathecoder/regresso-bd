SELECT * FROM timescs2;

SELECT COUNT(*) AS total_timescs2 FROM timescs2;

SELECT nome, jogador_estrela FROM timescs2;
SELECT nome, jogador_estrela FROM timescs2
WHERE pais_origem = 'Brasil';
SELECT nome, jogador_estrela FROM timescs2 
WHERE id = 9 OR id = 3;