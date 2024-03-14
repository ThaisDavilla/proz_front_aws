DROP TABLE gravacao

ALTER TABLE musica 
	ADD COLUMN duracao_seg INT not NULL;
    
INSERT INTO artista(nome) VALUES 
	('Marisa Monte'),
    ('Skank'),
    ('Raul Seixas');
    
SELECT * from artista    
    
INSERT INTO musica(nome, duracao_seg) VALUES
	('Feliz, Alegre e Forte', 257),
    ('Algo Parecido', 346),
    ('Metamorfose Ambulante', 352);
    
SELECT * from musica

alter TABLE musica
	ADD COLUMN fk_id_artista INT, 
    add CONSTRAINT fk_artista FOREIGN KEY (fk_id_artista)
    REFERENCES artista (ID)
    
UPDATE musica
set fk_id_artista = 1
WHERE nome = 'Feliz, Alegre e Forte'

SELECT * FROM musica

UPDATE musica
set fk_id_artista = 2
WHERE nome = 'Algo Parecido'

SELECT * FROM musica

UPDATE musica
set fk_id_artista = 3
WHERE nome = 'Metamorfose Ambulante'

SELECT * FROM musica

ALTER TABLE musica
DROP CONSTRAINT fk_artista

alter TABLE musica
ADD CONSTRAINT fk_artista FOREIGN key (fk_id_artista)
REFERENCES artista (ID)
on DELETE CASCADE

SELECT * FROM musica

DELETE from artista
WHERE ID = 3
