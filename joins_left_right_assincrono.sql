CREATE TABLE cliente (
	id SERIAL PRIMARY KEY,
  	nome VARCHAR (16) not NULL,
  	sobrenome VARCHAR (50) NOT NULL,
  	idade INT,
  	pais VARCHAR (4)
);

CREATE TABLE produto (
	ID SERIAL PRIMARY KEY,
  	item VARCHAR(48) not NULL,
  	marca VARCHAR (24) not NULL
);

CREATE TABLE pedido (
	ID SERIAL PRIMARY KEY,
  	fk_id_cliente INT NOT NULL,
  	fk_id_produto INT NOt NULL,
  	quantidade INT NOT NULL,
  	CONSTRAINT fk_cliente FOREIGN KEY (fk_id_cliente) REFERENCES cliente(id),
  	CONSTRAINT fk_produto FOREIGN key (fk_id_produto) REFERENCES produto(id)
);

INSERT into cliente (nome, sobrenome, idade, pais) VALUES
	('João', 'Alves', 48, 'BR'),
    ('Roberto', 'Garcia', 36, 'MX'),
    ('Dario', 'Rubens', 39, 'ARG'),
    ('Julia', 'Lopes', 28, 'PE'),
    ('Rebeca', 'Goglio', 54, 'IT');
    
insert into produto (item, marca) VALUES
	('teclado', 'Logitech'),
    ('mouse', 'HP'),
    ('monitor', 'LG'),
    ('mousepad', 'Logitech');
    
INSERT into pedido (fk_id_produto, fk_id_cliente, quantidade) VALUES
	(1, 4, 200),
    (2, 4, 800),
    (3, 3, 100),
    (1, 1, 400),
    (4, 2, 1200);
    
select * from pedido
	RIGHT JOIN cliente
    on pedido.fk_id_cliente = cliente.id;
    
select * from pedido
	RIGHT JOIN cliente
    on pedido.fk_id_cliente = cliente.id
    LEFT join produto
    on fk_id_produto = produto.id;

select nome, sobrenome, cliente.id AS id_cliente, quantidade, item,
	pedido.id AS id_pedido 
    from pedido
	RIGHT JOIN cliente
    on pedido.fk_id_cliente = cliente.id
    LEFT join produto
    on fk_id_produto = produto.id;    