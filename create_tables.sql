CREATE TABLE Clientes (
    id_cliente VARCHAR(6) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nif INTEGER UNIQUE NOT NULL CHECK (
        nif BETWEEN 100000000 AND 399999999
    ),
    email VARCHAR(100) UNIQUE NOT NULL CHECK (
        email LIKE '%@%.%'
    ),
    nr_telemovel VARCHAR(9) UNIQUE NOT NULL CHECK (
         (nr_telemovel LIKE '91%') OR
         (nr_telemovel LIKE '92%') OR
         (nr_telemovel LIKE '93%') OR
         (nr_telemovel LIKE '96%') AND 
         LENGTH(nr_telemovel) = 9
    ),
    data_nascimento DATE CHECK (
    	data_nascimento <= CURRENT_DATE AND 
    	data_nascimento LIKE '____-__-__'
    	),
    newsletter BOOLEAN NOT NULL DEFAULT FALSE,
    autorizacao BOOLEAN NOT NULL DEFAULT FALSE,
    canal_aquisicao VARCHAR(100) CHECK (
    	canal_aquisicao IN ('Instagram', 'Facebook', 'Tik Tok', 'Google', 'Eventos', 'TheFork', 'Email Marketing', 'Recomendação Amigo')
    	),  
    data_modificacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Produtos (
    id_produto VARCHAR(6) PRIMARY KEY,
    designacao VARCHAR(100) UNIQUE NOT NULL,
    descricao TEXT,
    tipo_de_produto VARCHAR(20) NOT NULL CHECK (
        tipo_de_produto IN ('cerveja', 'snacks')
    ),
    preco_venda DECIMAL(10,2) NOT NULL,
    quantidade FLOAT NOT NULL,
    stock_atual FLOAT NOT NULL,
    stock_minimo FLOAT NOT NULL,
    data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Funcionarios (
    id_funcionario VARCHAR(6) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    doc_identificacao VARCHAR(12) NOT NULL CHECK (
	  doc_identificacao LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9] [A-Z][A-Z] [0-9]'
	),
    nif INTEGER UNIQUE NOT NULL CHECK (
        nif BETWEEN 100000000 AND 999999999
    ),
    email VARCHAR(100) UNIQUE NOT NULL CHECK (
        email LIKE '%@%.%'
    ),
    nr_telemovel VARCHAR(9) UNIQUE NOT NULL CHECK (
         (nr_telemovel LIKE '91%') OR
         (nr_telemovel LIKE '92%') OR
         (nr_telemovel LIKE '93%') OR
         (nr_telemovel LIKE '96%') AND 
         LENGTH(nr_telemovel) = 9
    ),
    funcao VARCHAR(50) NOT NULL,
    data_nascimento DATE,
    morada TEXT,
    iban VARCHAR(25) NOT NULL CHECK (
        iban LIKE 'PT%' AND LENGTH(iban)=25
    ),
    data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Fornecedores (
    id_fornecedor VARCHAR(6) PRIMARY KEY,
    nome_empresa VARCHAR(100) NOT NULL,
    nif INTEGER UNIQUE NOT NULL CHECK (
        nif BETWEEN 100000000 AND 999999999
    ),
    email VARCHAR(100) UNIQUE NOT NULL CHECK (
        email LIKE '%@%.%'
    ),
    nr_telemovel VARCHAR(9) UNIQUE NOT NULL CHECK (
        nr_telemovel LIKE '9[1236]%' AND LENGTH(nr_telemovel)=9
    ),
    pessoa_contacto VARCHAR(100),
    morada TEXT,
    pais VARCHAR(50),
    data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Avaliacao (
    id_cliente VARCHAR(6) PRIMARY KEY,
    avaliacao INTEGER CHECK (avaliacao BETWEEN 1 AND 5),
    comentario TEXT,
    visibilidade BOOLEAN NOT NULL DEFAULT TRUE,
    data_avaliacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
CREATE TABLE Eventos (
    id_evento VARCHAR(6) PRIMARY KEY,
    id_cliente VARCHAR(6),
    designacao VARCHAR(100) NOT NULL,
    descricao TEXT,
    tipo_de_evento VARCHAR(50) NOT NULL CHECK (
        tipo_de_evento IN ('festa', 'workshop', 'lançamento', 'exposicoes')
    ),
    data_evento DATE NOT NULL CHECK (
        data_evento >= CURRENT_DATE
    ),
    hora_evento TIME NOT NULL,
    localizacao VARCHAR(100),
    capacidade INTEGER NOT NULL CHECK (capacidade > 0),
    evento_privado BOOLEAN NOT NULL DEFAULT FALSE,
    preco DECIMAL(10,2) NOT NULL,    
    data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
CREATE TABLE Pagamentos (
    id_pagamento VARCHAR(6) PRIMARY KEY,
    id_produto VARCHAR(6),
    id_cliente VARCHAR(6),
    id_funcionario VARCHAR(6),
    quantidade INTEGER NOT NULL CHECK (quantidade > 0),
    valor DECIMAL(10,2) NOT NULL,
    moeda VARCHAR(3) NOT NULL CHECK (
        moeda IN ('EUR', 'USD', 'GBP')
    ),
    metodo_pagamento VARCHAR(20) NOT NULL CHECK (
        metodo_pagamento IN ('cartao', 'transferencia', 'dinheiro')
    ),
    estado_pagamento VARCHAR(20) NOT NULL CHECK (
        estado_pagamento IN ('pendente', 'concluido', 'cancelado')
    ),
    data_pagamento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario)
);
CREATE TABLE encomendas (
    id_encomenda VARCHAR(6) PRIMARY KEY,
    id_produto VARCHAR(6),
    id_fornecedor VARCHAR(6),
    if_funcionario VARCHAR(6),
    quantidade INTEGER NOT NULL CHECK (quantidade > 0),
    valor DECIMAL(10,2) NOT NULL,
    moeda VARCHAR(3) NOT NULL CHECK (
        moeda IN ('EUR', 'USD', 'GBP')
    ),
    metodo_pagamento VARCHAR(20) NOT NULL CHECK (
        metodo_pagamento IN ('cartao', 'transferencia', 'dinheiro')
    ),
    estado_pagamento VARCHAR(20) NOT NULL CHECK (
        estado_pagamento IN ('pendente', 'concluido', 'cancelado')
    ),
    estado_encomenda VARCHAR(20) NOT NULL CHECK (
        estado_encomenda IN ('pendente', 'processando', 'enviado', 'entregue', 'cancelado')
    ),
    data_encomenda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedores(id_fornecedor),
    FOREIGN KEY (if_funcionario) REFERENCES Funcionarios(id_funcionario)
)