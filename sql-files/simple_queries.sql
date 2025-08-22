-- 1. Listar todos os clientes que não têm canal de aquisição definido (NULL)
SELECT id_cliente, nome, canal_aquisicao 
FROM Clientes
WHERE canal_aquisicao IS NULL;

-- 2. Listar os 10 clientes mais recentes (por ordem decrescente de data de criação)
SELECT id_cliente, nome, data_criacao
FROM Clientes
ORDER BY data_criacao DESC
LIMIT 10;

-- 3. Mostrar todos os produtos cujo nome contém "Gold"
SELECT id_produto, designacao
FROM Produtos
WHERE designacao LIKE '%Gold%';

-- 4. Listar produtos do tipo cerveja com preço entre 2.5 e 4.0 EUR
SELECT id_produto, designacao, preco_venda
FROM Produtos
WHERE tipo_de_produto = 'cerveja'
    AND preco_venda BETWEEN 2.5 AND 4.0
ORDER BY preco_venda ASC;

-- 5. Quantidade de clientes por canal de aquisição (GROUP BY e COUNT)
SELECT canal_aquisicao, COUNT(*) AS total_clientes
FROM Clientes
GROUP BY canal_aquisicao
ORDER BY total_clientes DESC;

-- 6. Listar clientes cujo nome começa por "A"
SELECT id_cliente, nome
FROM Clientes
WHERE nome LIKE 'A%';

-- 7. Mostrar fornecedores com email que termina em ".pt"
SELECT id_fornecedor, nome_empresa
FROM Fornecedores
WHERE email LIKE '%.pt';

-- 8. Listar encomendas pendentes de pagamento (AND/OR e DESC)
SELECT id_encomenda, id_fornecedor, estado_pagamento, data_encomenda
FROM encomendas
WHERE estado_pagamento = 'pendente'
ORDER BY data_encomenda DESC;

-- 9. Mostrar clientes que recebem newsletter e autorizaram GDPR
SELECT id_cliente, nome
FROM Clientes
WHERE newsletter = 1 AND autorizacao = 1;

-- 10. Listar produtos com stock abaixo do mínimo
SELECT id_produto, designacao, stock_atual, stock_minimo
FROM Produtos
WHERE stock_atual < stock_minimo;

-- 11. Produtos distintos do tipo “snacks”
SELECT DISTINCT designacao, tipo_de_produto
FROM Produtos
WHERE tipo_de_produto = 'snacks';

-- 12. Mostrar todos os funcionários cujo telemóvel NÃO começa por “91”
SELECT id_funcionario, nome, nr_telemovel
FROM Funcionarios
WHERE NOT nr_telemovel LIKE '91%';

-- 13. Clientes cujo NIF está entre 100000000 e 200000000 (BETWEEN)
SELECT id_cliente, nome, nif
FROM Clientes
WHERE nif BETWEEN 100000000 AND 200000000;

-- 14. Listar todas as avaliações com NOT visibilidade
SELECT id_cliente, avaliacao, comentario
FROM Avaliacao
WHERE NOT visibilidade;

-- 15. Produtos ordenados por preço de compra, de forma ascendente
SELECT id_produto, designacao, preco_compra
FROM Produtos
ORDER BY preco_compra ASC;

-- 16. Mostrar encomendas com estado "cancelado" OU valor superior a 25 EUR
SELECT id_encomenda, estado_encomenda, valor
FROM encomendas
WHERE estado_encomenda = 'cancelado' OR valor > 25;

-- 17. Listar eventos privados e públicos (GROUP BY tipo evento)
SELECT evento_privado, COUNT(*) AS total
FROM Eventos
GROUP BY evento_privado;

-- 18. Mostrar clientes sem data de nascimento (IS NULL)
SELECT id_cliente, nome
FROM Clientes
WHERE data_nascimento IS NULL;

-- 19. Produtos com designação distinta e preço superior a 4 EUR
SELECT DISTINCT designacao, preco_venda
FROM Produtos
WHERE preco_venda > 4;

-- 20. Listar clientes cujo email contém "gmail"
SELECT id_cliente, nome, email
FROM Clientes
WHERE email LIKE '%gmail%';

-- 21. Encomendas do fornecedor “SnackMasters Portugal”
SELECT id_encomenda, valor
FROM encomendas
WHERE id_fornecedor = (SELECT id_fornecedor FROM Fornecedores WHERE nome_empresa LIKE '%SnackMasters Portugal%');

-- 22. Clientes ordenados por data de modificação (ASC)
SELECT id_cliente, nome, data_modificacao
FROM Clientes
ORDER BY data_modificacao ASC;

-- 23. Produtos e stock atual, agrupados por tipo
SELECT tipo_de_produto, SUM(stock_atual) AS stock_total
FROM Produtos
GROUP BY tipo_de_produto;

-- 24. Pagamentos com moeda distinta (DISTINCT)
SELECT DISTINCT moeda
FROM Pagamentos;

