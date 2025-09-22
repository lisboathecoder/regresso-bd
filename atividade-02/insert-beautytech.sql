CREATE DATABASE beautytechdb;

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(30) NOT NULL,
    estoque INT DEFAULT 0
);


INSERT INTO beautytechdb(nome, marca, preco, categoria, estoque)
VALUES
--- Criado por mim 
("Creme de pentear de coco", "Salon Line", "Cabelo", 31,90, 50),
("Creme Labial", "Dove", "Boca", 10,99, 50),
("Shampoo Reconstrução", "Pantene", "Cabelo", 22.50, 40),
("Máscara Facial Argila", "L'Oréal", "Pele", 35.00, 30),
("Esmalte Vermelho", "Risqué", "Unhas", 6.99, 100),
--- Criado pela Ia
("Protetor Solar FPS 50", "La Roche-Posay", "Pele", 79.90, 25),
("Condicionador Nutritivo", "Tresemmé", "Cabelo", 18.75, 60),
("Sabonete Líquido", "Natura", "Corpo", 15.90, 80),
("Base Líquida", "Vult", "Rosto", 29.99, 45),
("Desodorante Aerosol", "Rexona", "Corpo", 13.50, 70),
("Óleo Corporal", "Johnson's", "Corpo", 19.90, 35),
("Paleta de Sombras", "Ruby Rose", "Olhos", 39.90, 20),
("Creme Hidratante", "Nivea", "Pele", 17.99, 55),
("Máscara de Cílios", "Maybelline", "Olhos", 32.00, 40),
("Lenço Demaquilante", "Neutrogena", "Rosto", 24.90, 30),
("Gel Esfoliante Facial", "Clean & Clear", "Rosto", 27.50, 25),
("Esmalte Nude", "Colorama", "Unhas", 7.99, 80),
("Creme para Mãos", "Granado", "Corpo", 15.00, 40),
("Sérum Facial", "The Ordinary", "Pele", 59.90, 20),
("Batom Matte", "Quem Disse, Berenice?", "Boca", 29.90, 35);

SELECT * FROM beautytechdb