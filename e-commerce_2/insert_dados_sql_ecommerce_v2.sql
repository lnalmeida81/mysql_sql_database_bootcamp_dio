-- inserção de dados
USE ecommerce;

SHOW TABLES;

DESC cliente;

-- idCliente, Nome, Nome_do_meio, Sobrenome, CPF, Endereço, Data_Nascimento
INSERT INTO Cliente (Nome, Nome_do_meio, Sobrenome, CPF, Endereço, Data_Nascimento) VALUES
		('Ana', 'Carolina', 'Souza', '98765432101', 'Rua das Flores, 123 - São Paulo, SP', '1990-03-12'),
		('João Pedro', 'Lima', 'Santana', '89012345678', 'Av. Central, 456 - Rio de Janeiro, RJ', '1985-07-25'),
		('Camila', 'Beatriz', 'Ferreira', '12345678902', 'Rua das Palmeiras, 789 - Belo Horizonte, MG', '1993-11-08'),
		('Lucas', 'Henrique', 'Martins', '67890123456', 'Av. Paulista, 101 - São Paulo, SP', '2000-02-14'),
		('Mariana', 'Oliveira', 'Mendes', '45678912345', 'Rua dos Ipês, 202 - Curitiba, PR', '1995-09-30'),
		('Ricardo', 'Augusto', 'Santos', '56789012345', 'Travessa Azul, 350 - Porto Alegre, RS', '1988-06-05'),
		('Fernanda', 'Luiza', 'Costa', '78901234567', 'Av. Boa Vista, 55 - Recife, PE', '1992-12-18'),
		('Rafael', 'Antônio', 'Almeida', '34567890123', 'Rua do Sol, 777 - Salvador, BA', '1984-05-09'),
		('Juliana', 'Cristina', 'Mendes', '23456789012', 'Rua Primavera, 88 - Fortaleza, CE', '1997-01-21'),
		('Bruno', 'César', 'Castro', '90123456789', 'Av. Rio Branco, 200 - Brasília, DF', '1990-08-11'),
		('Patrícia', 'Helena', 'Nunes', '21098765432', 'Rua das Rosas, 42 - Manaus, AM', '1996-04-07'),
		('Eduardo', 'Vinícius', 'Lima', '54321098765', 'Av. das Águas, 333 - Florianópolis, SC', '1983-10-13'),
		('Carolina', 'Xavier', 'Duarte', '87654321098', 'Rua da Paz, 120 - Natal, RN', '2001-07-29'),
		('Diego', 'Rafael', 'Rocha', '10987654321', 'Av. Independência, 505 - Goiânia, GO', '1989-12-02'),
		('Letícia', 'Gabriela', 'Moraes', '65432109876', 'Rua São Pedro, 99 - Vitória, ES', '1994-06-16'),
		('Gustavo', 'Henrique', 'Barbosa', '32109876543', 'Rua das Oliveiras, 777 - Campo Grande, MS', '1986-03-23'),
		('Tatiane', 'Eduarda', 'Ramos', '43210987654', 'Av. Beira Mar, 2000 - João Pessoa, PB', '1998-09-19'),
		('Vinícius', 'Daniel', 'Teixeira', '76543210987', 'Travessa Esperança, 101 - Teresina, PI', '1991-05-06'),
		('Amanda', 'Rafaela', 'Ribeiro', '67854321098', 'Rua Bela Vista, 400 - Belém, PA', '1993-11-27'),
		('Felipe', 'Augusto', 'Cardoso', '89076543210', 'Av. das Acácias, 222 - São Luís, MA', '1987-08-31');

SELECT * FROM Cliente;

-- idProduto, Nome_Produto, Classificação_Kids, Categoria, Avaliação, Tamanho
INSERT INTO Produto (Nome_Produto, Classificação_Kids, Categoria, Avaliação, Tamanho) VALUES
		('Smartphone XYZ Pro', false, 'Eletrônicos e Informática', '5', null),
		('Notebook Ultra Slim 15”', false, 'Eletrônicos e Informática', '5', null),
		('Camiseta Algodão Premium', false, 'Roupas, Calçados e Acessórios', '4', 'P'),
		('Tênis Esportivo Comfort Plus', false, 'Roupas, Calçados e Acessórios', '4', '40'),
		('Óculos de Sol UV400', false, 'Roupas, Calçados e Acessórios', '4', null),
		('Livro: "O Poder do Hábito"', false, 'Livros, Papelaria e Escritório', '3', null),
		('Caderno Universitário 200 folhas', false, 'Livros, Papelaria e Escritório', '3', null),
		('Boneco de Ação Super Hero', true, 'Brinquedos e Jogos', '4', null),
		('Chocolate Amargo 70% Cacau', false, 'Alimentos e Bebidas', '3', null),
		('Cerveja Artesanal IPA 500ml', false, 'Alimentos e Bebidas', '4', null),
		('Hidratante Corporal Nutritivo', false, 'Beleza e Cuidados Pessoais', '3', null),
		('Fone de Ouvido Bluetooth', false, 'Eletrônicos e Informática', '5', null),
		('Mouse Gamer RGB 8000 DPI', false, 'Eletrônicos e Informática', '3', null),
		('Jaqueta Corta Vento Impermeável', false, 'Roupas, Calçados e Acessórios', '3', 'G'),
		('Chinelo Anatômico Antiderrapante', false, 'Roupas, Calçados e Acessórios', '4', '40'),
		('Relógio Smartwatch Fit', false, 'Roupas, Calçados e Acessórios', '5', null),
		('Planner Diário 2025', false, 'Livros, Papelaria e Escritório', '3', null),
		('Quebra-cabeça 1000 peças', true, 'Brinquedos e Jogos', '3', null),
		('Café Gourmet em Grãos 500g', false, 'Alimentos e Bebidas', '5', null),
		('Perfume Masculino Intense 100ml', false, 'Beleza e Cuidados Pessoais', '4', null);

