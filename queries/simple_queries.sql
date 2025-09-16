SELECT id_cliente, nome, canal_aquisicao
FROM Clientes
WHERE canal_aquisicao IS NULL;

SELECT id_cliente, nome, data_criacao
FROM Clientes
ORDER BY data_criacao DESC
LIMIT 10;

SELECT id_produto, designacao
FROM Produtos
WHERE designacao LIKE '%Gold%';

SELECT id_produto, designacao, preco_venda
FROM Produtos
WHERE tipo_de_produto = 'cerveja'
    AND preco_venda BETWEEN 2.5 AND 4.0
ORDER BY preco_venda ASC;

SELECT canal_aquisicao, COUNT(*) AS total_clientes
FROM Clientes
GROUP BY canal_aquisicao
ORDER BY total_clientes DESC;

SELECT id_cliente, nome
FROM Clientes
WHERE nome LIKE 'A%';

SELECT id_fornecedor, nome_empresa
FROM Fornecedores
WHERE email LIKE '%.pt';

SELECT id_encomenda, id_fornecedor, estado_pagamento, data_encomenda
FROM encomendas
WHERE estado_pagamento = 'pendente'
ORDER BY data_encomenda DESC;

SELECT id_cliente, nome
FROM Clientes
WHERE newsletter = 1 AND autorizacao = 1;

SELECT id_produto, designacao, stock_atual, stock_minimo
FROM Produtos
WHERE stock_atual < stock_minimo;

SELECT DISTINCT designacao, tipo_de_produto
FROM Produtos
WHERE tipo_de_produto = 'snacks';

SELECT id_funcionario, nome, nr_telemovel
FROM Funcionarios
WHERE NOT nr_telemovel LIKE '91%';

SELECT id_cliente, nome, nif
FROM Clientes
WHERE nif BETWEEN 100000000 AND 200000000;

SELECT id_cliente, avaliacao, comentario
FROM Avaliacao
WHERE NOT visibilidade;

SELECT id_produto, designacao, preco_compra
FROM Produtos
ORDER BY preco_compra ASC;

SELECT id_encomenda, estado_encomenda, valor
FROM encomendas
WHERE estado_encomenda = 'cancelado' OR valor > 25;

SELECT evento_privado, COUNT(*) AS total
FROM Eventos
GROUP BY evento_privado;

SELECT id_cliente, nome
FROM Clientes
WHERE data_nascimento IS NULL;

SELECT DISTINCT designacao, preco_venda
FROM Produtos
WHERE preco_venda > 4;

SELECT id_cliente, nome, email
FROM Clientes
WHERE email LIKE '%gmail%';

SELECT id_encomenda, valor
FROM encomendas
WHERE id_fornecedor = (SELECT id_fornecedor FROM Fornecedores WHERE nome_empresa LIKE '%SnackMasters Portugal%');

SELECT id_cliente, nome, data_modificacao
FROM Clientes
ORDER BY data_modificacao ASC;

SELECT tipo_de_produto, SUM(stock_atual) AS stock_total
FROM Produtos
GROUP BY tipo_de_produto;

SELECT DISTINCT moeda
FROM Pagamentos;

SELECT id_funcionario, nome, funcao, data_nascimento
FROM Funcionarios
WHERE funcao = 'segurança' OR (data_nascimento IS NOT NULL AND data_nascimento < '1985-01-01');

SELECT id_produto, designacao, preco_venda
FROM Produtos
WHERE NOT (preco_venda BETWEEN 2 AND 4);

SELECT id_cliente, avaliacao, comentario
FROM Avaliacao
WHERE avaliacao = 5 AND visibilidade;

SELECT id_pagamento, valor, estado_pagamento
FROM Pagamentos
WHERE estado_pagamento = 'concluido'
ORDER BY valor DESC;

SELECT id_evento, COUNT(*) AS total_participantes
FROM Participacoes_Evento
GROUP BY id_evento
ORDER BY total_participantes DESC;

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

SELECT currency, COUNT(*) AS total_payments
FROM Payments
GROUP BY currency
HAVING COUNT(*) < 5;

SELECT id_supplier, company_name
FROM Suppliers
WHERE LOWER(company_name) LIKE '%brew%';

SELECT id_client, COUNT(*) AS total_purchases, ROUND(SUM(amount), 2) AS total_spent
FROM Payments
WHERE payment_status = 'completed'
GROUP BY id_client
HAVING COUNT(*) > 1
ORDER BY total_purchases DESC;

SELECT id_product, name, sale_price
FROM Products
WHERE sale_price BETWEEN 2 AND 3
ORDER BY sale_price DESC;
