# 🗃️ Entidades do Sistema - Malta Brew Taproom

Este documento descreve as entidades principais do sistema e os seus respetivos atributos, com base no modelo relacional em SQLite.

---

## 📌 Cliente

```sql
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
  newsletter INTEGER,        -- 0/1 (BOOLEAN em SQLite)
  canal_aquisicao TEXT, 
  data_modificacao DATE, 
  data_criacao DATE
)
```
## 🎉 Evento

```sql
Evento(
  id_evento INTEGER PRIMARY KEY, 
  designacao TEXT, 
  descricao TEXT, 
  tipo_evento TEXT, 
  data DATE, 
  hora TEXT,                -- SQLite não tem tipo TIME. Use TEXT (HH:MM:SS)
  numero_inscritos INTEGER, 
  evento_privado INTEGER,   -- 0/1 (BOOLEAN em SQLite)
  preco REAL, 
  data_modificacao DATE, 
  data_criacao DATE
)
```
## 🍺 Produto

```sql
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
```

## 🏭 Fornecedor

```sql
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
```

## 👨‍🔧 Funcionário

```sql
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
```
## ⭐ Avaliação

```sql
Avaliacao(
  id_avaliacao INTEGER PRIMARY KEY, 
  score INTEGER, 
  data_avaliacao DATE, 
  comentario TEXT, 
  visibilidade INTEGER,     -- 0/1 (BOOLEAN em SQLite)
  id_cliente INTEGER, 
  data_modificacao DATE, 
  data_criacao DATE
)
```
## 💳 Pagamento

```sql
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
  fornecedor TEXT,          -- Use id_fornecedor INTEGER se for relação direta
  imagem TEXT,              -- Caminho do ficheiro ou nome do ficheiro
  id_cliente INTEGER, 
  data_criacao DATE
)
```
## 📦 Encomenda

```sql
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
```



