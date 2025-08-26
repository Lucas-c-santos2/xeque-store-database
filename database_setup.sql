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
    status TEXT DEFAULT 'Pendente' -- Pendente, Processando, Enviado, Entregue, Cancelado
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
('Kit Básico', 'Tabuleiro de vinil, peças de plástico e bolsa de transporte.', 120.00, 'Kits'),
('Livro "Xadrez Básico"', 'Ideal para iniciantes, com todas as regras e táticas fundamentais.', 65.00, 'Livros'),
('Software ChessBase 17', 'O software de banco de dados de xadrez mais poderoso do mercado.', 799.90, 'Software de Xadrez'),
('Mural Magnético de Demonstração', 'Perfeito para aulas e clubes de xadrez.', 450.00, 'Acessórios'),
('Tabuleiro de Luxo em Jacarandá', 'Peça de colecionador, fabricado com as madeiras mais nobres.', 1250.00, 'Tabuleiros de Luxo'),
('Peças Staunton Imperial', 'Design sofisticado, triplamente ponderadas em madeira Rosewood.', 499.50, 'Peças'),
('Software Fritz 18', 'Um dos motores de xadrez mais fortes para análise e treinamento.', 320.00, 'Software de Xadrez'),
('Bolsa de Transporte Premium', 'Bolsa acolchoada para proteger seu kit de xadrez.', 95.80, 'Acessórios'),
('Livro "Táticas de A a Z"', 'Compêndio completo de táticas de xadrez, do básico ao avançado.', 135.40, 'Livros'),
('Tabuleiro de Viagem Magnético', 'Compacto e magnético, ideal para jogar em qualquer lugar.', 75.00, 'Kits'),
('Assinatura Anual Chess.com Diamond', 'Acesso ilimitado a todos os recursos da plataforma.', 350.00, 'Software de Xadrez');


INSERT INTO pedidos (cliente_nome, data_pedido, status) VALUES
('Ana Silva', '2025-08-26', 'Enviado'),
('Bruno Costa', '2025-08-25', 'Processando'),
('Carla Dias', '2025-08-27', 'Pendente'),
('Daniel Fogaça', '2025-08-20', 'Entregue'),
('Eduarda Matos', '2025-08-22', 'Enviado'),
('Fábio Ribeiro', '2025-08-28', 'Pendente'),
('Gabriela Lima', '2025-08-24', 'Cancelado'),
('Heitor Almeida', '2025-08-25', 'Entregue'),
('Ícaro Santos', '2025-08-29', 'Processando'),
('Juliana Paes', '2025-08-26', 'Entregue'),
('Lucas Mendes', '2025-08-30', 'Pendente');

INSERT INTO itens_pedido (pedido_id, produto_id, quantidade) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 1),
(3, 5, 2),
(4, 7, 1), 
(4, 11, 1), 
(5, 6, 1), 
(6, 12, 1), 
(6, 14, 1),
(7, 9, 1), 
(8, 10, 1), 
(9, 15, 1), 
(10, 4, 1), 
(10, 13, 1),
(11, 5, 1); 