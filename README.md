# 📁 Data Management and Storage

## Index

- [Introduction](docs/introduction.md)
- [Functional Requirements](docs/functional-requirements.md)
- [Entities and Atributes](docs/entities-atributes.md)
- [Entities Relational Diagram](docs/entities-atributes.md)
- [Relational Databases](docs/relational-databases.md)
- [Normalization](docs/normalization.md)
- [SQL Queries](examples/sql-queries.md)
- [ER Diagrams](images/er-diagram.png)

## 1. Introduction

### 1.1 Company Name

Malta Brew, Taproom

### 1.2 CAE and Area of Activity

- CAE: 47250 - Retail trade of beverages in specialized establishments.
- Area of activity: Sale of craft beers and complementary products, thematic event organization, and experiences related to beer culture.

### 1.3 Company Objectives

The central objective is to transform the taproom into a space for sharing experiences, providing clients with a welcoming environment for tasting, participating in events, launching new labels, and interacting with the production process. Specific objectives:

- Become a national reference in the offer of Portuguese craft beers;
- Focus on social media (Instagram, TikTok) as dissemination channels;
- Implement a cashless system for security and efficiency;
- Create thematic events to build customer loyalty;
- Invest in technological innovation applied to service and management.

### 1.4 Business Target Audience

Target audience: people older than 18, of any nationality, interested in gastronomic and cultural experiences related to craft beer.

### 1.5 Importance of an Information System

Adopting an Information System (IS) is critical for:

- Cost management through process automation via self-service;
- International expansion with multilingual systems for foreign clients;
- Financial security by preventing errors and fraud via cashless system;
- Stock management with real-time monitoring and consumption forecasting;
- Logistic integration with direct supplier connection via API;
- Preventive maintenance by equipment usage time control.

### 2. Mission and Values

#### 2.1 Mission

To provide unique experiences of sharing and discovery around Portuguese craft beer, in an innovative environment with high quality standards and technological integration.

#### 2.2 Values

- Innovation: We value constant evolution, applying cutting-edge technology like cashless and self-service systems to enhance customer experience and service efficiency.
- Experience and Sharing: We aim to create a sociable environment for experience exchange, with thematic events and contact with the production process to enrich knowledge and enjoyment.
- Welcoming and Diversity: We want all individuals over 18, regardless of nationality, to feel welcome, supported by inclusive multilingual infrastructure facilitating multicultural sharing.
- Transparency and Safety: We prioritize financial flow transparency and security, minimizing errors and ensuring a trustworthy environment through the cashless system for clients and staff.
- Operational Sustainability: We focus on efficient stock control and smart resource management to prevent waste and shortages while guaranteeing the best customer experience.
- Passion for National Craft Beer: We promote and support Portuguese craft beer, highlighting various styles, producers, and novelties, uplifting the national sector and always offering new experiences to customers.

### 3. Our Team

#### 3.1 Organizational Structure

The structure consists of:

- Management/Co-Founders – Overall business management;
- Employees – Service and operations;

#### 3.2 Users and Competencies

- Client: External user with front-end app access linked to products and events.
- Supplier: External user with supplier portal access related to orders.
- Accountant: Internal user with back office access to employees, suppliers, payments, economate, and orders.
- Lawyer: External user with restricted access to employee legal documents (contracts).
- Management: Internal user with full access to clients, events, products, suppliers, employees, payments, evaluations, economate, and orders.
- Employees: Internal users with limited access to clients, events, and products.

## 4. Functional Requirements

### Client

- Visit the taproom, use the app to consult products and make purchases, reserve thematic events, buy products (beer, snacks), pay cashless or with digital supports, promote on social media, give feedback, and consult the menu.

### Supplier

- Supply products, access supplier portal, issue invoices and receipts, supply economate items (cups, cutlery, napkins), consult orders and deliveries.

### Accountant

- Perform corporate tax declarations, issue employee payment receipts, submit suppliers’ invoices to tax authorities, ensure current regulations are met, and maintain positive net income.

### Lawyer

- Draft employee contracts.

### Management

- Control product stock, ensure brand and product promotion, establish partnerships, control costs and suppliers, prevent stock outages, ensure database functionality, comply with hygiene regulations, and provide uniforms (economate).

### Employees

- Ensure establishment security, answer equipment-related questions, distribute glasses at entrance, clean kitchen dishes per HACCP, manage mise en place, clean sanitary facilities, restock consumables, and use provided uniforms.

### System

- Allow menu consulting with AI translation, enable event reservations, real-time stock control, supplier order consultation and confirmation, client data registration, and birthday campaigns.

## 5. Entities and Attributes (Summary)

- Client: id, name, tax number (NIF), email, phone, birth date, registration date, visit frequency, average consumption volume, favorite products, last purchase, total spent, average per purchase, newsletter subscription, acquisition channel, modification and creation timestamps.

- Products: id, supplier id, name, description, product type (beer/snacks), purchase price, sale price, current stock, minimum stock, timestamps.

- Suppliers: id, company name, tax id (NIF), email, phone, contact person, address, country, timestamps.

- Employees: id, name, doc id, tax id (NIF), email, phone, role, birth date, address, IBAN, timestamps.

- Payments: id, client id, employee id, value, currency, payment method, payment status, timestamps.

- Orders: id, supplier id, employee id, total value, currency, payment method, payment and order status, order date, modification date.

- Events: id, name, description, event type (party, workshop, launch, other), date, time, location, capacity, private/public, price, timestamps.