-- 25. Funcionários que são “segurança” OU nasceram antes de 1985
SELECT id_funcionario, nome, funcao, data_nascimento
FROM Funcionarios
WHERE funcao = 'segurança' OR (data_nascimento IS NOT NULL AND data_nascimento < '1985-01-01');

-- 26. Produtos cujo preço de venda NÃO está entre 2 e 4 EUR
SELECT id_produto, designacao, preco_venda
FROM Produtos
WHERE NOT (preco_venda BETWEEN 2 AND 4);

-- 27. Avaliação dos clientes com nota máxima (5) e visíveis
SELECT id_cliente, avaliacao, comentario
FROM Avaliacao
WHERE avaliacao = 5 AND visibilidade;

-- 28. Pagamentos concluidos ordenados por valor, desc.
SELECT id_pagamento, valor, estado_pagamento
FROM Pagamentos
WHERE estado_pagamento = 'concluido'
ORDER BY valor DESC;

-- 29. Mostrar quantidade de participações em cada evento
SELECT id_evento, COUNT(*) AS total_participantes
FROM Participacoes_Evento
GROUP BY id_evento
ORDER BY total_participantes DESC;

-- 30. Listar produtos com designações diferentes e ordenar de Z-A
SELECT DISTINCT designacao
FROM Produtos
ORDER BY designacao DESC;

SELECT
    id_produto,
    designacao,
    stock_atual
FROM
    Produtos
WHERE
    tipo_de_produto = 'snacks'
    AND stock_atual < 20;

SELECT
    id_produto,
    designacao,
    preco_venda,
    preco_compra,
    (preco_venda - preco_compra) AS margem
FROM
    Produtos
WHERE
    preco_compra IS NOT NULL
ORDER BY
    margem DESC
LIMIT 10;

SELECT f.id_funcionario, f.nome
FROM Funcionarios f
LEFT JOIN Pagamentos p ON f.id_funcionario = p.id_funcionario
WHERE p.id_pagamento IS NULL;

SELECT id_pagamento, id_cliente, valor
FROM Pagamentos
WHERE moeda = 'EUR' AND valor > 20;

SELECT id_produto, designacao,
       preco_venda, preco_compra,
       ROUND(((preco_venda - preco_compra) / preco_compra)*100, 2) AS margem_percentual
FROM Produtos
WHERE preco_compra IS NOT NULL
ORDER BY margem_percentual DESC
LIMIT 10;

SELECT id_produto, designacao, preco_venda, stock_atual, stock_minimo
FROM Produtos
WHERE preco_venda > 2 AND stock_atual < stock_minimo;

SELECT id_fornecedor, nome_empresa, pais
FROM Fornecedores
WHERE NOT pais = 'Portugal';

SELECT id_evento, designacao, capacidade
FROM Eventos
WHERE capacidade BETWEEN 50 AND 100;

SELECT id_pagamento, valor, estado_pagamento
FROM Pagamentos
WHERE estado_pagamento IS 'pendente';

SELECT DISTINCT canal_aquisicao
FROM Clientes;

SELECT 
    moeda,                     -- Tipo de moeda usada no pagamento
    COUNT(*) AS total_pagamentos -- Contagem de pagamentos por moeda
FROM Pagamentos                -- Origem dos dados
GROUP BY moeda                 -- Agrupa por moeda
HAVING COUNT(*) < 5;           -- Filtra apenas moedas com menos de 5 pagamentos

-- Listar fornecedores cujo nome inclua a palavra "brew", sem diferenciar maiúsculas de minúsculas
SELECT 
    id_fornecedor,        -- ID do fornecedor
    nome_empresa          -- Nome da empresa fornecedora
FROM Fornecedores         -- Origem dos fornecedores
WHERE nome_empresa ILIKE '%brew%'; -- Pesquisa sem considerar maiúsculas/minúsculas

-- Lista os clientes que fizeram mais do que 3 compras concluídas e quanto gastaram no total
SELECT 
    id_cliente,                                   -- ID do cliente
    COUNT(*) AS total_compras,                    -- Nº total de compras
    ROUND(SUM(valor), 2) AS total_gasto           -- Soma do valor total gasto
FROM Pagamentos
WHERE estado_pagamento = 'concluido'              -- Apenas compras concluídas
GROUP BY id_cliente                               -- Agrupar por cliente
HAVING COUNT(*) > 1                               -- Apenas quem comprou mais de 1 vez
ORDER BY total_compras DESC;                      -- Ordenar por quem mais comprou

-- Lista os produtos com preço de venda entre 5€ e 15€, ordenados do mais caro para o mais barato
SELECT 
    id_produto,                -- ID do produto
    designacao,                -- Nome/designação do produto
    preco_venda                -- Preço de venda do produto
FROM Produtos                  -- Origem: tabela de produtos
WHERE preco_venda BETWEEN 2 AND 3  -- Apenas produtos cujo preço está entre 2 e 3 euros
ORDER BY preco_venda DESC;     -- Ordena do preço mais alto para o mais baixo