SELECT * FROM Produto;

-- idPedido, idClientePedido, Status_Pedido, Descrição, Frete
INSERT INTO Pedido (idClientePedido, Status_Pedido, Descrição, Frete) VALUES
		(1, 'Entregue', 'Compra no aplicativo', null),
		(2, default, 'Compra no aplicativo', 50),
		(3, 'Confirmado', null, null),
		(4, default, 'Compra no site', 30),
		(5, default, 'Compra no site', 20),
		(6, 'Entregue', 'Compra no aplicativo', null),
		(7, 'Enviado', 'Compra no aplicativo', 50),
		(8, 'Cancelado', null, null),
		(9, default, 'Compra no aplicativo', 50),
		(10, default, 'Compra no site', 20),
		(11, 'Em preparação', 'Compra no aplicativo', 40);

SELECT * FROM Pedido;

-- idPPproduto, idPPpedido, Quantidade_Pedido_Produto, Status_Pedido_Produto
INSERT INTO Pedido_Produto (idPPproduto, idPPpedido, Quantidade_Pedido_Produto, Status_Pedido_Produto) VALUES
		(1, 5, 2, 'Disponível'),
		(2, 6, 1, 'Indisponível'),
		(3, 2, 1, 'Disponível'),
		(5, 3, 2, 'Disponível'),
		(7, 4, 1, 'Indisponível'),
		(8, 1, 1, 'Disponível'),
		(9, 8, 2, 'Disponível'),
		(11, 10, 1, 'Indisponível');

SELECT * FROM Pedido_Produto;

-- Estoque_Local, Quantidade
INSERT INTO Estoque (Estoque_Local, Quantidade) VALUES
		('Manaus', 300),
		('Rio de Janeiro', 500),
		('São Paulo', 200),
		('São Paulo', 450),
		('Recife', 400),
		('Porto Alegre', 350),
		('Brasília', 500);

-- idLocal_Produto, idLocal_Estoque, Local_Estoque
INSERT INTO Estoque_Local (idLocal_Produto, idLocal_Estoque, Local_Estoque) VALUES
		(1, 2, 'RJ'),
		(2, 4, 'SP'),
		(3, 6, 'PE'),
		(4, 7, 'RS'),
		(5, 8, 'DF');

SELECT * FROM Estoque_Local;

-- idFornecedor, Razao_Social_Fornecedor, CNPJ, Contato_Fornecedor
INSERT INTO Fornecedor (Razao_Social_Fornecedor, CNPJ, Contato_Fornecedor) VALUES
		('TechNova Solutions', 87563201458963, '11912345678'),
		('MaxComércio Distribuidora', 92346781530247, '11923456789'),
		('EcoVerde Sustentável', 65789034125678, '11934567890'),
		('InovaWeb Marketing', 34871256903412, '21945678901'),
		('BlueWave Tecnologia', 56092347812569, '31956789012'),
		('AlphaTrend Consultoria', 78234569012734, '11967890123'),
		('VitaNutri Alimentos', 63429087134567, '81978901234'),
		('SkyNet Telecom', 91234567803456, '51989012345'),
		('FlexiModa Roupas', 45983216709583, '21990123456'),
		('Lumina Solar Energia', 80123645790812, '11901234567');

 SELECT * FROM Fornecedor;
 
-- idPsSupplier, idPsProduct, quantity (idFPFornecedor, idFPProduto, Quantidade_Fornecedor_Produto)
INSERT INTO Fornecedor_Produto (idFPFornecedor, idFPProduto, Quantidade_Fornecedor_Produto) VALUES
		(1, 1, 300),
		(3, 2, 280),
		(5, 4, 300),
		(7, 6, 150),
		(9, 8, 50);

SELECT * FROM Fornecedor_Produto;

-- idVendedor, Razao_Social_Vendedor, Nome_Fantasia_Vendedor, CNPJ, CPF, Vendedor_Local, Contato_Vendedor
INSERT INTO Vendedor (Razao_Social_Vendedor, Nome_Fantasia_Vendedor, CNPJ, CPF, Vendedor_Local, Contato_Vendedor) VALUES
		('FusionTech Systems', null, '87563201458963', null, 'São Paulo', '11912345678'),
		('Econet Distribuição', null, '92346781530247', null, 'São Paulo', '11923456789'),
		('VerdeMax Sustentável', null, '65789034125678', null, 'Salvador', '71934567890'),
		('WebX Digital Solutions', null, '34871256903412', null, 'Porto Alegre', '51945678901'),
		('Solaris Energia', null, '56092347812569', null, 'Rio de Janeiro', '21956789012'),
		('Lucas Andrade Lima', null, null, '12345678901', 'São Paulo', '11967890123'),
		('Mariana Souza Ribeiro', null, null, '23456789012', 'Belo Horizonte', '31978901234'),
		('Fernando Alves Costa', null, null, '34567890123', 'Rio de Janeiro', '21989012345'),
		('Beatriz Melo Ferreira', null, null, '45678901234', 'Recife', '81990123456'),
		('Ricardo Nunes Oliveira', null, null, '56789012345', 'Salvador', '71901234567');

SELECT * FROM Vendedor;

-- idPVendedor, idPProduto, Quantidade_Produto
INSERT INTO Vendedor_Produto (idPVendedor, idPProduto, Quantidade_Produto) VALUES  
		(1, 6, 20),
		(2, 8, 10),
		(3, 2, 5),
		(4, 10, 5),
		(5, 5, 15);

SELECT * FROM Vendedor_Produto;