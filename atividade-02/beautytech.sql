CREATE DATABASE beautytechdb;

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    categoria VARCHAR(30) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT DEFAULT 0
);


INSERT INTO produtos (nome, marca, categoria, preco, estoque)
VALUES
-- Criado por mim 
('Creme de pentear de coco', 'Salon Line', 'Cabelo', 31.90, 50),
('Creme Labial', 'Nivea', 'Boca', 10.99, 50),
('Shampoo Reconstrução', 'Pantene', 'Cabelo', 22.50, 40),
('Máscara Facial Argila', 'LOréal', 'Pele', 35.00, 30),
('Esmalte Vermelho', 'Risqué', 'Unhas', 6.99, 100),
-- Criado pela Ia
('Protetor Solar FPS 50', 'La Roche-Posay', 'Pele', 79.90, 25),
('Condicionador Nutritivo', 'Tresemmé', 'Cabelo', 18.75, 60),
('Sabonete Líquido', 'Natura', 'Corpo', 15.90, 80),
('Base Líquida', 'Vult', 'Rosto', 29.99, 45),
('Desodorante Aerosol', 'Rexona', 'Corpo', 13.50, 70),
('Óleo Corporal', 'Nivea', 'Corpo', 19.90, 35),
('Paleta de Sombras', 'Ruby Rose', 'Olhos', 39.90, 20),
('Creme Hidratante', 'Nivea', 'Pele', 17.99, 55),
('Máscara de Cílios', 'Maybelline', 'Olhos', 32.00, 40),
('Lenço Demaquilante', 'Neutrogena', 'Rosto', 24.90, 30),
('Gel Esfoliante Facial', 'Clean & Clear', 'Rosto', 27.50, 25),
('Esmalte Nude', 'Colorama', 'Unhas', 7.99, 80),
('Creme para Mãos', 'Granado', 'Corpo', 15.00, 40),
('Sérum Facial', 'The Ordinary', 'Pele', 59.90, 20),
('Batom Matte', 'Quem Disse, Berenice?', 'Boca', 29.90, 35);

SELECT * FROM produtos;

UPDATE produtos SET preco = preco * 0.8 -- 20% de desconto em Produtos de skincare
WHERE marca = 'Nivea';

UPDATE produtos SET estoque = estoque + 50; -- Estoque +50 em todos os itens

UPDATE produtos SET preco = preco * 1.15 -- Produtos da Nivea ( marca mais inserida ) com 15% de aumento
WHERE categoria = 'Rosto';

UPDATE produtos SET preco = preco * 0.9 -- 10% de desconto para produtos com menos de 100 itens no estoque
WHERE estoque < 100;

DELETE FROM produtos -- Remover os produtos com estoque menor que 10 unidades
WHERE estoque < 10;

DELETE FROM produtos -- Deletar produtos com preço menor que R$ 20,00
WHERE preco < 20.00;

DELETE FROM produtos -- Escolher uma marca e remova todos os produtos dessa marca do catálogo
WHERE marca = 'Salon Line';

-- Desafios Extras

UPDATE produtos SET preco = preco * 0.7 -- Aplique 30% de desconto em produtos da categoria "Pele"
WHERE categoria = 'Pele';

UPDATE produtos SET estoque = estoque + 25 -- Aumentar o estoque em 25 unidades para produtos com preço acima de R$ 150,00
WHERE preco > 150;

DELETE FROM produtos -- Deletar produtos que tenham estoque entre 1 e 5 unidades
WHERE  estoque < 5;