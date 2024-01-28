create table artista (
	id SERIAL PRIMARY KEY,
  	nome VARCHAR(28) UNIQUE
);

INSERT into artista (nome) VALUES
 ('Tom Jobim'),
 ('Elis Regina');
 
 CREATE TABLE musica (
 	id SERIAL PRIMARY KEY,
   	nome VARCHAR (30) NOT NULL,
   	duracao_seg INT NOT NULL
 );
 
 Insert into musica(nome, duracao_seg) VALUES ('Águas de Março', 210);
 
 create table artista_musica (
 	fk_id_artista INT NOT NULL,
   	fk_id_musica INT NOT NULL,
   	CONSTRAINT artista_musica_pk PRIMARY KEY (fk_id_artista, fk_id_musica),
   	CONSTRAINT fk_artista FOREIGN KEY(fk_id_artista) REFERENCES artista(id),
    CONSTRAINT fk_musica FOREIGN KEY (fk_id_musica) REFERENCES musica(id)
);

INSERT into artista_musica (fk_id_artista, fk_id_musica) VALUES
	(1,1),
    (2,1);
    
SELECT * from artista_musica
    

