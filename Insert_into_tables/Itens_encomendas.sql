INSERT INTO Itens_Encomenda (
    id_item,            -- Identificador único do item da encomenda
    id_encomenda,       -- Identificador da encomenda à qual o item está associado
    id_produto,         -- Identificador do produto incluído na encomenda
    quantidade,         -- Quantidade do produto solicitado na encomenda
    preco_unitario      -- Preço unitário do produto no momento da encomenda
)
VALUES (
    'I00001',           -- Valor do id_item, um identificador único para o item da encomenda
    'E00001',           -- Valor do id_encomenda, vinculando o item à encomenda E00001
    'P00002',           -- Valor do id_produto, indicando o produto P00002
    5,                  -- Quantidade do produto (5 unidades)
    -- Subconsulta para obter o preço de venda do produto P00002
    (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00002') -- Obtém o preço unitário da tabela Produtos
),
('I00002', 'E00002', 'P00004', 3, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00004')),
('I00003', 'E00002', 'P00007', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00007')),
('I00004', 'E00003', 'P00021', 1, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00021')),
('I00005', 'E00004', 'P00005', 4, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00005')),
('I00006', 'E00004', 'P00006', 3, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00006')),
('I00007', 'E00005', 'P00008', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00008')),
('I00008', 'E00006', 'P00009', 6, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00009')),
('I00009', 'E00006', 'P00010', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00010')),
('I00010', 'E00007', 'P00022', 3, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00022')),
('I00011', 'E00008', 'P00014', 4, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00014')),
('I00012', 'E00009', 'P00011', 1, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00011')),
('I00013', 'E00009', 'P00012', 5, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00012')),
('I00014', 'E00010', 'P00019', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00019')),
('I00015', 'E00011', 'P00023', 7, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00023')),
('I00016', 'E00011', 'P00024', 3, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00024')),
('I00017', 'E00012', 'P00003', 5, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00003')),
('I00018', 'E00013', 'P00007', 3, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00007')),
('I00019', 'E00014', 'P00018', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00018')),
('I00020', 'E00014', 'P00020', 1, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00020')),
('I00021', 'E00015', 'P00001', 4, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00001')),
('I00022', 'E00016', 'P00006', 5, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00006')),
('I00023', 'E00017', 'P00013', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00013')),
('I00024', 'E00017', 'P00015', 4, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00015')),
('I00025', 'E00018', 'P00007', 1, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00007')),
('I00026', 'E00019', 'P00002', 3, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00002')),
('I00027', 'E00019', 'P00001', 1, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00001')),
('I00028', 'E00020', 'P00004', 6, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00004')),
('I00029', 'E00021', 'P00009', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00009')),
('I00030', 'E00022', 'P00024', 3, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00024')),
('I00031', 'E00023', 'P00014', 4, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00014')),
('I00032', 'E00024', 'P00019', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00019')),
('I00033', 'E00025', 'P00011', 1, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00011')),
('I00034', 'E00025', 'P00015', 3, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00015')),
('I00035', 'E00026', 'P00005', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00005')),
('I00036', 'E00026', 'P00006', 5, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00006')),
('I00037', 'E00027', 'P00010', 3, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00010')),
('I00038', 'E00028', 'P00014', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00014')),
('I00039', 'E00029', 'P00008', 3, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00008')),
('I00040', 'E00030', 'P00023', 5, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00023')),
('I00041', 'E00031', 'P00019', 4, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00019')),
('I00042', 'E00032', 'P00001', 1, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00001')),
('I00043', 'E00033', 'P00012', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00012')),
('I00044', 'E00034', 'P00004', 2, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00004')),
('I00045', 'E00034', 'P00003', 3, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00003')),
('I00046', 'E00035', 'P00014', 1, (SELECT preco_venda FROM Produtos WHERE id_produto = 'P00014'));