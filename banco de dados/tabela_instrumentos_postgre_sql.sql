CREATE TABLE instrumento (
	id_instrumento SERIAL PRIMARY KEY,
  	nome VARCHAR (16) NOT NULL,
  	preco FLOAT not NULL,
  	em_promocao BOOLEAN
)

INSERT INTO instrumento(nome, preco, em_promocao) VALUES ('sanfona', 1849.99, FALSE)

SELECT nome, preco, em_promocao FROM instrumento WHERE (preco > 150)