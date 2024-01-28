CREATE TABLE aluno (
	id_aluno SERIAL PRIMARY KEY,
  	nome VARCHAR (64) NOT NULL,
  	matricula INT not NULL,
  	email VARCHAR (64) not NULL,
    endereco VARCHAR (120) not NULL,
  	telefone INT not NULL
)

INSERT into aluno(nome, matricula, email, endereco, telefone)
    VALUES ('Paulo André', 3456, 'Pandr@gmail.com', 'Rua do Sol', 78254495)
    
SELECT * from aluno
    
    
    