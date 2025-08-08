-- Itens_Pagamento 1 a 20
INSERT INTO Itens_Pagamento (id_pagamento, id_produto, quantidade, preco_unitario)
VALUES
('PG0001', 'P00001', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00001')),
('PG0001', 'P00011', 1, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00011')),
('PG0002', 'P00007', 3, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00007')),
('PG0002', 'P00021', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00021')),
('PG0003', 'P00009', 1, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00009')),
('PG0003', 'P00023', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00023')),
('PG0003', 'P00028', 1, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00028')),
('PG0004', 'P00016', 4, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00016')),
('PG0005', 'P00018', 3, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00018')),
('PG0005', 'P00027', 1, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00027')),
('PG0006', 'P00004', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00004')),
('PG0006', 'P00022', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00022')),
('PG0007', 'P00003', 1, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00003')),
('PG0007', 'P00025', 3, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00025')),
('PG0008', 'P00014', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00014')),
('PG0008', 'P00019', 1, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00019')),
('PG0008', 'P00026', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00026')),
('PG0009', 'P00005', 4, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00005')),
('PG0010', 'P00002', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00002')),
('PG0010', 'P00008', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00008'));