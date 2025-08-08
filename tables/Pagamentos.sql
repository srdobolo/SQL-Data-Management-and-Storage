-- Pagamentos 1 a 20
INSERT INTO Pagamentos (id_pagamento, id_cliente, id_funcionario, valor, moeda, metodo_pagamento, estado_pagamento, data_pagamento)
VALUES
('PG0001', 'C10001', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00001' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00011'
  )),
  'EUR', 'cartao', 'concluido', '2024-06-12 10:15:00'
),
('PG0002', 'C10002', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00007' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00021'
  )),
  'EUR', 'transferencia', 'pendente', '2024-07-01 14:30:45'
),
('PG0003', 'C10003', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00009' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00023' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00028'
  )),
  'GBP', 'dinheiro', 'concluido', '2024-03-25 09:50:12'
),
('PG0004', 'C10004', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 4 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00016'
  )),
  'EUR', 'cartao', 'concluido', '2024-05-20 16:10:30'
),
('PG0005', 'C10005', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00018' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00027'
  )),
  'EUR', 'transferencia', 'cancelado', '2024-08-07 11:45:10'
),
('PG0006', 'C10006', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00004' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00022'
  )),
  'GBP', 'dinheiro', 'concluido', '2024-04-18 13:22:55'
),
('PG0007', 'C10007', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00003' UNION ALL
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00025'
  )),
  'EUR', 'cartao', 'pendente', '2024-06-07 08:15:33'
),
('PG0008', 'C10008', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00014' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00019' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00026'
  )),
  'EUR', 'transferencia', 'concluido', '2024-07-22 17:03:10'
),
('PG0009', 'C10009', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 4 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00005'
  )),
  'GBP', 'dinheiro', 'concluido', '2024-03-30 12:05:55'
),
('PG0010', 'C10010', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00002' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00008'
  )),
  'EUR', 'cartao', 'concluido', '2024-04-15 09:25:44'
),
('PG0011', 'C10011', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00027' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00013'
  )),
  'EUR', 'transferencia', 'pendente', '2024-05-11 14:33:21'
),
('PG0012', 'C10012', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00024'
  )),
  'GBP', 'dinheiro', 'concluido', '2024-06-18 11:22:45'
),
('PG0013', 'C10013', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00007' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00009' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00020'
  )),
  'EUR', 'cartao', 'concluido', '2024-07-25 15:17:03'
),
('PG0014', 'C10014', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00011' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00015'
  )),
  'EUR', 'transferencia', 'pendente', '2024-08-02 10:44:56'
),
('PG0015', 'C10015', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 4 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00003'
  )),
  'GBP', 'dinheiro', 'concluido', '2024-03-22 08:50:19'
),
('PG0016', 'C10016', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00018' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00022'
  )),
  'EUR', 'cartao', 'cancelado', '2024-06-30 18:15:30'
),
('PG0017', 'C10017', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00013' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00027'
  )),
  'USD', 'transferencia', 'pendente', '2024-07-18 11:11:11'
),
('PG0018', 'C10018', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00005' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00015'
  )),
  'GBP', 'dinheiro', 'concluido', '2024-05-28 09:09:09'
),
('PG0019', 'C10019', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00001' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00019'
  )),
  'EUR', 'cartao', 'concluido', '2024-04-04 14:14:14'
),
('PG0020', 'C10020', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00004' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00008' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00012'
  )),
  'USD', 'transferencia', 'pendente', '2024-07-07 10:10:10'
);