CREATE TABLE quarto (
	numero INT NOT NULL PRIMARY KEY,
  	valor_diaria FLOAT not NULL,
  	vista_mar BOOLEAN
);

CREATE TABLE cliente(
  	ID SERIAL PRIMARY KEY,
	nome VARCHAR(100),
  	rg VARCHAR (12),
  	telefone VARCHAR (15) not NULL 
);

INSERT into quarto (numero, valor_diaria, vista_mar) VALUES
	(101, 74.99, TRUE),
    (102, 54.50, FALSE),
    (201, 110, TRUE);
  
SELECT * FROM quarto

INSERT into cliente (nome, rg, telefone) VALUES
	('João Pereira', '123456789', '(11)98765432'),
    ('Rafael Alves', '234567890', '(12)87654321');
    
select * from cliente  

CREATE TABLE estadia (
  	ID SERIAL PRIMARY KEY,
	fk_id_quarto INT NOT NULL,
  	fk_id_cliente INT NOT NULL,
  CONSTRAINT fk_quarto FOREIGN KEY (fk_id_quarto) REFERENCES quarto (numero),
  CONSTRAINT fk_cliente FOREIGN KEY (fk_id_cliente) REFERENCES cliente (id)
);

INSERT into estadia (fk_id_quarto, fk_id_cliente) VALUES
	(101, 1),
    (102, 2),
    (201, 1),
    (102, 2);
    
SELECT * from estadia

CREATE TABLE meio_pagamento(
	id SERIAL PRIMARY KEY,
    nome VARCHAR (18) NOT NULL
);

INSERT into meio_pagamento(nome) VALUES
	('dinheiro'),
    ('cartão de crédito'),
    ('cartão de débito')
    
alter TABLE estadia
	add COLUMN data_entrada VARCHAR(48),
    add COLUMN data_saida VARCHAR(48),
    add COLUMN valor_total FLOAT,
    add COLUMN fk_id_meio_pagamento INT,
    add CONSTRAINT fk_meio_pagamento FOREIGN KEY (fk_id_meio_pagamento)
    	REFERENCES meio_pagamento(id);
        
SELECT * from estadia

update estadia
	set data_entrada = '2024-01-18t08:54:00',
    data_saida = '2024-01-24t08:54:00',
    valor_total = 750.50,
    fk_id_meio_pagamento = 2
    WHERE id = 10
    



    
    
    

    















    