-- Seleciona os 10 clientes com maior número de compras (visitas)
SELECT 
    c.id_cliente,                  -- ID do cliente
    c.nome,                        -- Nome do cliente
    COUNT(p.id_pagamento) AS frequencia_visitas -- Conta o nº total de pagamentos realizados
    -- pelo cliente
FROM Clientes c                  -- Tabela principal: lista de todos os clientes
LEFT JOIN Pagamentos p              -- Junta com pagamentos (LEFT JOIN para incluir clientes
-- sem compras)
       ON c.id_cliente = p.id_cliente -- Relaciona clientes com pagamentos pelo id_cliente
GROUP BY c.id_cliente, c.nome       -- Agrupa por cliente para contar o total de compras
ORDER BY frequencia_visitas DESC    -- Ordena dos clientes mais frequentes para os menos
LIMIT 10;                           -- Mostra apenas os 10 primeiros resultados

-- Seleciona os 10 clientes que mais compram em média (em unidades de produto por compra)
SELECT 
    c.id_cliente,                   -- ID do cliente
    c.nome,                         -- Nome do cliente
    ROUND(AVG(qtd_por_compra), 2) AS volume_medio_consumo -- Média de unidades por compra 
    -- (arredondado a 2 casas decimais)
FROM (
    -- Subconsulta para calcular a quantidade total de produtos por compra
    SELECT 
        p.id_cliente,               -- ID do cliente
        SUM(ip.quantidade) AS qtd_por_compra -- Soma da quantidade de produtos comprados 
        -- nessa compra
    FROM Pagamentos p
    JOIN Itens_Pagamento ip 
         ON p.id_pagamento = ip.id_pagamento -- Liga pagamento com os seus itens
    GROUP BY p.id_pagamento, p.id_cliente -- Agrupa por compra para calcular total de unidades 
    -- por transação
) sub
JOIN Clientes c ON c.id_cliente = sub.id_cliente -- Junta com a tabela de clientes para trazer 
-- os nomes
GROUP BY c.id_cliente, c.nome        -- Agrupa novamente para calcular a média por cliente
ORDER BY volume_medio_consumo DESC   -- Ordena dos que mais consomem para menos
LIMIT 10;                            -- Mostra apenas os 10 primeiros resultados

-- Seleciona os 10 clientes cuja última compra foi mais recente
SELECT 
    c.id_cliente,                    -- ID do cliente
    c.nome,                          -- Nome do cliente
    MAX(p.data_pagamento) AS ultima_compra -- Obtém a data mais recente de pagamento
FROM Clientes c
LEFT JOIN Pagamentos p 
       ON c.id_cliente = p.id_cliente -- Liga com a tabela de pagamentos
GROUP BY c.id_cliente, c.nome        -- Agrupa por cliente
ORDER BY ultima_compra DESC          -- Ordena da compra mais recente para a mais antiga
LIMIT 10;                            -- Mostra apenas os 10 primeiros resultados

-- Seleciona os 10 clientes que mais gastaram no total (€)
SELECT 
    c.id_cliente,                     -- ID do cliente
    c.nome,                           -- Nome do cliente
    ROUND(SUM(p.valor), 2) AS total_gasto -- Soma do valor total gasto (apenas compras concluídas)
FROM Clientes c
LEFT JOIN Pagamentos p 
       ON c.id_cliente = p.id_cliente
       AND p.estado_pagamento = 'concluido' -- Filtra apenas pagamentos concluídos
GROUP BY c.id_cliente, c.nome         -- Agrupa por cliente
ORDER BY total_gasto DESC             -- Ordena do maior para o menor gasto
LIMIT 10;                             -- Mostra apenas os 10 primeiros resultados

-- Seleciona os 10 clientes com maior ticket médio por compra
SELECT 
    c.id_cliente,                      -- ID do cliente
    c.nome,                            -- Nome do cliente
    ROUND(AVG(p.valor), 2) AS media_consumo_compra -- Calcula o valor médio gasto por compra
FROM Clientes c
LEFT JOIN Pagamentos p 
       ON c.id_cliente = p.id_cliente
       AND p.estado_pagamento = 'concluido' -- Apenas compras concluídas
GROUP BY c.id_cliente, c.nome          -- Agrupa por cliente
ORDER BY media_consumo_compra DESC     -- Ordena do maior valor médio para o menor
LIMIT 10;                              -- Mostra apenas os 10 primeiros resultados