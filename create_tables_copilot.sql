CREATE TABLE Clientes (
    id_cliente VARCHAR(6) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nif INTEGER UNIQUE NOT NULL CHECK (nif BETWEEN 100000000 AND 399999999),
    email VARCHAR(100) UNIQUE NOT NULL CHECK (email LIKE '%@%.%'),
    nr_telemovel VARCHAR(9) UNIQUE NOT NULL CHECK (
        (nr_telemovel LIKE '91%' OR nr_telemovel LIKE '92%' OR nr_telemovel LIKE '93%' OR nr_telemovel LIKE '96%')
        AND LENGTH(nr_telemovel) = 9
    ),
    data_nascimento TEXT CHECK (data_nascimento LIKE '____-__-__'),
    newsletter INTEGER NOT NULL DEFAULT 0 CHECK (newsletter IN (0,1)),
    autorizacao INTEGER NOT NULL DEFAULT 0 CHECK (autorizacao IN (0,1)),
    canal_aquisicao VARCHAR(100) CHECK (
        canal_aquisicao IN ('Instagram', 'Facebook', 'Tik Tok', 'Google', 'Eventos', 'TheFork', 'Email Marketing', 'Recomendação Amigo')
    ),
    data_modificacao TEXT NOT NULL DEFAULT (datetime('now')),
    data_criacao TEXT NOT NULL DEFAULT (datetime('now'))
);

CREATE TABLE Produtos (
    id_produto VARCHAR(6) PRIMARY KEY,
    designacao VARCHAR(100) UNIQUE NOT NULL,
    descricao TEXT,
    tipo_de_produto VARCHAR(20) NOT NULL CHECK (tipo_de_produto IN ('cerveja', 'snacks')),
    preco_venda REAL NOT NULL,
    quantidade REAL NOT NULL,
    stock_atual REAL NOT NULL,
    stock_minimo REAL NOT NULL,
    data_modificacao TEXT DEFAULT (datetime('now')),
    data_criacao TEXT DEFAULT (datetime('now'))
);

ALTER TABLE Produtos
ADD COLUMN preco_compra REAL; -- Adiciona a coluna preco_compra. Guarda o preço de compra do produto.

CREATE TABLE Funcionarios (
    id_funcionario VARCHAR(6) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    doc_identificacao VARCHAR(12) NOT NULL,
    nif INTEGER UNIQUE NOT NULL CHECK (nif BETWEEN 100000000 AND 399999999),
    email VARCHAR(100) UNIQUE NOT NULL CHECK (email LIKE '%@%.%'),
    nr_telemovel VARCHAR(9) UNIQUE NOT NULL CHECK (
        (nr_telemovel LIKE '91%' OR nr_telemovel LIKE '92%' OR nr_telemovel LIKE '93%' OR nr_telemovel LIKE '96%')
        AND LENGTH(nr_telemovel) = 9
    ),
    funcao VARCHAR(50) NOT NULL,
    data_nascimento TEXT,
    morada TEXT,
    iban VARCHAR(25) NOT NULL CHECK (iban LIKE 'PT%' AND LENGTH(iban)=25),
    data_modificacao TEXT DEFAULT (datetime('now')),
    data_criacao TEXT DEFAULT (datetime('now'))
);

CREATE TABLE Fornecedores (
    id_fornecedor VARCHAR(6) PRIMARY KEY,
    nome_empresa VARCHAR(100) NOT NULL,
    nif INTEGER UNIQUE NOT NULL CHECK (nif BETWEEN 500000000 AND 599999999),
    email VARCHAR(100) UNIQUE NOT NULL CHECK (email LIKE '%@%.%'),
    nr_telemovel VARCHAR(9) UNIQUE NOT NULL CHECK (
        (nr_telemovel LIKE '91%' OR nr_telemovel LIKE '92%' OR nr_telemovel LIKE '93%' OR nr_telemovel LIKE '96%')
        AND LENGTH(nr_telemovel) = 9
    ),
    pessoa_contacto VARCHAR(100),
    morada TEXT,
    pais VARCHAR(50),
    data_modificacao TEXT DEFAULT (datetime('now')),
    data_criacao TEXT DEFAULT (datetime('now'))
);

