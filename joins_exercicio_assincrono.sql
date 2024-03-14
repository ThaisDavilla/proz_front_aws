CREATE TABLE cliente (
	id SERIAL PRIMARY KEY,
  	nome VARCHAR (16) not NULL,
  	sobrenome VARCHAR (50) NOT NULL,
  	idade INT,
  	pais VARCHAR (4)
);

CREATE TABLE pedido (
	ID SERIAL PRIMARY KEY,
  	item VARCHAR (48) NOT NULL,
  	quantidade INT NOT NULL,
  	fk_id_cliente INT NOt NULL,
  	CONSTRAINT fk_cliente FOREIGN KEY (fk_id_cliente) REFERENCES cliente(id)
);

INSERT into cliente (nome, sobrenome, idade, pais) VALUES
	('João', 'Alves', 48, 'BR'),
    ('Roberto', 'Garcia', 36, 'MX'),
    ('Dario', 'Rubens', 39, 'ARG'),
    ('Julia', 'Lopes', 28, 'PE'),
    ('Rebeca', 'Goglio', 54, 'IT');
    
INSERT into pedido (item, quantidade, fk_id_cliente) VALUES
	('teclado', 1, 4),
    ('mouse', 2, 4),
    ('monitor', 8, 3),
    ('teclado', 1, 1),
    ('mousepad', 4, 2);
    
select * from pedido 
 	inner JOIN cliente
    on pedido.fk_id_cliente = cliente.id;
    
SELECT * from pedido
	right JOIN cliente
    on pedido.fk_id_cliente = cliente.id;
    
SELECT * from pedido
	RIGHT join cliente
    on pedido.fk_id_cliente = cliente.id
    WHERE pedido.id IS NULL;
    
SELECT * from pedido
	RIGHT join cliente
    on pedido.fk_id_cliente = cliente.id
    WHERE cliente.id = 1;
    
SELECT * from pedido
	RIGHT join cliente
    on pedido.fk_id_cliente = cliente.id
    WHERE pedido.item = 'teclado';
    
select item, nome, pais from pedido
	RIGHT join cliente
    on pedido.fk_id_cliente = cliente.id
    WHERE cliente.id = 1;
    
select pedido.id, cliente.id from pedido
	RIGHT join cliente
    on pedido.fk_id_cliente = cliente.id
    WHERE cliente.id = 1;
    
select pedido.id AS id_pedido, cliente.id AS id_cliente from pedido
	RIGHT join cliente
    on pedido.fk_id_cliente = cliente.id
    WHERE cliente.id = 1;
    

 