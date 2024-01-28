-- Criação da tabela de autores
CREATE TABLE autores (
    id_autor INTEGER PRIMARY KEY,
    nome_autor VARCHAR(100) NOT NULL,
    total_livros INTEGER DEFAULT 0
);

-- Criação da tabela de livros
CREATE TABLE livros (
    id_livro INTEGER PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    id_autor INTEGER,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

-- Trigger para atualizar o total de livros de um autor
CREATE TRIGGER atualizar_total_livros
AFTER INSERT ON livros
BEGIN
    UPDATE autores
    SET total_livros = total_livros + 1
    WHERE id_autor = NEW.id_autor;
END;

-- Inserção de dados na tabela de autores
INSERT INTO autores (nome_autor) VALUES
    ('José Saramago'),
    ('Gabriel García Márquez'),
    ('Haruki Murakami');

-- Inserção de dados na tabela de livros (o trigger será acionado automaticamente)
INSERT INTO livros (titulo, id_autor) VALUES
    ('Ensaio sobre a cegueira', 1),
    ('Cem Anos de Solidão', 2),
    ('Norwegian Wood', 3);

-- Consulta para verificar os totais de livros de cada autor
SELECT * FROM autores;