CREATE TABLE Avaliacao (
    id_cliente VARCHAR(6) PRIMARY KEY,
    avaliacao INTEGER CHECK (avaliacao BETWEEN 1 AND 5),
    comentario TEXT,
    visibilidade INTEGER NOT NULL DEFAULT 1 CHECK (visibilidade IN (0,1)),
    data_avaliacao TEXT DEFAULT (datetime('now')),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Eventos (
    id_evento VARCHAR(6) PRIMARY KEY,
    designacao VARCHAR(100) NOT NULL,
    descricao TEXT,
    tipo_de_evento VARCHAR(50) NOT NULL CHECK (tipo_de_evento IN ('festa', 'workshop', 'lançamento', 'outro')),
    data_evento TEXT NOT NULL,
    hora_evento TEXT NOT NULL,
    localizacao VARCHAR(100),
    capacidade INTEGER NOT NULL CHECK (capacidade > 0),
    evento_privado INTEGER NOT NULL DEFAULT 0 CHECK (evento_privado IN (0,1)),
    preco REAL,
    data_modificacao TEXT DEFAULT (datetime('now')),
    data_criacao TEXT DEFAULT (datetime('now'))
);

CREATE TABLE Participacoes_Evento (
    id_evento VARCHAR(6) NOT NULL,
    id_cliente VARCHAR(6) NOT NULL,
    data_inscricao TEXT DEFAULT (datetime('now')),
    PRIMARY KEY (id_evento, id_cliente),
    FOREIGN KEY (id_evento) REFERENCES Eventos(id_evento),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Pagamentos (
    id_pagamento VARCHAR(6) PRIMARY KEY,
    id_produto VARCHAR(6),
    id_cliente VARCHAR(6),
    id_funcionario VARCHAR(6),
    quantidade INTEGER NOT NULL CHECK (quantidade > 0),
    valor REAL NOT NULL,
    moeda VARCHAR(3) NOT NULL CHECK (moeda IN ('EUR', 'USD', 'GBP')),
    metodo_pagamento VARCHAR(20) NOT NULL CHECK (metodo_pagamento IN ('cartao', 'transferencia', 'dinheiro')),
    estado_pagamento VARCHAR(20) NOT NULL CHECK (estado_pagamento IN ('pendente', 'concluido', 'cancelado')),
    data_pagamento TEXT DEFAULT (datetime('now')),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario)
);

CREATE TABLE Itens_Pagamento (
    id_pagamento VARCHAR(6),
    id_produto VARCHAR(6),
    quantidade INTEGER NOT NULL CHECK (quantidade > 0),
    preco_unitario REAL NOT NULL,
    PRIMARY KEY (id_pagamento, id_produto),
    FOREIGN KEY (id_pagamento) REFERENCES Pagamentos(id_pagamento),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

CREATE TABLE encomendas (
    id_encomenda VARCHAR(6) PRIMARY KEY,
    id_fornecedor VARCHAR(6),
    id_funcionario VARCHAR(6),
    moeda VARCHAR(3) NOT NULL CHECK (moeda IN ('EUR', 'USD', 'GBP')),
    metodo_pagamento VARCHAR(20) NOT NULL CHECK (metodo_pagamento IN ('cartao', 'transferencia', 'dinheiro')),
    estado_pagamento VARCHAR(20) NOT NULL CHECK (estado_pagamento IN ('pendente', 'concluido', 'cancelado')),
    estado_encomenda VARCHAR(20) NOT NULL CHECK (estado_encomenda IN ('pendente', 'processando', 'enviado', 'entregue', 'cancelado')),
    data_encomenda TEXT DEFAULT (datetime('now')),
    data_modificacao TEXT DEFAULT (datetime('now')),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedores(id_fornecedor),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario)
);

CREATE TABLE encomendas_itens (
    id_encomenda VARCHAR(6),
    id_produto VARCHAR(6),
    quantidade INTEGER NOT NULL CHECK (quantidade > 0),
    valor_unitario REAL NOT NULL,
    PRIMARY KEY (id_encomenda, id_produto),
    FOREIGN KEY (id_encomenda) REFERENCES encomendas(id_encomenda),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);