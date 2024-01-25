CREATE TABLE sabores_pizza (
    id_pizza INTEGER PRIMARY KEY AUTOINCREMENT,
    sabor VARCHAR(50) NOT NULL,
    preco DECIMAL(5,2) NOT NULL
);

INSERT INTO sabores_pizza (sabor, preco) 
 VALUES
    ('Margherita', 25.00),
    ('Pepperoni', 28.00),
    ('Calabresa', 27.00),
    ('Quatro Queijos', 30.00),
    ('Frango com Catupiry', 32.00);
    
CREATE TABLE tipos_refrigerante (
    id_refrigerante INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo VARCHAR(50) NOT NULL,
    volume_litros DECIMAL(3,1) NOT NULL
);

INSERT INTO tipos_refrigerante (tipo, volume_litros) 
 VALUES
    ('Coca-Cola', 2.0),
    ('Guaraná Antarctica', 2.5),
    ('Sprite', 1.5);
    
CREATE TABLE clientes (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL
);

INSERT INTO clientes (nome, telefone) 
 VALUES
    ('João Silva', '(11) 1234-5678'),
    ('Maria Oliveira', '(21) 9876-5432'),
    ('Carlos Santos', '(31) 8765-4321'),
    ('Ana Souza', '(41) 2345-6789'),
    ('Pedro Rocha', '(51) 7654-3210'),
    ('Julia Lima', '(61) 8765-4321'),
    ('Marcos Pereira', '(71) 3456-7890'),
    ('Camila Almeida', '(81) 9876-5432'),
    ('Roberto Costa', '(91) 2345-6789'),
    ('Isabela Oliveira', '(12) 8765-4321');
    
CREATE TABLE pedidos (
    id_pedido INTEGER PRIMARY KEY AUTOINCREMENT,
    id_cliente INTEGER,
    id_pizza INTEGER,
    id_refrigerante INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_pizza) REFERENCES sabores_pizza(id_pizza),
    FOREIGN KEY (id_refrigerante) REFERENCES tipos_refrigerante(id_refrigerante)
);   

-- Inserção de dados na tabela de pedidos
INSERT INTO pedidos (id_cliente, id_pizza, id_refrigerante) 
 VALUES
    (1, 1, 1), -- João Silva pediu uma Margherita e uma Coca-Cola
    (2, 3, 2), -- Maria Oliveira pediu uma Calabresa e um Guaraná Antarctica
    (3, 2, 3); -- Carlos Santos pediu uma Pepperoni e um Sprite
    
-- Consulta para obter os pedidos de pizza de cada cliente
SELECT clientes.nome, sabores_pizza.sabor
FROM clientes
JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente
JOIN sabores_pizza ON pedidos.id_pizza = sabores_pizza.id_pizza;

-- Consulta para obter os pedidos de refrigerante de cada cliente
SELECT clientes.nome, tipos_refrigerante.tipo
FROM clientes
JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente
JOIN tipos_refrigerante ON pedidos.id_refrigerante = tipos_refrigerante.id_refrigerante;


