-- criar o banco de dados
CREATE DATABASE ecommerce;
USE ecommerce;

-- criar a tabela Cliente
CREATE TABLE Cliente(
		idCliente int auto_increment primary key,
        Nome varchar(10),
        Nome_do_meio char(10),
        Sobrenome varchar(20),
        CPF char(11) not null,
        Endereço varchar(255),
        Data_Nascimento date,
        constraint unique_cpf_cliente unique (CPF)
);

-- auto incrementar a tabela Cliente com mais 1
ALTER TABLE Cliente auto_increment=1;

-- criar tabela produto
CREATE TABLE Produto(
		idProduto int auto_increment primary key,
        Nome_Produto varchar(255) not null,
        Classificação_Kids bool default false,
        Categoria enum('Eletrônicos e Informática','Roupas, Calçados e Acessórios','Livros, Papelaria e Escritório','Brinquedos e Jogos','Alimentos e Bebidas','Beleza e Cuidados Pessoais') not null,
        Avaliação float default 0,
        Tamanho varchar(10)
);

-- auto incrementar a tabela Produto com mais 1
ALTER TABLE Produto auto_increment=1;


create table payments(
	idclient int,
    idPayment int,
    typePayment enum('Boleto','Cartão','Dois cartões'),
    limitAvailable float,
    primary key(idClient, idPayment)
);


-- criar tabela Pedido
CREATE TABLE Pedido(
	idPedido int auto_increment primary key,
    idClientePedido int,
    Status_Pedido enum("Pedido realizado", "Confirmado", "Em preparação", "Enviado", "Entregue", "Cancelado") default 'Pedido realizado',
    Descrição varchar(255),
    Frete float default 10,
    constraint fk_cliente_pedido foreign key (idClientePedido) references Cliente(idCliente)
			on update cascade
);

-- auto incrementar a tabela Pedido com mais 1
ALTER TABLE Pedido auto_increment=1;

-- criar tabela Estoque
CREATE TABLE Estoque(
	idEstoque int auto_increment primary key,
    Estoque_Local varchar(255),
    Quantidade int default 0
);

-- auto incrementar a tabela Estoque com mais 1
ALTER TABLE Estoque auto_increment=1;

-- criar tabela Fornecedor
CREATE TABLE Fornecedor(
	idFornecedor int auto_increment primary key,
    Razao_Social_Fornecedor varchar(255) not null,
    CNPJ char(14) not null,
    Contato_Fornecedor char(11) not null,
    constraint unique_fornecedor unique (CNPJ)
);

-- auto incrementar a tabela Fornecedor com mais 1
ALTER TABLE Fornecedor auto_increment=1;

-- criar tabela Vendedor
CREATE TABLE Vendedor(
	idVendedor int auto_increment primary key,
    Razao_Social_Vendedor varchar(255) not null,
    Nome_Fantasia_Vendedor varchar(255),
    CNPJ char(14),
    CPF char(11),
    Vendedor_Local varchar(255),
    Contato_Vendedor char(11) not null,
    constraint unique_cnpj_vendedor unique (CNPJ),
    constraint unique_cpf_vendedor unique (CPF)
);

-- auto incrementar a tabela Vendedor com mais 1
ALTER TABLE Vendedor auto_increment=1;

-- tabelas de relacionamentos M:N

-- criar tabela Vendedor_Produto
CREATE TABLE Vendedor_Produto(
	idPVendedor int,
    idPProduto int,
    Quantidade_Produto int default 1,
    primary key (idPVendedor, idPProduto),
    constraint fk_produto_vendedor foreign key (idPvendedor) references Vendedor(idVendedor),
    constraint fk_produto_produto foreign key (idPproduto) references Produto(idProduto)
);

-- criar tabela Pedido_Produto
CREATE TABLE Pedido_Produto(
	idPPproduto int,
    idPPpedido int,
    Quantidade_Pedido_Produto int default 1,
    Status_Pedido_Produto enum('Disponível', 'Indisponível') default 'Disponível',
    primary key (idPPproduto, idPPpedido),
    constraint fk_produtopedido_produto foreign key (idPPproduto) references Produto(idProduto),
    constraint fk_produtopedido_pedido foreign key (idPPpedido) references Pedido(idPedido)

);

-- criar tabela Estoque_Local
CREATE TABLE Estoque_Local(
	idLocal_Produto int,
    idLocal_Estoque int,
    Local_Estoque varchar(255) not null,
    primary key (idLocal_Produto, idLocal_Estoque),
    constraint fk_estoque_local_produto foreign key (idLocal_Produto) references Produto(idProduto),
    constraint fk_estoque_local_estoque foreign key (idLocal_Estoque) references Estoque(idEstoque)
);

SELECT * FROM Estoque;

-- criar tabela Fornecedor_Produto
CREATE TABLE Fornecedor_Produto(
	idFPFornecedor int,
    idFPProduto int,
    Quantidade_Fornecedor_Produto int not null,
    primary key (idFPFornecedor, idFPProduto),
    constraint fk_produto_fornecedor_fornecedor foreign key (idFPFornecedor) references Fornecedor(idFornecedor),
    constraint fk_produto_fornecedor_produto foreign key (idFPProduto) references Produto(idProduto)
);

SHOW TABLES;

SHOW DATABASES;

USE information_schema;

DESC referential_constraints;

SELECT * FROM referential_constraints WHERE constraint_schema = 'ecommerce';