- Evaluations: client id, rating (1 to 5), comment, visibility, evaluation date, timestamps.

- Intermediate Entities: Participation in events, payment items, order items, to allow many-to-many relations.

## 6. Entity-Relationship Diagram (E/R)

The document includes an E/R diagram mapping all entities and their relationships.

## 7. Table Creation and Attributes

### Clients Table

```sql
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
```

### Products Table

```sql
CREATE TABLE Produtos (
    id_produto VARCHAR(6) PRIMARY KEY,
    designacao VARCHAR(100) UNIQUE NOT NULL,
    descricao TEXT,
    tipo_de_produto VARCHAR(20) NOT NULL CHECK (
        tipo_de_produto IN ('cerveja', 'snacks')
    ),
    preco_venda DECIMAL(10,2) NOT NULL,
    stock_atual FLOAT NOT NULL,
    stock_minimo FLOAT NOT NULL,
    data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE Produtos
ADD COLUMN preco_compra DECIMAL(10,2); -- Adiciona a coluna preco_compra. Guarda o preço de compra do produto.
```

### Employees Table

```sql
CREATE TABLE Funcionarios (
    id_funcionario VARCHAR(6) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    doc_identificacao VARCHAR(12) NOT NULL CHECK (doc_identificacao GLOB '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9] [A-Z][A-Z] [0-9]'),
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
    funcao VARCHAR(50) NOT NULL,
    data_nascimento DATE,
    morada TEXT,
    iban VARCHAR(25) NOT NULL CHECK (
        iban LIKE 'PT%' AND LENGTH(iban)=25
    ),
    data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### Suppliers Table

```sql
CREATE TABLE Fornecedores (
    id_fornecedor VARCHAR(6) PRIMARY KEY,
    nome_empresa VARCHAR(100) NOT NULL,
    nif INTEGER UNIQUE NOT NULL CHECK (
        nif BETWEEN 500000000 AND 599999999
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
    pessoa_contacto VARCHAR(100),
    morada TEXT,
    pais VARCHAR(50),
    data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### Reviews Table

```sql
CREATE TABLE Avaliacao (
    id_cliente VARCHAR(6) PRIMARY KEY,
    avaliacao INTEGER CHECK (avaliacao BETWEEN 1 AND 5),
    comentario TEXT,
    visibilidade BOOLEAN NOT NULL DEFAULT TRUE,
    data_avaliacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
```

### Events Table

```sql
CREATE TABLE Eventos (
    id_evento      VARCHAR(6) PRIMARY KEY,
    designacao     VARCHAR(100) NOT NULL,
    descricao      TEXT,
    tipo_de_evento VARCHAR(50) NOT NULL CHECK (
        tipo_de_evento IN ('festa', 'workshop', 'lançamento', 'outro')
    ),
    data_evento    DATE NOT NULL,
    hora_evento    TIME NOT NULL,
    localizacao    VARCHAR(100),
    capacidade     INTEGER NOT NULL CHECK (capacidade > 0),
    evento_privado BOOLEAN NOT NULL DEFAULT FALSE,
    preco          DECIMAL(10,2),
    data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_criacao     TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### Events_participations Table

```sql
CREATE TABLE Participacoes_Evento (
    id_evento   VARCHAR(6) NOT NULL,
    id_cliente  VARCHAR(6) NOT NULL,
    data_inscricao DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id_evento, id_cliente),
    FOREIGN KEY (id_evento) REFERENCES Eventos(id_evento),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
```

### Payments Table

```sql
CREATE TABLE Pagamentos (
    id_pagamento VARCHAR(6) PRIMARY KEY,
    id_cliente VARCHAR(6), 
    id_funcionario VARCHAR(6),
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
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario)
);
```

### item_payment Table

```sql
CREATE TABLE Itens_Pagamento (
    id_pagamento VARCHAR(6),
    id_produto VARCHAR(6),
    quantidade INTEGER NOT NULL CHECK (quantidade > 0),
    preco_unitario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_pagamento, id_produto),
    FOREIGN KEY (id_pagamento) REFERENCES Pagamentos(id_pagamento),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);
```

### orders Table

```sql
CREATE TABLE encomendas (
    id_encomenda VARCHAR(6) PRIMARY KEY,
    id_fornecedor VARCHAR(6),
    id_funcionario VARCHAR(6),
    valor DECIMAL(10,2) NOT NULL,
    moeda VARCHAR(3) NOT NULL CHECK (moeda IN ('EUR', 'USD', 'GBP')),
    metodo_pagamento VARCHAR(20) NOT NULL CHECK (metodo_pagamento IN ('cartao', 'transferencia', 'dinheiro')),
    estado_pagamento VARCHAR(20) NOT NULL CHECK (estado_pagamento IN ('pendente', 'concluido', 'cancelado')),
    estado_encomenda VARCHAR(20) NOT NULL CHECK (estado_encomenda IN ('pendente', 'processando', 'enviado', 'entregue', 'cancelado')),
    data_encomenda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedores(id_fornecedor),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario)
);
```

### item_order Table

```sql
CREATE TABLE encomendas_itens (
    id_encomenda VARCHAR(6),
    id_produto VARCHAR(6),
    quantidade INTEGER NOT NULL CHECK (quantidade > 0),
    valor_unitario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_encomenda, id_produto),
    FOREIGN KEY (id_encomenda) REFERENCES encomendas(id_encomenda),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);
```
