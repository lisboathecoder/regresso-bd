SELECT * FROM artists;

SELECT COUNT(*) AS total_artists FROM artists;

SELECT nome, genero_musical FROM artists;
SELECT nome, genero_musical FROM artists
WHERE pais_origem = 'Brasil';
SELECT nome, genero_musical FROM artists 
WHERE id = 9 OR id = 3;
