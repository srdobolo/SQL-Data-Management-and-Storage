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
  'EUR', 'cartao', 'concluido', '2024-07-01 14:30:45'
),
('PG0003', 'C10003', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00009' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00023' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00028'
  )),
  'EUR', 'dinheiro', 'concluido', '2024-03-25 09:50:12'
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
  'EUR', 'cartao', 'cancelado', '2024-08-07 11:45:10'
),
('PG0006', 'C10006', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00004' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00022'
  )),
  'EUR', 'dinheiro', 'concluido', '2024-04-18 13:22:55'
),
('PG0007', 'C10007', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00003' UNION ALL
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00025'
  )),
  'EUR', 'cartao', 'concluido', '2024-06-07 08:15:33'
),
('PG0008', 'C10008', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00014' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00019' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00026'
  )),
  'EUR', 'cartao', 'concluido', '2024-07-22 17:03:10'
),
('PG0009', 'C10009', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 4 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00005'
  )),
  'EUR', 'dinheiro', 'concluido', '2024-03-30 12:05:55'
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
  'EUR', 'cartao', 'concluido', '2024-05-11 14:33:21'
),
('PG0012', 'C10012', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00024'
  )),
  'USD', 'cartao', 'concluido', '2024-06-18 11:22:45'
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
  'EUR', 'cartao', 'concluido', '2024-08-02 10:44:56'
),
('PG0015', 'C10015', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 4 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00003'
  )),
  'EUR', 'dinheiro', 'concluido', '2024-03-22 08:50:19'
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
  'EUR', 'cartao', 'concluido', '2024-07-18 11:11:11'
),
('PG0018', 'C10018', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00005' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00015'
  )),
  'EUR', 'dinheiro', 'concluido', '2024-05-28 09:09:09'
),
('PG0019', 'C10019', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00001' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00019'
  )),
  'GBP', 'cartao', 'concluido', '2024-04-04 14:14:14'
),
('PG0020', 'C10020', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00004' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00008' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00012'
  )),
  'EUR', 'cartao', 'concluido', '2024-07-07 10:10:10'
),
('PG0021', 'C10021', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00012' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00022'
  )),
  'EUR', 'cartao', 'concluido', '2024-06-12 09:00:00'
),
('PG0022', 'C10022', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00015' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00018'
  )),
  'EUR', 'cartao', 'concluido', '2024-07-15 10:30:30'
),
('PG0023', 'C10023', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00002' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00005' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00027'
  )),
  'EUR', 'dinheiro', 'concluido', '2024-05-23 13:15:45'
),
('PG0024', 'C10024', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 4 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00001'
  )),
  'EUR', 'cartao', 'concluido', '2024-08-01 15:45:20'
),
('PG0025', 'C10025', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00023' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00011'
  )),
  'EUR', 'cartao', 'cancelado', '2024-07-28 11:11:11'
),
('PG0026', 'C10026', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00004' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00006'
  )),
  'EUR', 'dinheiro', 'concluido', '2024-06-20 17:10:10'
),
('PG0027', 'C10027', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00007' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00028'
  )),
  'EUR', 'cartao', 'concluido', '2024-05-17 09:30:30'
),
('PG0028', 'C10028', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00009' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00013' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00024'
  )),
  'EUR', 'cartao', 'pendente', '2024-08-10 12:00:00'
),
('PG0029', 'C10029', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00015'
  )),
  'EUR', 'dinheiro', 'concluido', '2024-07-21 08:40:40'
),
('PG0030', 'C10030', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00016' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00020'
  )),
  'EUR', 'cartao', 'concluido', '2024-04-05 14:10:50'
),
('PG0031', 'C10031', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00025' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00027'
  )),
  'EUR', 'cartao', 'concluido', '2024-06-01 11:25:00'
),
('PG0032', 'C10032', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00001'
  )),
  'EUR', 'dinheiro', 'concluido', '2024-05-10 09:35:00'
),
('PG0033', 'C10033', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00002' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00003' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00006'
  )),
  'EUR', 'cartao', 'concluido', '2024-07-12 15:40:20'
),
('PG0034', 'C10034', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00008' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00009'
  )),
  'EUR', 'cartao', 'concluido', '2024-07-18 18:50:30'
),
('PG0035', 'C10035', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00012' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00019'
  )),
  'EUR', 'dinheiro', 'concluido', '2024-06-30 20:15:10'
),
('PG0036', 'C10036', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00014' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00016'
  )),
  'EUR', 'cartao', 'concluido', '2024-07-22 07:25:55'
),
('PG0037', 'C10037', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00020' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00021'
  )),
  'EUR', 'cartao', 'cancelado', '2024-05-15 13:30:00'
),
('PG0038', 'C10038', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00022' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00024'
  )),
  'EUR', 'dinheiro', 'concluido', '2024-06-18 09:55:40'
),
('PG0039', 'C10039', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00026' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00028'
  )),
  'EUR', 'cartao', 'concluido', '2024-04-21 10:05:05'
),
('PG0040', 'C10040', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 4 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00015'
  )),
  'EUR', 'cartao', 'concluido', '2024-07-27 16:40:40'
),
('PG0041', 'C10041', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00003' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00010'
  )),
  'EUR', 'cartao', 'concluido', '2024-06-01 14:00:00'
),
('PG0042', 'C10042', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00011'
  )),
  'EUR', 'dinheiro', 'concluido', '2024-07-20 10:30:00'
),
('PG0043', 'C10043', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00014' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00001'
  )),
  'EUR', 'cartao', 'pendente', '2024-08-15 09:45:00'
),
('PG0044', 'C10044', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 4 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00009'
  )),
  'EUR', 'cartao', 'concluido', '2024-05-22 12:15:00'
),
('PG0045', 'C10045', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00007' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00016'
  )),
  'EUR', 'dinheiro', 'concluido', '2024-07-30 18:00:00'
),
('PG0046', 'C10046', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00020' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00005'
  )),
  'EUR', 'cartao', 'concluido', '2024-06-10 11:30:00'
),
('PG0047', 'C10047', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00024'
  )),
  'EUR', 'cartao', 'concluido', '2024-08-01 13:50:00'
),
('PG0048', 'C10048', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00013' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00018'
  )),
  'EUR', 'dinheiro', 'concluido', '2024-07-07 15:20:00'
),
('PG0049', 'C10049', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00006' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00002'
  )),
  'EUR', 'cartao', 'concluido', '2024-07-25 10:05:00'
),
('PG0050', 'C10050', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00028' UNION ALL
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00012'
  )),
  'EUR', 'cartao', 'concluido', '2024-06-18 09:00:00'
),
('PG0051', 'C10019', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00021' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00017'
  )),
  'GBP', 'cartao', 'concluido', '2024-07-20 16:30:00'
),
('PG0052', 'C10020', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 4 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00015'
  )),
  'EUR', 'cartao', 'concluido', '2024-07-15 14:45:00'
),
('PG0053', 'C10012', 'F00001',
  (SELECT SUM(qt * preco) FROM (
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00011' UNION ALL
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00023'
  )),
  'USD', 'cartao', 'concluido', '2024-06-10 11:20:00'
),
('PG0054', 'C10012', 'F00002',
  (SELECT SUM(qt * preco) FROM (
      SELECT 1 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00010' UNION ALL
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00008'
  )),
  'USD', 'cartao', 'concluido', '2024-06-18 09:50:00'
),
('PG0055', 'C10007', 'F00003',
  (SELECT SUM(qt * preco) FROM (
      SELECT 2 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00001' UNION ALL
      SELECT 3 AS qt, preco_venda AS preco FROM Produtos WHERE id_produto = 'P00014'
  )),
  'EUR', 'cartao', 'concluido', '2024-07-25 12:30:00'
);

