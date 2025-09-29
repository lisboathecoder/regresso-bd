-- \! cls 

CREATE DATABASE beautytechbd;

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY, -- SERIAL = INT AUTO INCREMENT
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
-- Diversas categorias e marcas conhecidas
('Niacinamide 10% + Zinc 1%', 'The Ordinary', 'Skincare', 59.90, 25),
('Pro Filter Foundation', 'Fenty Beauty', 'Maquiagem', 189.00, 15),
('Soft Pinch Liquid Blush', 'Rare Beauty', 'Maquiagem', 139.00, 20),
('Milky Jelly Cleanser', 'Glossier', 'Skincare', 99.00, 18),
('Perfume Daisy', 'Marc Jacobs', 'Perfume', 399.00, 10),
('Brow Wiz', 'Anastasia Beverly Hills', 'Maquiagem', 129.00, 22),
('Shampoo Nutritivo', 'Kérastase', 'Cabelo', 149.00, 12),
('Hydrating Lip Balm', 'Laneige', 'Boca', 79.00, 30),
('Máscara de Cílios Lash Sensational', 'Maybelline', 'Maquiagem', 42.00, 40),
('Body Mist Vanilla', 'Victorias Secret', 'Perfume', 89.00, 28),
('Sérum Facial Glow', 'Biossance', 'Skincare', 199.00, 14),
('Leave-in Reparador', 'Olaplex', 'Cabelo', 179.00, 16),
('Paleta de Sombras Nude', 'Urban Decay', 'Maquiagem', 299.00, 8),
('Creme Hidratante Facial', 'CeraVe', 'Skincare', 69.90, 35),
('Esmalte Rosa', 'Colorama', 'Unhas', 7.99, 60),
('Desodorante Roll-on', 'Dove', 'Corpo', 13.50, 50),
('Sabonete Líquido Corporal', 'Natura', 'Corpo', 19.90, 40),
('Óleo Corporal', 'Nuxe', 'Corpo', 129.00, 12),
('Máscara Capilar', 'LOréal', 'Cabelo', 99.00, 18);


SELECT * FROM produtos;

UPDATE produtos SET preco = preco * 0.8 -- 20% de desconto em Produtos de skincare
WHERE categoria = 'Skincare';

UPDATE produtos SET estoque = estoque + 50; -- Estoque +50 em todos os itens

UPDATE produtos SET preco = preco * 1.15 -- Produtos da LOréal ( marca mais inserida ) com 15% de aumento
WHERE marca = 'LOréal';

UPDATE produtos SET preco = preco * 0.9 -- 10% de desconto para produtos com menos de 100 itens no estoque
WHERE estoque < 100;

DELETE FROM produtos -- Remover os produtos com estoque menor que 70 unidades
WHERE estoque < 70;

DELETE FROM produtos -- Deletar produtos com preço menor que R$ 20,00
WHERE preco < 20.00;

DELETE FROM produtos -- Escolher uma marca e remova todos os produtos dessa marca do catálogo
WHERE marca = 'Salon Line';

-- Desafios Extras

UPDATE produtos SET preco = preco * 0.7 -- Aplique 30% de desconto em produtos da categoria "Skincare"
WHERE categoria = 'Skincare';

UPDATE produtos SET estoque = estoque + 25 -- Aumentar o estoque em 25 unidades para produtos com preço acima de R$ 15,00
WHERE preco > 15;

DELETE FROM produtos -- Deletar produtos que tenham estoque entre 1 e 5 unidades
WHERE estoque BETWEEN 1 AND 5;