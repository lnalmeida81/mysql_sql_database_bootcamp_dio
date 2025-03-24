-- queries
USE ecommerce;

SHOW TABLES;

SELECT count(*) FROM Cliente;
SELECT * FROM Cliente AS c, Pedido AS P WHERE c.idClientE = idClientePedido;

SELECT Nome, Nome_do_meio, Sobrenome, idPedido, Status_Pedido FROM Cliente c, Pedido p WHERE c.idCliente = idClientePedido;
SELECT concat(Nome,' ', Nome_do_meio,' ', Sobrenome) AS Cliente, idPedido AS Pedido, Status_Pedido FROM Cliente c, Pedido p WHERE c.idCliente = idClientePedido;
                             
SELECT count(*) FROM Cliente c, Pedido p
WHERE c.idCliente = idClientePedido;

SELECT * FROM Pedido;

-- recuperação de pedido com produto associado
SELECT * FROM  Cliente c, Pedido p
			INNER JOIN Pedido ON idCliente = idClientePedido
			INNER JOIN Pedido_Produto ON idPPproduto = idPedido
		GROUP BY idCliente; 
        
-- Recuperar quantos pedidos foram realizados pelos clientes?
SELECT c.idCliente, Nome, count(*) AS Número_de_pedidos FROM Cliente c 
			INNER JOIN Pedido p ON c.idCliente = p.idClientePedido
		GROUP BY idCliente; 
