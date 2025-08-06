CREATE TABLE Clientes (
    id_cliente VARCHAR (6) PRIMARY KEY,
    nome VARCHAR NOT NULL,
    nif INTEGER UNIQUE NOT NULL CHECK (
    	nif BETWEEN 100000000 AND 999999999
    	),
    email VARCHAR UNIQUE NOT NULL CHECK (
    	email LIKE '%@%.%'
    	),
    nr_telemovel TEXT UNIQUE NOT NULL CHECK (
        nr_telemovel LIKE '9[1236][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
	),
    data_nascimento DATE CHECK (
    	LENGTH(data_nascimento) = 10 AND
    	data_nascimento LIKE '20[0-9][0-9]-[0-1][0-9]-[0-3][0-9]'
	), -- formato: 'YYYY-MM-DD'
    volume_medio_consumo REAL,
    ultima_compra VARCHAR CHECK (
    	ultima_compra LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'
    	), -- formato: 'YYYY-MM-DD'
    total_gasto REAL,
    media_consumo_compra REAL,
    newsletter INTEGER CHECK (
    	newsletter IN (0, 1)
    	), -- 0 ou 1
    autorizacao INTEGER CHECK (
    	autorizacao IN (0, 1)
    	), -- 0 ou 1
    canal_aquisicao VARCHAR,
    data_modificacao VARCHAR CHECK (
    	data_modificacao LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'
    	), -- formato: 'YYYY-MM-DD'
    data_criacao VARCHAR CHECK (
    	data_criacao LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'
    	) -- formato: 'YYYY-MM-DD'
); 

CREATE TABLE Produtos (
	id_produto VARCHAR PRIMARY KEY,
	id_cliente VARCHAR,
	designacao VARCHAR UNIQUE NOT NULL,
	descricao VARCHAR,
	tipo_de_produto VARCHAR NOT NULL CHECK (
		tipo_de_produto IN ('cerveja','snacks')
		),
	preco_venda FLOAT NOT NULL,
	quantidade FLOAT NOT NULL,
	stock_atual FLOAT NOT NULL,
	stock_minimo FLOAT NOT NULL,
	data_modificacao VARCHAR CHECK (
    	data_modificacao LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'
    	), -- formato: 'YYYY-MM-DD'
    data_criacao VARCHAR CHECK (
    	data_criacao LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'
    	), -- formato: 'YYYY-MM-DD'
    	FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Avalicao (
    id_cliente VARCHAR PRIMARY KEY,
    id_avaliacao VARCHAR UNIQUE NOT NULL,
    score INTEGER NOT NULL CHECK (
    	score BETWEEN 1 AND 5
    	),
    data_avaliacao VARCHAR NOT NULL CHECK (
    	data_avaliacao LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'
    	), -- formato: 'YYYY-MM-DD'
    comentario VARCHAR CHECK (
    	LENGTH (comentario) <= 300),
    visibilidade INTEGER CHECK (
    	visibilidade IN (0, 1)
    	), -- 0 ou 1
    data_modificacao VARCHAR CHECK (
    	data_modificacao LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'
    	), -- formato: 'YYYY-MM-DD'
    data_criacao VARCHAR CHECK (
    	data_criacao LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'
    	), -- formato: 'YYYY-MM-DD'
    	FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente) 
);

CREATE TABLE Eventos (
    id_evento VARCHAR PRIMARY KEY,
    id_cliente VARCHAR,
    designacao VARCHAR NOT NULL,
    tipo_evento VARCHAR NOT NULL,
    data DATE NOT NULL,
    hora TIME NOT NULL,
    numero_inscritos INTEGER NOT NULL,
    evento_privado INTEGER CHECK (
    	evento_privado IN (0, 1)
    	), -- 0 ou 1
    preco FLOAT NOT NULL,
    data_modificacao VARCHAR CHECK (
    	data_modificacao LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'
    	), -- formato: 'YYYY-MM-DD'
    data_criacao VARCHAR CHECK (
    	data_criacao LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'
    	), -- formato: 'YYYY-MM-DD'
    	FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente) 
);

CREATE TABLE Funcionarios (
    id_funcionario TEXT PRIMARY KEY,
    nome TEXT,
    nif INTEGER UNIQUE NOT NULL CHECK (
        nif BETWEEN 100000000 AND 999999999
    ),
    email TEXT UNIQUE NOT NULL CHECK (
        email LIKE '%@%.%'
    ),
    nr_telemovel TEXT UNIQUE NOT NULL CHECK (
        nr_telemovel LIKE '9[1236][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
    ),
    data_nascimento TEXT CHECK (
        LENGTH(data_nascimento) = 10 AND
        data_nascimento LIKE '20[0-9][0-9]-[0-1][0-9]-[0-3][0-9]'
    ),
    doc_identificacao TEXT NOT NULL CHECK (
        LENGTH(doc_identificacao) = 13 AND
        doc_identificacao LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9] [A-Z][A-Z] [0-9]'
    ),
    morada TEXT,
    iban TEXT NOT NULL CHECK (
        LENGTH(iban) = 25 AND
        iban LIKE 'PT[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
    ),
    funcao TEXT NOT NULL,
    data_modificacao TEXT CHECK (
        LENGTH(data_modificacao) = 10 AND
        data_modificacao LIKE '20[0-9][0-9]-[0-1][0-9]-[0-3][0-9]'
    ),
    data_criacao TEXT CHECK (
        LENGTH(data_criacao) = 10 AND
        data_criacao LIKE '20[0-9][0-9]-[0-1][0-9]-[0-3][0-9]'
    )
);