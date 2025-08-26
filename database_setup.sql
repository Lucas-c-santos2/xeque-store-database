CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    descricao TEXT,
    preco REAL NOT NULL,
    categoria TEXT
);

CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cliente_nome TEXT NOT NULL,
    data_pedido DATE NOT NULL,
    status TEXT DEFAULT 'Pendente'
);

CREATE TABLE itens_pedido (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pedido_id INTEGER NOT NULL,
    produto_id INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES pedidos (id),
    FOREIGN KEY (produto_id) REFERENCES produtos (id)
);

INSERT INTO produtos (nome, descricao, preco, categoria) VALUES
('Tabuleiro de Ébano Profissional', 'Feito à mão com madeira de ébano e bordo.', 350.00, 'Tabuleiros'),
('Peças Staunton Clássico', 'Conjunto de peças ponderadas com feltro na base.', 150.50, 'Peças'),
('Relógio Digital DGT 3000', 'O relógio de xadrez oficial da FIDE, com múltiplos modos de tempo.', 250.75, 'Acessórios'),
('Livro "Meu Sistema"', 'Um clássico da literatura enxadrística para aprimorar sua estratégia.', 89.90, 'Livros'),
('Kit Básico', 'Tabuleiro de vinil, peças de plástico e bolsa de transporte.', 120.00, 'Kits');

INSERT INTO pedidos (cliente_nome, data_pedido, status) VALUES
('Ana Silva', '2025-08-26', 'Enviado'),
('Bruno Costa', '2025-08-25', 'Processando'),
('Carla Dias', '2025-08-27', 'Pendente');

INSERT INTO itens_pedido (pedido_id, produto_id, quantidade) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 1),
(3, 5, 2);