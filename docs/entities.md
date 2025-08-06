Cliente(
  id_cliente INTEGER PRIMARY KEY, 
  nome TEXT, 
  nif TEXT, 
  email TEXT, 
  nr_telemovel TEXT, 
  data_nascimento DATE, 
  data_registo DATE, 
  frequencia_visitas INTEGER, 
  volume_medio_consumo REAL, 
  produtos_favoritos TEXT, 
  ultima_compra DATE, 
  total_gasto REAL, 
  media_consumo_compra REAL, 
  newsletter INTEGER,        -- 0/1 (BOOLEAN in SQLite)
  canal_aquisicao TEXT, 
  data_modificacao DATE, 
  data_criacao DATE
)

Evento(
  id_evento INTEGER PRIMARY KEY, 
  designacao TEXT, 
  descricao TEXT, 
  tipo_evento TEXT, 
  data DATE, 
  hora TEXT,                -- SQLite has no TIME type, use TEXT (HH:MM:SS)
  numero_inscritos INTEGER, 
  evento_privado INTEGER,   -- 0/1 (BOOLEAN in SQLite)
  preco REAL, 
  data_modificacao DATE, 
  data_criacao DATE
)

Produto(
  id_produto INTEGER PRIMARY KEY, 
  designacao TEXT, 
  descricao TEXT, 
  tipo_produto TEXT, 
  data DATE, 
  hora TEXT, 
  stock_atual INTEGER, 
  stock_minimo INTEGER, 
  preco_compra REAL, 
  preco_venda REAL, 
  id_fornecedor INTEGER, 
  data_modificacao DATE, 
  data_criacao DATE
)

Fornecedor(
  id_fornecedor INTEGER PRIMARY KEY, 
  nome_empresa TEXT, 
  pessoa_contacto TEXT, 
  nif TEXT, 
  email TEXT, 
  telemovel TEXT, 
  morada TEXT, 
  pais TEXT, 
  tipo_fornecedor TEXT, 
  produtos_fornecidos TEXT, 
  data_modificacao DATE, 
  data_criacao DATE
)

Funcionario(
  id_funcionario INTEGER PRIMARY KEY, 
  nome TEXT, 
  nif TEXT, 
  email TEXT, 
  nr_telemovel TEXT, 
  data_nascimento DATE, 
  identificacao TEXT, 
  morada TEXT, 
  iban TEXT, 
  funcao TEXT, 
  data_modificacao DATE, 
  data_criacao DATE
)

Economato(
  id_item INTEGER PRIMARY KEY, 
  nome_do_item TEXT, 
  quantidade INTEGER, 
  tipo TEXT, 
  limite_minimo_stock INTEGER, 
  id_fornecedor INTEGER, 
  data_modificacao DATE, 
  data_criacao DATE
)

Avaliacao(
  id_avaliacao INTEGER PRIMARY KEY, 
  score INTEGER, 
  data_avaliacao DATE, 
  comentario TEXT, 
  visibilidade INTEGER,     -- 0/1 (BOOLEAN in SQLite)
  id_cliente INTEGER, 
  data_modificacao DATE, 
  data_criacao DATE
)

Pagamento(
  id_pagamento INTEGER PRIMARY KEY, 
  valor REAL, 
  moeda TEXT, 
  data_pagamento DATE, 
  hora_pagamento TEXT, 
  metodo_pagamento TEXT, 
  estado_pagamento TEXT, 
  preco_compra REAL, 
  preco_venda REAL, 
  fornecedor TEXT,          -- Use id_fornecedor INTEGER if relates to Fornecedor
  imagem TEXT,              -- File path or filename
  id_cliente INTEGER, 
  data_criacao DATE
)

Encomenda(
  id_encomenda INTEGER PRIMARY KEY, 
  id_produto INTEGER, 
  id_fornecedor INTEGER, 
  valor REAL, 
  metodo_pagamento TEXT, 
  estado_pagamento TEXT, 
  preco_compra REAL, 
  preco_venda REAL, 
  moeda TEXT, 
  data_encomenda DATE, 
  data_prevista_entrega DATE
)