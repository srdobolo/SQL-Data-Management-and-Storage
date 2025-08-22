INSERT INTO Clients (
    id_client, name, tax_id, email, phone_number, date_of_birth,
    newsletter, authorization, acquisition_channel, modified_at, created_at
) VALUES
('C10001', 'Inês Marinho', 198745231, 'ines.marinho@email.com',  '911234567', '1990-04-13', 1, 1, 'Instagram',      '2024-08-07 13:00:01', '2024-03-10 09:15:02'),
('C10002', 'David Lopes',   245879123, 'david.lopes@mail.pt',    '923456789', '1987-10-30', 0, 1, 'Facebook',       '2024-08-01 14:25:40', '2024-02-22 08:17:28'),
('C10003', 'Sara Faria',    393217894, 'sara.faria@gmail.com',   '931219876', NULL,         1, 0, NULL,             '2024-04-07 12:02:49', '2024-03-15 10:00:00'),
('C10004', 'Miguel Prata',  109283475, 'miguel.prata@zon.pt',    '919843276', '1996-07-02', 1, 0, 'Google',         '2024-06-13 20:28:44', '2024-01-19 11:12:59'),
('C10005', 'Beatriz Cunha', 384910284, 'bea.cunha@mail.com',     '968374102', NULL,         0, 0, NULL,             '2024-08-03 19:33:10', '2024-07-29 13:13:34'),
('C10006', 'António Neto',  217849301, 'antonio.neto@hot.pt',    '963129876', '1981-05-25', 1, 1, 'Events',        '2024-08-05 10:41:01', '2024-05-11 09:45:24'),
('C10007', 'Lúcia Silva',   137409825, 'lucia.silva@icloud.com', '922221234', NULL,         0, 1, 'TheFork',        '2024-08-07 15:00:54', '2024-01-11 08:09:36'),
('C10008', 'Carlos Rocha',  145873216, 'carlos.rocha@pmail.com', '962837410', '1979-11-09', 1, 0, NULL,             '2024-07-30 16:15:20', '2024-05-30 15:48:53'),
('C10009', 'Marta Alves',   222334455, 'marta.alves@empresa.pt', '913456721', NULL,         1, 1, 'Tik Tok',        '2024-02-22 18:42:10', '2024-01-07 17:53:29'),
('C10010', 'João Ribeiro',  376542890, 'joao.ribeiro@hotmail.com','921874563', '1992-03-21',0, 0, NULL,             '2024-07-17 12:22:22', '2024-01-07 10:11:12'),
('C10011', 'Helena Moreira',112340967, 'helena.moreira@email.pt','937842190', '1999-12-31',1,  1, 'Email Marketing', '2024-08-06 17:45:56', '2024-03-20 16:59:14'),
('C10012', 'Bruno Gomes',   120987654, 'bruno.gomes@exem.com',   '961284637', NULL,         0, 0, NULL,             '2024-05-08 09:08:40', '2024-04-04 07:21:10'),
('C10013', 'Tiago Fernandes', 153982471, 'tiago.fernandes@terra.com', '913461278', '1983-07-19', 0, 1, NULL,                   '2024-08-06 08:10:05', '2024-06-14 11:09:22'),
('C10014', 'Ana Barreto',     233987411, 'ana.barreto@gmail.com',      '919234601', NULL,         1, 1, 'Friend Recommendation',  '2024-07-19 13:12:12', '2024-02-23 12:44:39'),
('C10015', 'Patrícia Santos', 395287146, 'patricia.santos@zonmail.com','921536874', '1995-08-11', 0, 0, NULL,                   '2024-07-23 11:27:31', '2024-06-06 10:34:20'),
('C10016', 'Rui Amaral',      176541293, 'rui.amaral@mail.pt',         '962478315', '1991-01-28', 1, 0, 'Events',             '2024-08-07 10:50:55', '2024-04-29 14:15:41'),
('C10017', 'Joana Pires',     183647529, 'joana.pires@email.com',      '968231745', NULL,         0, 1, NULL,                   '2024-05-25 15:03:18', '2024-05-03 10:50:34'),
('C10018', 'Filipe Costa',    220384957, 'filipe.costa@icloud.com',    '937845621', '1980-06-17', 1, 1, 'Facebook',            '2024-07-31 09:57:49', '2024-07-05 07:28:12'),
('C10019', 'Rita Mota',       313948205, 'rita.mota@empresa.pt',       '926875431', NULL,         1, 0, NULL,                   '2024-07-09 17:22:16', '2024-06-01 13:45:07'),
('C10020', 'Pedro Lima',      289134567, 'pedro.lima@pmail.com',       '913239841', '1993-09-01', 1, 1, 'TheFork',             '2024-06-23 10:11:11', '2024-04-20 08:08:19'),
('C10021', 'Andreia Sousa',   167894320, 'andreia.sousa@gmail.com',    '922904613', NULL,         0, 0, NULL,                   '2024-05-13 09:44:01', '2024-03-11 07:40:15'),
('C10022', 'Francisco Luz',   382076419, 'francisco.luz@email.pt',     '963451278', '2001-12-08', 0, 1, 'Google',              '2024-06-28 06:50:30', '2024-05-17 11:33:28'),
('C10023', 'Susana Duarte',   118934750, 'susana.duarte@grupopt.pt',   '928347152', NULL,         1, 1, NULL,                   '2024-08-02 14:14:42', '2024-05-21 19:18:18'),
('C10024', 'Ricardo Matos',   130487259, 'ricardo.matos@yahoo.com',    '967134521', '1984-04-04', 0, 0, 'Email Marketing',     '2024-05-16 15:25:29', '2024-03-31 07:56:54'),
('C10025', 'Manuela Gouveia', 310982574, 'manuela.gouveia@terra.com',  '922476581', '1977-12-23', 1, 0, NULL,                   '2024-07-29 12:46:27', '2024-06-19 09:09:09'),
('C10026', 'Artur Almeida',   128731094, 'artur.almeida@zon.pt',       '962873145', NULL,         0, 1, 'Instagram',           '2024-04-24 18:32:15', '2024-03-22 21:14:37'),
('C10027', 'Cláudia Miranda', 364109283, 'claudia.miranda@mail.com',   '968716249', '1974-08-30', 1, 0, NULL,                   '2024-05-20 12:09:47', '2024-01-17 14:49:41'),
('C10028', 'Luís Pinto',      212347895, 'luis.pinto@outlook.com',     '931872654', NULL,         0, 0, 'Events',             '2024-05-12 16:14:53', '2024-02-05 11:00:46'),
('C10029', 'Diana Furtado',   129348205, 'diana.furtado@mail.com',      '962547813', NULL,         1, 0, NULL,                  '2024-07-16 21:18:47', '2024-01-28 10:10:11'),
('C10030', 'Miguel Brito',    348917560, 'miguel.brito@gmail.com',      '913492760', '1988-02-19', 0, 1, 'Tik Tok',             '2024-06-11 15:23:15', '2024-03-27 12:52:37'),
('C10031', 'Eva Cardoso',     198345621, 'eva.cardoso@email.pt',        '919870123', NULL,         0, 0, 'Friend Recommendation',  '2024-07-24 08:42:01', '2024-05-03 09:05:05'),
('C10032', 'Paulo Martins',   239570184, 'paulo.martins@pmail.com',     '931876025', '2002-11-01', 1, 1, NULL,                  '2024-03-21 19:16:08', '2024-01-18 13:29:57'),
('C10033', 'Célia Ventura',   122398476, 'celia.ventura@yahoo.com',     '963251740', '1969-05-22', 0, 0, 'Google',              '2024-02-26 16:14:59', '2024-02-02 07:03:44'),
('C10034', 'Samuel Teixeira', 341892074, 'samuel.teixeira@icloud.com',  '921647308', NULL,         1, 1, NULL,                  '2024-03-18 22:10:11', '2024-01-21 15:14:39'),
('C10035', 'Teresa Antunes',  384012399, 'teresa.antunes@terra.pt',     '968341570', '1997-04-15', 1, 0, 'Facebook',            '2024-07-25 06:41:06', '2024-02-25 20:08:08'),
('C10036', 'Lourenço Reis',   197402835, 'lourenco.reis@zonmail.com',   '922875146', NULL,         0, 0, NULL,                  '2024-06-19 10:30:31', '2024-03-13 14:44:44'),
('C10037', 'Isabel Nogueira', 169203748, 'isabel.nogueira@grupopt.pt',  '964290183', '1994-08-05', 1, 1, 'Events',             '2024-07-07 14:36:33', '2024-05-29 18:12:30'),
('C10038', 'Danilo Vieira',   241098726, 'danilo.vieira@mail.com',      '931567204', NULL,         0, 1, 'TheFork',             '2024-07-13 11:54:21', '2024-04-22 09:13:15'),
('C10039', 'Andreia Amaral',  209847136, 'andreia.amaral@gmail.com',    '913846219', '1986-12-11', 1, 0, NULL,                  '2024-06-08 13:13:14', '2024-05-08 10:31:12'),
('C10040', 'Nuno Cruz',       126495380, 'nuno.cruz@empresa.pt',        '962781043', NULL,         1, 1, 'Instagram',           '2024-07-11 12:27:29', '2024-06-17 07:56:44'),
('C10041', 'Vera Esteves',    387124095, 'vera.esteves@mail.pt',        '968105273', '1978-03-30', 0, 0, NULL,                  '2024-08-05 16:17:11', '2024-07-10 12:07:54'),
('C10042', 'Tomás Ramos',     198230947, 'tomas.ramos@exem.com',        '921348019', NULL,         0, 1, 'Google',              '2024-05-13 10:45:22', '2024-04-08 11:23:56'),
('C10043', 'Juliana Dias',    178932516, 'juliana.dias@icloud.com',     '911230987', '1985-06-17', 1, 0, NULL,                  '2024-02-27 19:38:39', '2024-01-29 14:14:00'),
('C10044', 'Eduardo Leal',    283759401, 'eduardo.leal@terra.pt',       '922384715', NULL,         1, 0, 'Email Marketing',     '2024-03-23 20:44:10', '2024-01-22 12:55:21'),
('C10045', 'Bárbara Lopes',     127859340, 'barbara.lopes@pmail.com',     '913248576', '1991-03-22', 1, 1, 'Events',            '2024-07-18 13:24:19', '2024-03-14 11:39:09'),
('C10046', 'João Castanheira',  200184375, 'joao.castanheira@gmail.com',  '923157940', NULL,         0, 0, NULL,                '2024-08-07 16:02:01', '2024-07-12 10:55:32'),
('C10047', 'Susana Morais',     311947826, 'susana.morais@zon.pt',        '968705321', '1982-07-09', 1, 0, 'TheFork',            '2024-06-02 09:21:41', '2024-01-30 08:12:56'),
('C10048', 'Estevão Almeida',   177430968, 'estevao.almeida@terra.com',   '961793580', NULL,         1, 1, NULL,                '2024-07-25 17:19:56', '2024-02-17 13:43:19'),
('C10049', 'Vítor Paiva',       299182047, 'vitor.paiva@mail.pt',         '921846379', NULL,         0, 1, 'Email Marketing',    '2024-05-06 21:27:08', '2024-04-09 12:14:44'),
('C10050', 'Helena Sousa',      183940275, 'helena.sousa@email.com',      '963489012', '1980-01-18', 1, 0, NULL,                '2024-04-29 10:44:50', '2024-02-06 07:04:12'),
('C10051', 'Paula Fernandes',   326154890, 'paula.fernandes@icloud.com',  '911874530', '1995-11-23', 0, 0, 'Friend Recommendation', '2024-08-04 18:20:32', '2024-05-14 19:54:28'),
('C10052', 'Roberto Dias',      187245039, 'roberto.dias@empresa.pt',     '962309485', NULL,         1, 1, NULL,                '2024-03-30 12:15:19', '2024-02-03 07:37:11'),
('C10053', 'Graça Macedo',      239876420, 'graca.macedo@zonmail.com',    '927413582', '1976-06-12', 0, 1, 'Google',             '2024-04-18 15:38:24', '2024-03-05 10:18:24'),
('C10054', 'Fábio Campos',      143257189, 'fabio.campos@mail.com',       '913987654', NULL,         1, 0, NULL,                '2024-06-08 08:22:54', '2024-05-14 12:33:56'),
('C10055', 'Clara Neves',       384710235, 'clara.neves@terra.pt',        '968321094', '1988-12-04', 1, 1, 'Instagram',          '2024-08-07 14:44:35', '2024-07-15 18:50:52'),
('C10056', 'Ricardo Batista',   159327406, 'ricardo.batista@mail.com',    '921047385', NULL,         0, 0, NULL,                '2024-05-30 11:13:14', '2024-01-18 20:22:08'),
('C10057', 'Tânia Ferreira',    197345820, 'tania.ferreira@icloud.com',   '916372849', '1993-08-14', 1, 1, 'Tik Tok',            '2024-06-12 08:39:21', '2024-02-18 19:51:33'),
('C10058', 'Luís Henriques',    199274518, 'luis.henriques@zon.pt',       '931285710', NULL,         1, 1, NULL,                '2024-04-27 17:22:03', '2024-03-28 10:12:19'),
('C10059', 'Patrícia Magalhães',357180294, 'patricia.magalhaes@gmail.com','968176324', NULL,         0, 0, 'Events',            '2024-05-02 19:47:16', '2024-02-10 08:01:40'),
('C10060', 'Hugo Tavares',      304861927, 'hugo.tavares@pmail.com',      '962143578', '1989-03-27', 1, 0, NULL,                '2024-03-07 14:25:31', '2024-02-26 15:39:05'),
('C10061', 'Rosa Brites',     153904827, 'rosa.brites@empresa.pt',      '918234576', NULL,         1, 0, NULL,                 '2024-07-09 11:02:11', '2024-02-14 09:31:22'),
('C10062', 'Bruno Carvalho',  167392840, 'bruno.carvalho@gmail.com',    '921857430', '1991-05-16', 0, 1, 'Facebook',            '2024-08-02 17:20:14', '2024-01-11 14:05:13'),
('C10063', 'Vanessa Cruz',    211938475, 'vanessa.cruz@zonmail.com',    '932805476', '1984-09-23', 1, 1, NULL,                 '2024-08-07 15:31:00', '2024-03-10 18:47:51'),
('C10064', 'Jorge Silva',     392745810, 'jorge.silva@mail.com',        '961234785', NULL,         0, 0, 'Google',              '2024-04-22 10:10:20', '2024-02-25 19:29:24'),
('C10065', 'Catarina Lopes',  320184762, 'catarina.lopes@icloud.com',   '913472850', '2000-02-14', 0, 1, NULL,                 '2024-06-18 09:28:32', '2024-03-16 08:55:00'),
('C10066', 'Ricardo Fonseca', 139742083, 'ricardo.fonseca@terra.com',   '963210479', NULL,         1, 1, 'TheFork',             '2024-07-10 14:33:15', '2024-06-27 17:11:19'),
('C10067', 'Filipa Martins',  219347580, 'filipa.martins@mail.pt',      '911485703', '1997-11-08', 1, 1, NULL,                 '2024-05-20 20:12:23', '2024-03-29 08:04:58'),
('C10068', 'Mário Carrilho',  145792830, 'mario.carrilho@zon.pt',       '927413609', NULL,         0, 0, 'Instagram',           '2024-06-02 12:19:44', '2024-04-15 10:09:34'),
('C10069', 'Tatiana Costa',   389210347, 'tatiana.costa@pmail.com',     '968123490', NULL,         1, 0, NULL,                 '2024-06-16 10:58:37', '2024-04-07 11:14:41'),
('C10070', 'Marcelo Ramos',   127893405, 'marcelo.ramos@empresa.pt',    '921340854', '1982-01-27', 0, 1, 'Tik Tok',             '2024-07-15 18:42:52', '2024-07-04 13:12:55'),
('C10071', 'Raquel Tomás',    154903728, 'raquel.tomas@grupopt.pt',     '913285670', NULL,         1, 1, NULL,                 '2024-04-19 13:00:29', '2024-02-01 18:01:10'),
('C10072', 'Diogo Azevedo',   249158302, 'diogo.azevedo@zonmail.com',   '962410987', '2003-12-30', 1, 1, 'Events',             '2024-05-13 11:08:08', '2024-03-13 08:34:48'),
('C10073', 'Isabel Cabral',   317983405, 'isabel.cabral@mail.pt',       '919874520', NULL,         0, 0, NULL,                 '2024-06-30 15:28:58', '2024-05-22 10:11:47'),
('C10074', 'Samuel Mota',     129287450, 'samuel.mota@gmail.com',       '921308649', '1980-10-08', 1, 0, 'Friend Recommendation',  '2024-04-12 12:59:41', '2024-02-18 09:15:22'),
('C10075', 'Inês Amaral',     173402985, 'ines.amaral@terra.com',       '968239470', '1995-05-29', 0, 1, NULL,                 '2024-08-03 17:21:33', '2024-07-09 14:06:06'),
('C10076', 'José Guedes',     277401958, 'jose.guedes@mail.com',        '961238475', NULL,         1, 1, 'Google',              '2024-03-25 14:14:01', '2024-02-13 11:00:52'),
('C10077', 'Leonor Fragoso',     192847310, 'leonor.fragoso@mail.pt',       '962583740', NULL,         0, 1, NULL,                  '2024-07-23 12:09:12', '2024-02-01 20:44:50'),
('C10078', 'Sérgio Barbosa',     301892476, 'sergio.barbosa@terra.com',     '913867213', '1994-08-17', 1, 1, 'Facebook',            '2024-06-17 08:33:07', '2024-03-22 16:22:22'),
('C10079', 'Célia Borges',       183729014, 'celia.borges@zon.pt',          '968427153', '1970-12-09', 1, 0, NULL,                  '2024-08-01 15:17:25', '2024-01-24 15:11:09'),
('C10080', 'Joel Teixeira',      154829307, 'joel.teixeira@pmail.com',      '921974653', NULL,         0, 0, 'Tik Tok',             '2024-05-02 18:04:44', '2024-03-11 14:32:44'),
('C10081', 'Maria Figueiredo',   273940185, 'maria.figueiredo@gmail.com',   '913682457', '1987-11-21', 1, 0, 'Instagram',           '2024-08-07 16:42:01', '2024-07-22 10:30:15'),
('C10082', 'Hélder Meneses',     211083794, 'helder.meneses@terra.pt',      '927145380', NULL,         1, 0, NULL,                  '2024-06-24 17:43:36', '2024-06-11 09:17:49'),
('C10083', 'Rúben Pelicano',     159238471, 'ruben.pelicano@mail.com',      '962867413', NULL,         0, 1, 'Events',             '2024-07-03 10:19:58', '2024-03-19 16:22:30'),
('C10084', 'Joana Lourenço',     378965041, 'joana.lourenco@empresa.pt',    '937198245', '1978-08-31', 1, 1, NULL,                  '2024-04-08 16:18:10', '2024-01-18 18:08:22'),
('C10085', 'Nuno Quental',       245790813, 'nuno.quental@zonmail.com',     '913874592', NULL,         0, 1, NULL,                  '2024-05-12 11:15:25', '2024-03-21 09:55:18'),
('C10086', 'Madalena Peixoto',   210743985, 'madalena.peixoto@mail.pt',     '921684735', '2003-03-04', 1, 0, 'Friend Recommendation',  '2024-07-06 19:28:53', '2024-05-20 20:17:11'),
('C10087', 'Alexandre Viana',    165279304, 'alexandre.viana@gmail.com',    '968241735', NULL,         1, 1, NULL,                  '2024-08-05 08:42:01', '2024-07-13 11:37:20'),
('C10088', 'Dina Barradas',      397120845, 'dina.barradas@zon.pt',         '919384725', '1985-09-28', 0, 0, 'Google',              '2024-05-04 18:33:11', '2024-02-14 08:23:41'),
('C10089', 'Tiago Moreira',      183902187, 'tiago.moreira@pmail.com',      '961247830', NULL,         1, 1, NULL,                  '2024-04-15 13:17:24', '2024-03-01 15:39:06'),
('C10090', 'Luísa Mendes',       194253780, 'luisa.mendes@terra.pt',        '921938547', '1990-01-16', 0, 1, 'Facebook',            '2024-07-01 17:18:38', '2024-02-06 17:23:11'),
('C10091', 'Pedro Estrela',      328157240, 'pedro.estrela@mail.com',       '968375410', NULL,         1, 0, 'TheFork',             '2024-06-17 10:32:11', '2024-02-25 08:12:09'),
('C10092', 'Sónia Margarido',    158372904, 'sonia.margarido@gmail.com',    '913592741', '1999-07-22', 1, 1, NULL,                  '2024-07-28 16:13:43', '2024-06-18 12:47:30'),
('C10093', 'Raul Marinho',       189327540, 'raul.marinho@empresa.pt',     '911234760', '1986-10-25', 0, 1, NULL,                  '2024-05-15 13:48:26', '2024-03-09 10:22:41'),
('C10094', 'Alice Couto',        327185904, 'alice.couto@mail.pt',         '927451302', NULL,         1, 0, 'Instagram',           '2024-05-28 17:12:42', '2024-02-19 09:18:10'),
('C10095', 'Rafael Barros',      212384975, 'rafael.barros@icloud.com',    '919240631', '1998-12-02', 1, 1, 'Facebook',            '2024-07-14 11:50:23', '2024-06-03 13:55:33'),
('C10096', 'Vera Bastos',        155482370, 'vera.bastos@grupopt.pt',      '931798654', NULL,         0, 1, NULL,                  '2024-06-25 09:09:05', '2024-04-14 07:06:07'),
('C10097', 'Cláudio Miranda',    194725308, 'claudio.miranda@gmail.com',   '963728409', '1975-06-14', 0, 0, 'Events',             '2024-08-03 18:01:15', '2024-06-02 11:13:00'),
('C10098', 'Helena Brito',       205931847, 'helena.brito@zon.pt',         '921340876', NULL,         1, 1, NULL,                  '2024-06-16 19:44:03', '2024-05-31 10:10:12'),
('C10099', 'Tomás Patrocínio',   338192045, 'tomas.patrocinio@email.com',  '917482309', '1992-04-11', 1, 0, 'Friend Recommendation',  '2024-08-07 16:59:01', '2024-07-25 11:44:18'),
('C10100', 'Carlos Diogo',       172904385, 'carlos.diogo@mail.com',       '963084216', NULL,         0, 0, 'Tik Tok',             '2024-04-09 20:23:33', '2024-02-12 16:07:57'),
('C10101', 'Joana Guimarães',    267384510, 'joana.guimaraes@terra.pt',    '911385724', '1980-11-30', 0, 1, NULL,                  '2024-06-29 12:02:22', '2024-01-19 15:56:23'),
('C10102', 'Gonçalo Mendes',     102438579, 'goncalo.mendes@pmail.com',    '967342185', '1984-05-05', 1, 1, 'Instagram',           '2024-07-12 17:18:13', '2024-06-28 09:12:19'),
('C10103', 'Adriana Loureiro',   119284307, 'adriana.loureiro@zonmail.com','921305768', NULL,         1, 0, 'TheFork',             '2024-02-13 17:54:12', '2024-02-07 13:28:34'),
('C10104', 'Jorge Barbosa',      380749621, 'jorge.barbosa@empresa.pt',    '918432760', NULL,         0, 0, NULL,                  '2024-04-01 19:15:36', '2024-01-28 07:33:00'),
('C10105', 'Tatiana Lemos',      324589172, 'tatiana.lemos@mail.pt',       '913746890', '1999-10-14', 1, 1, NULL,                  '2024-03-21 08:19:39', '2024-03-01 21:14:22'),
('C10106', 'Miguel Pompeu',      175309248, 'miguel.pompeu@terra.com',     '962340871', NULL,         0, 1, 'Google',              '2024-04-28 10:28:10', '2024-02-16 10:05:13'),
('C10107', 'Ângela Ramos',       219347821, 'angela.ramos@gmail.com',      '961283047', '1982-06-08', 1, 1, 'Events',             '2024-07-10 22:40:22', '2024-03-25 17:17:34'),
('C10108', 'Luís Oliveira',      370428516, 'luis.oliveira@zon.pt',        '923091847', NULL,         1, 0, 'Facebook',            '2024-08-05 19:44:53', '2024-05-29 11:10:41'),
('C10109', 'Ariana Santos',      194328507, 'ariana.santos@pmail.com',     '913572840', '2001-03-18', 0, 1, NULL,                  '2024-06-13 20:19:34', '2024-03-15 18:38:17'),
('C10110', 'Noémi Goulart',      259083741, 'noemi.goulart@email.pt',      '968347250', NULL,         1, 1, 'Instagram',           '2024-05-24 08:16:14', '2024-01-23 07:44:26'),
('C10111', 'Eduarda Neves',      218347509, 'eduarda.neves@mail.pt',      '962437185', '1991-07-25', 0, 0, NULL,                  '2024-04-17 15:20:08', '2024-03-04 10:14:29'),
('C10112', 'Silvana Pereira',    312987640, 'silvana.pereira@zon.pt',     '913648209', NULL,         1, 1, 'Google',              '2024-02-23 19:09:15', '2024-02-03 17:44:54'),
('C10113', 'Bruno Sequeira',     273948250, 'bruno.sequeira@terra.com',   '931782654', '2000-01-31', 0, 1, 'TheFork',             '2024-07-26 09:01:36', '2024-06-03 15:02:33'),
('C10114', 'Vitória Rocha',      338427159, 'vitoria.rocha@grupopt.pt',   '968173452', '1984-03-17', 1, 0, NULL,                  '2024-06-16 13:41:50', '2024-05-22 07:25:00'),
('C10115', 'Ricardo Cabrita',    243098517, 'ricardo.cabrita@gmail.com',  '911438275', NULL,         1, 0, 'Events',             '2024-03-27 18:29:22', '2024-02-08 11:55:40'),
('C10116', 'Carla Ramos',        185797203, 'carla.ramos@icloud.com',     '963425801', '1986-10-08', 0, 1, NULL,                  '2024-08-07 17:32:19', '2024-08-01 13:22:41'),
('C10117', 'Samuel Fonseca',     210384956, 'samuel.fonseca@terra.pt',    '921385407', NULL,         1, 1, NULL,                  '2024-06-21 20:34:55', '2024-03-17 09:28:51'),
('C10118', 'Andreia Tavares',    278149305, 'andreia.tavares@mail.com',   '911827345', NULL,         1, 1, 'Friend Recommendation',  '2024-05-02 12:13:29', '2024-01-11 18:11:37'),
('C10119', 'Rui Correia',        193247158, 'rui.correia@mail.pt',        '927185403', '1971-09-06', 0, 1, 'Tik Tok',             '2024-03-15 10:02:16', '2024-01-18 15:08:26'),
('C10120', 'Sara Costa',         324069185, 'sara.costa@gmail.com',       '913840261', '1998-06-17', 1, 0, 'Facebook',            '2024-07-03 11:27:53', '2024-05-16 12:20:13'),
('C10121', 'Miguel Mateus',      210958374, 'miguel.mateus@zonmail.com',  '963847210', NULL,         0, 1, NULL,                  '2024-06-28 20:48:34', '2024-04-18 11:47:42'),
('C10122', 'Cristina Ferreira',  193485072, 'cristina.ferreira@empresa.pt','921347856', '1982-05-05', 1, 1, 'Email Marketing',    '2024-06-08 19:13:13', '2024-04-25 22:09:09'),
('C10123', 'Pedro Rocha',        294083156, 'pedro.rocha@terra.com',      '911840235', NULL,         1, 0, NULL,                  '2024-07-15 09:23:54', '2024-02-12 20:44:19'),
('C10124', 'Vera Sá',            270159384, 'vera.sa@mail.pt',            '962837140', '2003-02-28', 0, 0, 'Instagram',           '2024-07-29 13:14:21', '2024-07-14 09:45:33'),
('C10125', 'Tânia Cardoso',      117439258, 'tania.cardoso@gmail.com',    '918415763', NULL,         1, 1, NULL,                  '2024-04-15 06:07:20', '2024-01-30 22:11:58'),
('C10126', 'Joaquim Dias',       331597048, 'joaquim.dias@icloud.com',    '963481025', '1980-03-20', 1, 0, NULL,                  '2024-03-09 21:10:15', '2024-01-12 12:00:45'),
('C10127', 'Paulo Liberal',    136498205, 'paulo.liberal@mail.pt',        '962430175', NULL,         0, 0, NULL,                 '2024-06-11 16:21:32', '2024-02-16 14:08:07'),
('C10128', 'Susana Grilo',     183250498, 'susana.grilo@terra.pt',        '911843209', '1994-01-13', 1, 1, 'Google',              '2024-07-19 18:36:49', '2024-05-08 10:20:16'),
('C10129', 'Tiago Prates',     320473892, 'tiago.prates@zonmail.com',     '968143250', NULL,         1, 0, 'Facebook',            '2024-07-15 09:53:15', '2024-03-29 12:03:27'),
('C10130', 'Jéssica Bastos',   234985710, 'jessica.bastos@mail.pt',       '919372480', '1988-08-30', 0, 0, NULL,                 '2024-03-11 17:49:44', '2024-01-22 06:12:50'),
('C10131', 'Eduardo Maia',     109238475, 'eduardo.maia@empresa.pt',      '921357486', '1976-11-15', 1, 1, NULL,                 '2024-07-01 19:08:07', '2024-02-18 19:30:48'),
('C10132', 'Helena Céu',       224970345, 'helena.ceu@gmail.com',         '963475829', NULL,         1, 1, 'TheFork',             '2024-08-05 08:29:12', '2024-07-12 11:44:43'),
('C10133', 'Luís Ruivo',       367102948, 'luis.ruivo@zon.pt',            '913572184', NULL,         0, 0, NULL,                 '2024-06-23 20:18:16', '2024-06-05 15:22:08'),
('C10134', 'Margarida Leal',   281047324, 'margarida.leal@mail.com',      '962847310', '1999-12-19', 0, 1, 'Events',             '2024-05-11 12:55:37', '2024-01-31 13:14:17'),
('C10135', 'Rui Ventura',      142839570, 'rui.ventura@grupopt.pt',       '927140583', NULL,         1, 1, NULL,                 '2024-04-30 18:36:29', '2024-01-20 14:07:43'),
('C10136', 'Beatriz Teles',    219384750, 'beatriz.teles@icloud.com',     '968209347', '1997-04-29', 1, 0, 'Instagram',           '2024-08-06 10:36:51', '2024-07-31 19:00:00'),
('C10137', 'Sandro Furtado',   118392470, 'sandro.furtado@mail.pt',       '921849370', NULL,         1, 1, 'Friend Recommendation',  '2024-02-24 15:17:51', '2024-01-18 17:45:18'),
('C10138', 'Leonor Rebola',    140927385, 'leonor.rebola@pmail.com',      '913857421', '1983-03-01', 0, 1, NULL,                 '2024-05-30 11:46:43', '2024-02-19 20:50:09'),
('C10139', 'Ricardo Guerra',   330157894, 'ricardo.guerra@terra.com',     '968402315', '1971-12-12', 1, 0, NULL,                 '2024-06-19 14:18:59', '2024-03-22 10:38:06'),
('C10140', 'Glória Lemos',     124903876, 'gloria.lemos@gmail.com',       '921738594', NULL,         0, 0, 'Tik Tok',             '2024-04-16 17:18:21', '2024-02-27 08:29:54'),
('C10141', 'César Torres',     285401973, 'cesar.torres@empresa.pt',      '963175284', '1969-07-07', 1, 1, NULL,                 '2024-07-22 12:42:48', '2024-05-12 06:24:33'),
('C10142', 'Ágata Brás',       163058194, 'agata.bras@zonmail.com',       '913789452', NULL,         0, 1, NULL,                 '2024-05-17 13:39:19', '2024-04-01 12:25:13'),
('C10143', 'Sandra Torres',      230985172, 'sandra.torres@terra.pt',     '962478130', NULL,         1, 1, NULL,                 '2024-06-17 18:40:24', '2024-04-06 13:15:11'),
('C10144', 'Gonçalo Moura',     399182047, 'goncalo.moura@mail.pt',       '919234758', '1991-09-12', 0, 1, 'Google',              '2024-05-12 10:18:50', '2024-02-07 09:27:53'),
('C10145', 'Dora Valente',      127380492, 'dora.valente@zonmail.com',    '923817456', NULL,         0, 0, NULL,                 '2024-08-06 14:20:37', '2024-06-02 11:49:33'),
('C10146', 'Filipe Bastos',     140985317, 'filipe.bastos@icloud.com',    '913264879', '1995-03-24', 1, 0, 'Facebook',            '2024-04-21 09:05:23', '2024-03-13 18:30:13'),
('C10147', 'Renata Fragoso',    185764209, 'renata.fragoso@gmail.com',    '968314752', NULL,         1, 0, 'Instagram',           '2024-07-09 11:27:40', '2024-06-10 16:49:50'),
('C10148', 'Artur Miranda',     297530148, 'artur.miranda@empresa.pt',    '921834756', '1978-07-18', 0, 1, NULL,                 '2024-04-14 07:13:56', '2024-01-27 18:56:32'),
('C10149', 'Paula Pinto',       151098475, 'paula.pinto@mail.pt',         '963218470', NULL,         1, 1, 'Events',             '2024-07-23 13:17:10', '2024-03-16 19:53:29'),
('C10150', 'Vítor Louro',       367248509, 'vitor.louro@terra.com',       '911329847', '1986-02-01', 1, 1, NULL,                 '2024-08-08 10:08:47', '2024-07-29 08:11:51'),
('C10151', 'Verónica Costa',    249318750, 'veronica.costa@zon.pt',       '918347290', NULL,         0, 1, NULL,                 '2024-05-23 14:20:16', '2024-03-25 09:55:05'),
('C10152', 'Hugo Serafim',      188430967, 'hugo.serafim@mail.pt',        '921478651', '1992-11-11', 1, 0, 'TheFork',             '2024-04-29 16:37:12', '2024-02-19 08:13:27'),
('C10153', 'Manuela Rodrigues', 276341098, 'manuela.rodrigues@pmail.com', '963471820', '1988-06-22', 0, 0, NULL,                 '2024-08-02 11:44:44', '2024-05-15 18:48:03'),
('C10154', 'Carlos Vital',      172385794, 'carlos.vital@zon.pt',         '913148765', NULL,         0, 1, 'Tik Tok',             '2024-06-03 21:12:56', '2024-01-26 17:59:20'),
('C10155', 'Mariana Prata',     158920473, 'mariana.prata@terra.com',     '962371489', '2005-02-17', 1, 1, NULL,                 '2024-05-24 13:18:28', '2024-03-04 15:23:40'),
('C10156', 'João Conceição',    315784920, 'joao.conceicao@gmail.com',    '919824370', NULL,         0, 0, NULL,                 '2024-07-15 12:31:55', '2024-05-13 18:21:08'),
('C10157', 'Daniela Dias',      199238501, 'daniela.dias@icloud.com',     '921846137', '1970-10-20', 1, 0, 'Friend Recommendation',  '2024-07-18 07:20:30', '2024-05-05 16:54:38'),
('C10158', 'Cátia Andrade',     214307958, 'catia.andrade@zonmail.com',   '968143720', NULL,         1, 1, 'Google',              '2024-06-20 10:36:03', '2024-03-21 14:19:12'),
('C10159', 'Fernando Domingos',    123907854, 'fernando.domingos@pmail.com',   '913785204', NULL,         0, 1, NULL,                 '2024-07-23 09:05:28', '2024-01-29 11:44:37'),
('C10160', 'Inês Pais',            387274019, 'ines.pais@icloud.com',          '921487650', '1994-02-16', 1, 0, 'Instagram',           '2024-06-14 13:37:13', '2024-02-16 17:20:52'),
('C10161', 'João Barradas',        143298175, 'joao.barradas@empresa.pt',      '968143527', NULL,         0, 0, NULL,                 '2024-05-24 07:59:44', '2024-03-19 15:02:31'),
('C10162', 'Liliana Ferreira',     237581904, 'liliana.ferreira@mail.pt',      '963185042', '2001-06-10', 1, 1, 'Events',             '2024-07-17 15:20:59', '2024-06-02 14:34:37'),
('C10163', 'Rogério Tomé',         120398475, 'rogerio.tome@gmail.com',        '922714385', NULL,         1, 1, NULL,                 '2024-05-11 10:48:14', '2024-01-27 08:12:23'),
('C10164', 'Dulce Calado',         331459087, 'dulce.calado@zonmail.com',      '919384721', '1990-09-29', 0, 1, 'Facebook',            '2024-06-02 11:16:07', '2024-02-17 19:02:08'),
('C10165', 'Francisca Serra',      273015849, 'francisca.serra@terra.com',     '927460832', NULL,         1, 0, 'TheFork',             '2024-08-01 18:34:44', '2024-05-25 20:43:51'),
('C10166', 'Mário Alexandre',      138249175, 'mario.alexandre@mail.pt',       '913547620', '1973-12-24', 1, 1, NULL,                 '2024-05-21 08:04:19', '2024-02-06 16:17:49'),
('C10167', 'Duarte Coelho',        205983174, 'duarte.coelho@empresa.pt',      '962384570', NULL,         0, 1, NULL,                 '2024-03-17 20:19:58', '2024-02-16 19:10:51'),
('C10168', 'Carolina Mendonça',    124785903, 'carolina.mendonca@zon.pt',      '968431570', '1999-08-23', 1, 0, 'Google',              '2024-04-30 21:37:13', '2024-03-28 14:53:17'),
('C10169', 'André Dias',           389123407, 'andre.dias@terra.com',          '921389470', NULL,         1, 1, NULL,                 '2024-07-28 10:47:43', '2024-05-05 07:49:20'),
('C10170', 'Vera Rocha',           194720853, 'vera.rocha@icloud.com',         '913270841', NULL,         1, 0, 'Tik Tok',             '2024-06-13 22:42:09', '2024-02-11 12:54:32'),
('C10171', 'Pedro Craveiro',       136408295, 'pedro.craveiro@mail.pt',        '962847109', '1995-04-17', 1, 1, NULL,                 '2024-08-07 18:35:15', '2024-03-14 09:59:29'),
('C10172', 'Sandra Matos',         298134750, 'sandra.matos@zonmail.com',      '923847310', NULL,         0, 0, 'Instagram',           '2024-04-10 13:47:50', '2024-02-23 14:01:22'),
('C10173', 'Ruben Silva',          204871309, 'ruben.silva@gmail.com',         '913845620', '1989-12-19', 0, 1, 'Events',             '2024-06-16 09:07:44', '2024-02-19 16:32:03'),
('C10174', 'Ana Luz',              318472019, 'ana.luz@terra.com',             '968431572', NULL,         1, 0, NULL,                 '2024-07-07 15:44:18', '2024-01-21 14:07:31'),
('C10175', 'Matilde Pinheiro',      180943271, 'matilde.pinheiro@icloud.com',     '962417853', NULL,         0, 1, NULL,                 '2024-06-13 20:11:16', '2024-03-08 10:16:44'),
('C10176', 'Ricardo Brito',         278143905, 'ricardo.brito@mail.pt',           '918342750', '1986-12-27', 1, 0, 'Facebook',            '2024-07-23 08:47:38', '2024-05-23 08:11:38'),
('C10177', 'Joana Luna',            317485290, 'joana.luna@gmail.com',            '923498521', '1973-06-30', 1, 1, NULL,                 '2024-07-11 14:19:00', '2024-02-17 19:37:12'),
('C10178', 'Diogo Ferrão',          100948325, 'diogo.ferrao@zon.pt',             '911407238', NULL,         1, 1, 'Tik Tok',             '2024-08-02 16:32:44', '2024-05-31 14:00:50'),
('C10179', 'Helena Gomes',          226401795, 'helena.gomes@terra.pt',           '964831027', '1999-10-11', 0, 1, NULL,                 '2024-07-19 13:13:52', '2024-03-22 08:54:44'),
('C10180', 'Salvador Falcão',       135197428, 'salvador.falcao@mail.com',        '968131502', NULL,         1, 0, NULL,                 '2024-04-22 20:45:39', '2024-02-09 19:07:22'),
('C10181', 'Bruna Medeiros',        389274105, 'bruna.medeiros@pmail.com',        '919735410', '2002-07-07', 1, 1, 'Friend Recommendation',  '2024-05-27 13:41:10', '2024-04-04 12:16:17'),
('C10182', 'Manuel Quintas',        314892705, 'manuel.quintas@terra.com',        '921893057', NULL,         0, 0, 'Events',             '2024-05-18 17:45:38', '2024-02-02 20:26:38'),
('C10183', 'Sara Morgado',          245173809, 'sara.morgado@gmail.com',          '963420781', NULL,         1, 1, NULL,                 '2024-06-06 16:54:05', '2024-02-07 13:34:22'),
('C10184', 'Hugo Dores',            128493710, 'hugo.dores@zonmail.com',          '927413608', '1983-03-15', 0, 0, 'Google',              '2024-08-01 09:59:12', '2024-06-06 10:12:12'),
('C10185', 'Rita Almeida',          197384592, 'rita.almeida@empresa.pt',         '911294386', NULL,         1, 0, NULL,                 '2024-07-30 18:04:09', '2024-03-20 09:48:27'),
('C10186', 'Tomás Batista',         153920874, 'tomas.batista@mail.pt',           '963824175', '1972-01-21', 1, 1, 'TheFork',             '2024-07-05 20:13:25', '2024-02-18 08:51:23'),
('C10187', 'Raquel Peso',           194821570, 'raquel.peso@zon.pt',              '918375421', '1988-09-10', 1, 0, NULL,                 '2024-07-28 19:56:46', '2024-05-05 21:07:19'),
('C10188', 'Samuel Duarte',         382905471, 'samuel.duarte@gmail.com',         '921380574', NULL,         0, 0, 'Instagram',           '2024-04-25 14:42:48', '2024-02-12 10:27:50'),
('C10189', 'Fátima Feio',           246087351, 'fatima.feio@pmail.com',           '968103584', '2005-05-25', 1, 1, 'Facebook',            '2024-08-06 22:17:36', '2024-07-20 17:43:44'),
('C10190', 'Henrique Antunes',      112958470, 'henrique.antunes@icloud.com',     '961428379', NULL,         1, 1, NULL,                 '2024-07-13 07:22:19', '2024-04-08 08:12:30'),
('C10191', 'João Espada',           181904273, 'joao.espada@mail.pt',           '962197453', NULL,         0, 1, NULL,                 '2024-07-03 16:07:21', '2024-02-13 19:31:46'),
('C10192', 'Patrícia Bonito',       150934782, 'patricia.bonito@zon.pt',        '913257841', '1981-12-02', 1, 0, 'Events',             '2024-08-01 20:24:13', '2024-06-09 08:49:18'),
('C10193', 'Nuno Rebelo',           374680152, 'nuno.rebelo@empresa.pt',        '921387594', NULL,         0, 0, NULL,                 '2024-05-07 10:18:45', '2024-01-20 17:40:22'),
('C10194', 'Vanessa Ramires',       293487105, 'vanessa.ramires@pmail.com',     '968214597', '1997-06-22', 1, 1, 'Instagram',           '2024-07-13 12:11:50', '2024-03-12 08:46:39'),
('C10195', 'Pedro Quintas',         164938075, 'pedro.quintas@terra.com',       '927104538', NULL,         1, 1, NULL,                 '2024-05-25 14:29:17', '2024-04-18 12:04:55'),
('C10196', 'Ângela Silva',          219473815, 'angela.silva@gmail.com',        '911349827', '1992-10-15', 0, 0, 'Google',              '2024-06-19 08:55:30', '2024-02-05 13:36:53'),
('C10197', 'Bruno Matias',          183295710, 'bruno.matias@zonmail.com',      '963175249', '1980-04-08', 1, 1, NULL,                 '2024-06-05 21:46:02', '2024-02-16 16:50:18'),
('C10198', 'Sofia Vidigal',         233920574, 'sofia.vidigal@mail.pt',         '918372540', NULL,         1, 1, 'Facebook',            '2024-06-30 15:32:11', '2024-03-04 20:26:50'),
('C10199', 'Fernando Amado',        319507182, 'fernando.amado@terra.com',      '921048357', '1995-11-01', 0, 1, 'TheFork',             '2024-07-25 13:18:30', '2024-02-15 17:47:47'),
('C10200', 'Diana Lopes',           369148205, 'diana.lopes@icloud.com',        '968152473', NULL,         1, 0, NULL,                 '2024-08-07 19:00:22', '2024-05-13 10:29:01');

INSERT INTO Employees (
    id_employee, name, identification_doc, tax_id, email, phone_number,
    role, date_of_birth, address, iban, modified_at, created_at
) VALUES
('F00001', 'Ricardo Figueiredo', '12345678 AB 5', 187654321, 'ricardo.figueiredo@empresa.pt', '913456789', 'multitasker',   '1989-06-16', 'Rua do Trabalho, 12, Porto', 'PT50000201234567890123456', '2024-07-04 15:03:26', '2024-03-18 11:27:01'),
('F00002', 'Joana Santos',       '98765432 CD 0', 225678991, 'joana.santos@email.com',         '932145678', 'multitasker',   NULL,                       NULL,                         'PT50000298765432101234567', '2024-06-19 10:22:44', '2024-04-11 14:08:17'),
('F00003', 'Carlos Louro',       '24681357 ZX 4', 193456172, 'carlos.louro@mail.pt',           '961234567', 'multitasker',   '1995-02-27', 'Av. Central, 82, Braga',     'PT50000324681357901357923', '2024-08-06 20:30:12', '2024-01-14 16:05:38'),
('F00004', 'Andreia Silva',      '32165498 XY 7', 208654219, 'andreia.silva@icloud.com',       '936598741', 'segurança',     '1984-12-10', NULL,                         'PT50000532165498701478523', '2024-08-02 09:21:51', '2024-03-21 15:32:16'),
('F00005', 'Mário Serafim',      '75395148 EF 2', 286380154, 'mario.serafim@empresa.org',      '926457138', 'segurança',     '1978-05-02', 'Av. das Flores, 206, Lisboa', 'PT50000775395148605896231', '2024-07-15 11:38:44', '2024-04-17 10:52:04'),
('F00006', 'Tânia Costa',        '15935728 GH 9', 244578365, 'tania.costa@gmail.com',          '919284317', 'segurança',     NULL,                       NULL,                         'PT50000815935728404857362', '2024-06-06 17:20:23', '2024-02-08 13:12:59');

INSERT INTO Products (
    id_product, name, description, product_type, sale_price,
    current_stock, minimum_stock, created_at
) VALUES
('P00001', 'Northern Hop',            'Citrusy aroma and balanced bitterness.',                      'beer', 4.79, 31, 30, '2024-02-23 11:41:32'),
('P00002', 'Valley Wheat',            'Light, fruity and refreshing.',                              'beer', 2.61, 0, 20, '2024-03-05 15:03:01'),
('P00003', 'Dark Mountain',           'Robust beer with notes of coffee and chocolate.',            'beer', 3.05, 73, 50, '2024-04-08 13:29:44'),
('P00004', 'Solaris Amber',           'Malty, amber color and mild sweetness.',                     'beer', 4.32, 9, 20, '2024-04-24 19:15:30'),
('P00005', 'Malty Night',             'Dark, toasted flavor with a hint of caramel.',               'beer', 3.45, 63, 30, '2024-04-29 14:27:39'),
('P00006', 'Tropical Citrus',         'Refreshing, light and citrus fruit notes.',                  'beer', 2.45, 0, 20, '2024-05-07 12:10:25'),
('P00007', 'Hop Fire',                'High alcohol, intense bitterness.',                          'beer', 3.99, 11, 30, '2024-05-14 17:40:16'),
('P00008', 'Clear Mist',              'Slightly bitter with a dry finish.',                         'beer', 2.99, 27, 20, '2024-05-18 13:26:55'),
('P00009', 'Wheat Wind',              'With coriander and orange peel, Belgian style.',             'beer', 4.95, 64, 50, '2024-05-22 10:44:11'),
('P00010', 'Starlight Gold',          'Smooth, light and golden.',                                  'beer', 2.77, 21, 20, '2024-06-01 19:41:38'),
('P00011', 'Black Velvet',            'Dry and creamy with roasted notes.',                         'beer', 3.84, 34, 30, '2024-06-09 13:06:24'),
('P00012', 'Acid Mountain',           'Acidic, fruity and experimental.',                           'beer', 2.31, 12, 20, '2024-06-17 16:09:41'),
('P00013', 'Wild Ruby',               'Malty with caramel notes and smooth finish.',                'beer', 3.23, 35, 30, '2024-06-22 15:48:32'),
('P00014', 'Hoppy Breeze',            'Cloudy, aromatic and fruity.',                               'beer', 4.51, 28, 20, '2024-06-24 14:20:30'),
('P00015', 'Strong Chestnut',         'Full bodied with nut and toffee accents.',                   'beer', 4.99, 19, 30, '2024-06-29 10:40:13'),
('P00016', 'Golden Dawn',             'Refreshing and mildly malty.',                               'beer', 2.16, 92, 50, '2024-07-01 09:38:01'),
('P00017', 'Royal Barley',            'Strong, sweet and complex.',                                 'beer', 3.22, 50, 50, '2024-07-09 16:33:04'),
('P00018', 'Forest Berry',            'Made with red fruits.',                                      'beer', 2.87, 7, 20, '2024-07-12 10:15:47'),
('P00019', 'Yellow Storm',            'Extremely hoppy and alcoholic.',                             'beer', 4.45, 66, 30, '2024-07-18 12:04:25'),
('P00020', 'Frontier Saison',         'Rustic style, fruity and mildly spicy.',                     'beer', 2.69, 17, 30, '2024-07-28 20:15:55'),
('P00021', 'Scotch Egg',              'Ovo cozido envolto em carne de salsicha, empanado e frito.',       'snacks', 2.71, 96, 20, '2024-05-09 13:25:23'),
('P00022', 'Pork Cracklings',         'Pele de porco frita até ficar crocante, servida com sal.',         'snacks', 1.80, 54, 30, '2024-05-12 09:32:40'),
('P00023', 'Mini Fish & Chips',       'Porção pequena de peixe empanado com batatas fritas.',             'snacks', 3.26, 74, 20, '2024-05-15 17:44:53'),
('P00024', 'Sausage Rolls',           'Enroladinhos de massa folhada com recheio de salsicha.',           'snacks', 2.17, 18, 20, '2024-05-22 18:19:08'),
('P00025', 'Cheddar Bites',           'Cubos de cheddar empanados e fritos, derretem por dentro.',        'snacks', 2.03, 81, 20, '2024-06-01 19:25:47'),
('P00026', 'Chicken Wings BBQ',       'Asinhas de frango assadas com molho barbecue.',                    'snacks', 3.43, 89, 50, '2024-06-09 14:02:12'),
('P00027', 'Onion Rings',             'Anéis de cebola empanados e fritos até dourar.',                   'snacks', 1.73, 16, 30, '2024-06-21 15:53:38'),
('P00028', 'Nacho Cheese',            'Tortilla chips crocantes servidos com molho de queijo quente.',    'snacks', 2.74, 99, 20, '2024-07-08 12:44:59');

INSERT INTO Reviews (id_client, rating, comment, visibility) VALUES
('C10002', 5,    'Top service, will return!',                        1),
('C10011', 5,    'Best beers I have tried in the city.',              1),
('C10023', 4,    'Good, but the music was too loud.',                1),
('C10027', 3,    NULL,                                                0),
('C10034', 5,    NULL,                                                1),
('C10047', 5,    'Amazing snacks and great vibe.',                   1),
('C10056', 5,    NULL,                                                1),
('C10059', 4,    'Nice place, friendly staff.',                      1),
('C10066', 2,    NULL,                                                0),
('C10071', 1,    'Disappointing, beer tasted stale.',                0),
('C10075', 5,    NULL,                                                1),
('C10081', 5,    'Muito bom!',                                       1),
('C10090', 5,    NULL,                                                1),
('C10098', 4,    NULL,                                                1),
('C10105', 3,    NULL,                                                0),
('C10111', 4,    'Bera chilled, love the terrace.',                  1),
('C10125', 5,    'Sensational service.',                             1),
('C10137', 5,    NULL,                                                1),
('C10141', 4,    NULL,                                                1),
('C10159', 5,    'Perfect! Highly recommend.',                       1),
('C10165', 5,    NULL,                                                1),
('C10166', 5,    'Staff were attentive and quick.',                  1),
('C10173', 5,    NULL,                                                1),
('C10178', 2,    'Too crowded when I visited.',                      0),
('C10186', 4,    'Lovely decor and atmosphere.',                     1),
('C10197', 5,    NULL,                                                1),
('C10200', 5,    NULL,                                                1),
('C10008', 5,    NULL,                                                1),
('C10019', 4,    'Bons preços e cervejas!',                          1),
('C10041', 5,    'Will recommend to friends.',                       1),
('C10052', 5,    NULL,                                                1),
('C10089', 5,    NULL,                                                1),
('C10112', 1,    NULL,                                                0),
('C10128', 3,    NULL,                                                0),
('C10139', 5,    'Really enjoyed the snacks.',                       1),
('C10192', 4,    NULL,                                                1);

INSERT INTO Events (
    id_event, name, description, event_type, event_date, event_time,
    location, capacity, private_event, price, modified_at, created_at
) VALUES
('E00001', 'St. Patrick’s Bash',    'Festa com cerveja verde, música irlandesa e brindes.',  'party',      '2025-03-17', '21:00', 'Taproom Principal',  60, FALSE, 10.00, '2025-03-05 12:20:02', '2025-02-22 10:12:47'),
('E00002', 'Craft Beer Launch',     'Lançamento da nossa Baltic Porter sazonal.',             'launch', '2025-05-10', '19:30', 'Sala de Provas',     60, FALSE, 3.50,  '2025-05-01 16:03:11', '2025-04-11 13:12:19'),
('E00003', 'Arte na Taproom',       'Exposição de artistas locais com degustação de snacks.', 'other',      '2025-06-22', '17:00', 'Galeria Taproom',    60, FALSE, 4.00,  '2025-06-05 11:05:50', '2025-05-21 09:58:34'),
('E00004', 'IPA Brewing Workshop',  'Aprende a fazer IPA em casa com o nosso mestre.',        'workshop',   '2025-07-12', '15:00', 'Sala de Workshops',  20, TRUE, 23.00, '2025-07-01 18:08:40', '2025-06-15 11:17:17'),
('E00005', 'Summer Beer Fest',      'Celebração no terraço com 10 cervejas diferentes.',      'party',      '2025-09-06', '18:00', 'Taproom Terraço',    100, FALSE, 8.00,  '2025-08-07 18:00:00', '2025-08-07 18:00:00'),
('E00006', 'Saaz Saison Release',   'Novo lote de Saison com provas e música ao vivo.',       'launch', '2025-09-13', '19:00', 'Sala de Provas',     60, TRUE, 5.00,  '2025-08-07 18:00:00', '2025-08-07 18:00:00'),
('E00007', 'Quiz Night',            'Noite de quiz com prémios para as melhores equipas.',    'other',      '2025-09-25', '21:15', 'Taproom Principal',  60, FALSE, 2.00,  '2025-08-07 18:00:00', '2025-08-07 18:00:00'),
('E00008', 'Hamburgers & Beer Workshop', 'Workshop especial de harmonização.',                'workshop',   '2025-10-04', '16:00', 'Sala Gourmet',       20, TRUE, 17.50, '2025-08-07 18:00:00', '2025-08-07 18:00:00');

INSERT INTO Event_Participations (id_event, id_client, registration_date) VALUES
('E00001', 'C10001', '2025-02-20 13:40:00'),
('E00001', 'C10002', '2025-02-25 16:10:00'),
('E00001', 'C10003', '2025-02-26 09:55:00'),
('E00001', 'C10004', '2025-02-28 11:22:00'),
('E00001', 'C10005', '2025-03-03 12:45:00'),
('E00001', 'C10006', '2025-03-04 14:21:00'),
('E00001', 'C10007', '2025-03-07 17:18:00'),
('E00001', 'C10008', '2025-03-09 18:10:00'),
('E00001', 'C10009', '2025-03-11 12:03:00'),
('E00001', 'C10010', '2025-03-13 19:54:00'),
('E00001', 'C10011', '2025-03-14 21:00:00'),
('E00002', 'C10001', '2025-04-12 16:11:00'),
('E00002', 'C10002', '2025-04-18 13:28:00'),
('E00002', 'C10003', '2025-04-20 11:36:00'),
('E00002', 'C10004', '2025-04-22 14:08:00'),
('E00002', 'C10005', '2025-04-23 19:14:00'),
('E00002', 'C10006', '2025-04-25 17:44:00'),
('E00002', 'C10011', '2025-04-28 20:13:00'),
('E00002', 'C10012', '2025-04-29 08:23:00'),
('E00002', 'C10013', '2025-05-01 13:15:00'),
('E00002', 'C10014', '2025-05-03 10:12:00'),
('E00002', 'C10015', '2025-05-07 09:40:00'),
('E00002', 'C10008', '2025-05-08 14:04:00'),
('E00003', 'C10002', '2025-05-25 10:00:00'),
('E00003', 'C10003', '2025-06-01 11:14:00'),
('E00003', 'C10006', '2025-06-03 12:21:00'),
('E00003', 'C10008', '2025-06-05 13:33:00'),
('E00003', 'C10009', '2025-06-06 14:25:00'),
('E00003', 'C10010', '2025-06-08 17:47:00'),
('E00003', 'C10011', '2025-06-09 16:04:00'),
('E00003', 'C10014', '2025-06-10 15:00:00'),
('E00003', 'C10015', '2025-06-12 13:01:00'),
('E00003', 'C10012', '2025-06-13 09:23:00'),
('E00003', 'C10013', '2025-06-15 19:15:00'),
('E00004', 'C10005', '2025-06-16 14:00:00'),
('E00004', 'C10006', '2025-06-19 10:45:00'),
('E00004', 'C10008', '2025-06-22 11:12:00'),
('E00004', 'C10010', '2025-06-25 12:22:00'),
('E00004', 'C10011', '2025-06-27 16:37:00'),
('E00004', 'C10012', '2025-06-29 13:19:00'),
('E00004', 'C10013', '2025-07-01 18:08:00'),
('E00004', 'C10014', '2025-07-02 09:55:00'),
('E00004', 'C10015', '2025-07-03 12:22:00'),
('E00004', 'C10017', '2025-07-04 12:40:00'),
('E00004', 'C10018', '2025-07-06 09:40:00'),
('E00004', 'C10003', '2025-07-07 16:09:00'),
('E00004', 'C10016', '2025-07-08 11:54:00'),
('E00004', 'C10019', '2025-07-09 20:14:00'),
('E00004', 'C10020', '2025-07-10 17:17:00'),
('E00005', 'C10001', '2025-08-02 13:13:00'),
('E00005', 'C10004', '2025-08-05 09:28:00'),
('E00005', 'C10007', '2025-08-09 18:40:00'),
('E00005', 'C10009', '2025-08-10 16:21:00'),
('E00005', 'C10012', '2025-08-12 12:32:00'),
('E00005', 'C10013', '2025-08-13 17:47:00'),
('E00005', 'C10014', '2025-08-15 10:11:00'),
('E00005', 'C10015', '2025-08-15 12:02:00'),
('E00005', 'C10016', '2025-08-16 14:50:00'),
('E00005', 'C10017', '2025-08-17 09:34:00'),
('E00005', 'C10018', '2025-08-22 16:23:00'),
('E00005', 'C10019', '2025-08-25 11:07:00'),
('E00005', 'C10021', '2025-08-28 13:25:00'),
('E00005', 'C10022', '2025-08-29 14:09:00'),
('E00006', 'C10002', '2025-08-13 15:07:00'),
('E00006', 'C10003', '2025-08-20 16:33:00'),
('E00006', 'C10004', '2025-08-30 17:52:00'),
('E00006', 'C10006', '2025-09-01 14:26:00'),
('E00006', 'C10007', '2025-09-03 13:08:00'),
('E00006', 'C10008', '2025-09-04 18:40:00'),
('E00006', 'C10009', '2025-09-06 12:10:00'),
('E00006', 'C10011', '2025-09-07 11:33:00'),
('E00006', 'C10012', '2025-09-08 14:18:00'),
('E00006', 'C10014', '2025-09-09 15:55:00'),
('E00006', 'C10016', '2025-09-10 17:03:00'),
('E00006', 'C10018', '2025-09-11 13:21:00'),
('E00006', 'C10021', '2025-09-12 10:44:00'),
('E00007', 'C10001', '2025-09-07 17:01:00'),
('E00007', 'C10003', '2025-09-09 15:14:00'),
('E00007', 'C10004', '2025-09-10 10:31:00'),
('E00007', 'C10006', '2025-09-14 21:08:00'),
('E00007', 'C10007', '2025-09-15 09:00:00'),
('E00007', 'C10008', '2025-09-16 14:25:00'),
('E00007', 'C10010', '2025-09-18 18:18:00'),
('E00007', 'C10011', '2025-09-20 19:20:00'),
('E00007', 'C10013', '2025-09-21 10:14:00'),
('E00007', 'C10016', '2025-09-23 13:36:00'),
('E00007', 'C10019', '2025-09-24 09:27:00'),
('E00007', 'C10022', '2025-09-24 18:30:00'),
('E00008', 'C10002', '2025-09-16 13:00:00'),
('E00008', 'C10003', '2025-09-20 10:00:00'),
('E00008', 'C10005', '2025-09-21 19:12:00'),
('E00008', 'C10006', '2025-09-23 17:27:00'),
('E00008', 'C10009', '2025-09-25 11:21:00'),
('E00008', 'C10010', '2025-09-26 17:44:00'),
('E00008', 'C10011', '2025-09-28 08:56:00'),
('E00008', 'C10013', '2025-09-28 13:38:00'),
('E00008', 'C10015', '2025-09-28 19:03:00'),
('E00008', 'C10016', '2025-09-29 14:17:00'),
('E00008', 'C10017', '2025-09-29 15:29:00'),
('E00008', 'C10018', '2025-10-01 11:12:00'),
('E00008', 'C10024', '2025-10-01 20:33:00'),
('E00008', 'C10025', '2025-10-02 18:06:00');

INSERT INTO Suppliers (
    id_supplier, company_name, tax_id, email, phone_number,
    contact_person, address, country, modified_at, created_at
) VALUES
('F00001', 'SnackMasters Portugal',    515378240, 'comercial@snackmasters.pt',     '917452836', 'Vera Coelho',   'Rua do Armazém, 120, Lisboa',      'Portugal',    '2024-05-18 12:18:55', '2024-01-25 10:15:30'),
('F00002', 'HopNation GmbH',           548792105, 'info@hopnation.de',             '931275846', 'Maximilian Beer','Hopsweg 9, 21335 Lüneburg',        'Alemanha',    '2024-06-07 08:41:06', '2024-02-13 12:21:44'),
('F00003', 'GoldenGrain Snacks',       525804113, 'vendas@goldengrainsnacks.com',  '963172875', NULL,             NULL,                               'Reuno Unido',     '2024-02-26 19:14:24', '2024-01-28 15:18:22'),
('F00004', 'BrewersHub Lda.',          562198734, 'contact@brewershub.pt',         '961472358', 'Pedro Amaral',   'Av. Central, 243, Porto',           'Portugal',    '2024-08-03 09:52:19', '2024-03-03 09:50:10'),
('F00005', 'Nordic Craft Import',      528512167, 'orders@nordicbeer.se',          '919837245', 'Sofia Lund',     'Skeppsbron 18, 111 30 Stockholm',   'Suécia',      '2024-07-08 16:18:47', '2024-03-08 12:44:55'),
('F00006', 'Tradition Malterie SAS',   517841605, 'sales@malterie.fr',             '913865294', 'Étienne Blanc',  '3 Rue de la Brasserie, Strasbourg', 'França',      '2024-06-19 13:33:10', '2024-02-08 11:17:03'),
('F00007', 'Brew Importers SL',        555104280, 'export@brewimporters.es',       '962487139', 'Marta Lloret',   'C/ Santa Rosa, 56, 08030 Barcelona','Espanha',     '2024-03-04 21:22:35', '2024-01-24 14:19:28'),
('F00008', 'Superbock Distribuição',   545379851, 'clientes@superbockdistrib.pt',  '919654703', NULL,             'Rua da Fábrica, 99, Porto',         'Portugal',    '2024-07-21 09:28:11', '2024-02-22 16:43:50'),
('F00009', 'Hops & Co. Ltd.',          532478910, 'clientes@hopsco.us',           '918273645', 'John Doe',      '2567 Willow Street, Springfield, IL 62704',   'EUA',         '2024-05-30 10:15:22', '2024-01-30 11:55:40');

INSERT INTO Payments (
    id_payment, id_client, id_employee, amount, currency,
    payment_method, payment_status, payment_date
) VALUES (
    'PG0001',          
    'C10001',           
    'F00001',           
    (SELECT SUM(qt * price) FROM (
        SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00001' 
        UNION ALL 
        SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00011'
    )),    
    'EUR',            
    'card',          
    'completed',        
    '2024-06-12 10:15:00' 
),
('PG0002', 'C10002', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00007' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00021'
  )),
  'EUR', 'card', 'completed', '2024-07-01 14:30:45'
),
('PG0003', 'C10003', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00009' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00023' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00028'
  )),
  'EUR', 'cash', 'completed', '2024-03-25 09:50:12'
),
('PG0004', 'C10004', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 4 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00016'
  )),
  'EUR', 'card', 'completed', '2024-05-20 16:10:30'
),
('PG0005', 'C10005', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00018' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00027'
  )),
  'EUR', 'card', 'canceled', '2024-08-07 11:45:10'
),
('PG0006', 'C10006', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00004' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00022'
  )),
  'EUR', 'cash', 'completed', '2024-04-18 13:22:55'
),
('PG0007', 'C10007', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00003' UNION ALL
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00025'
  )),
  'EUR', 'card', 'completed', '2024-06-07 08:15:33'
),
('PG0008', 'C10008', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00014' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00019' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00026'
  )),
  'EUR', 'card', 'completed', '2024-07-22 17:03:10'
),
('PG0009', 'C10009', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 4 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00005'
  )),
  'EUR', 'cash', 'completed', '2024-03-30 12:05:55'
),
('PG0010', 'C10010', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00002' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00008'
  )),
  'EUR', 'card', 'completed', '2024-04-15 09:25:44'
),
('PG0011', 'C10011', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00027' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00013'
  )),
  'EUR', 'card', 'completed', '2024-05-11 14:33:21'
),
('PG0012', 'C10012', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00024'
  )),
  'USD', 'card', 'completed', '2024-06-18 11:22:45'
),
('PG0013', 'C10013', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00007' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00009' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00020'
  )),
  'EUR', 'card', 'completed', '2024-07-25 15:17:03'
),
('PG0014', 'C10014', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00011' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00015'
  )),
  'EUR', 'card', 'completed', '2024-08-02 10:44:56'
),
('PG0015', 'C10015', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 4 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00003'
  )),
  'EUR', 'cash', 'completed', '2024-03-22 08:50:19'
),
('PG0016', 'C10016', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00018' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00022'
  )),
  'EUR', 'card', 'canceled', '2024-06-30 18:15:30'
),
('PG0017', 'C10017', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00013' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00027'
  )),
  'EUR', 'card', 'completed', '2024-07-18 11:11:11'
),
('PG0018', 'C10018', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00005' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00015'
  )),
  'EUR', 'cash', 'completed', '2024-05-28 09:09:09'
),
('PG0019', 'C10019', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00001' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00019'
  )),
  'GBP', 'card', 'completed', '2024-04-04 14:14:14'
),
('PG0020', 'C10020', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00004' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00008' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00012'
  )),
  'EUR', 'card', 'completed', '2024-07-07 10:10:10'
),
('PG0021', 'C10021', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00012' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00022'
  )),
  'EUR', 'card', 'completed', '2024-06-12 09:00:00'
),
('PG0022', 'C10022', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00015' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00018'
  )),
  'EUR', 'card', 'completed', '2024-07-15 10:30:30'
),
('PG0023', 'C10023', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00002' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00005' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00027'
  )),
  'EUR', 'cash', 'completed', '2024-05-23 13:15:45'
),
('PG0024', 'C10024', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 4 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00001'
  )),
  'EUR', 'card', 'completed', '2024-08-01 15:45:20'
),
('PG0025', 'C10025', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00023' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00011'
  )),
  'EUR', 'card', 'canceled', '2024-07-28 11:11:11'
),
('PG0026', 'C10026', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00004' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00006'
  )),
  'EUR', 'cash', 'completed', '2024-06-20 17:10:10'
),
('PG0027', 'C10027', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00007' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00028'
  )),
  'EUR', 'card', 'completed', '2024-05-17 09:30:30'
),
('PG0028', 'C10028', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00009' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00013' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00024'
  )),
  'EUR', 'card', 'pending', '2024-08-10 12:00:00'
),
('PG0029', 'C10029', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00015'
  )),
  'EUR', 'cash', 'completed', '2024-07-21 08:40:40'
),
('PG0030', 'C10030', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00016' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00020'
  )),
  'EUR', 'card', 'completed', '2024-04-05 14:10:50'
),
('PG0031', 'C10031', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00025' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00027'
  )),
  'EUR', 'card', 'completed', '2024-06-01 11:25:00'
),
('PG0032', 'C10032', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00001'
  )),
  'EUR', 'cash', 'completed', '2024-05-10 09:35:00'
),
('PG0033', 'C10033', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00002' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00003' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00006'
  )),
  'EUR', 'card', 'completed', '2024-07-12 15:40:20'
),
('PG0034', 'C10034', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00008' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00009'
  )),
  'EUR', 'card', 'completed', '2024-07-18 18:50:30'
),
('PG0035', 'C10035', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00012' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00019'
  )),
  'EUR', 'cash', 'completed', '2024-06-30 20:15:10'
),
('PG0036', 'C10036', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00014' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00016'
  )),
  'EUR', 'card', 'completed', '2024-07-22 07:25:55'
),
('PG0037', 'C10037', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00020' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00021'
  )),
  'EUR', 'card', 'canceled', '2024-05-15 13:30:00'
),
('PG0038', 'C10038', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00022' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00024'
  )),
  'EUR', 'cash', 'completed', '2024-06-18 09:55:40'
),
('PG0039', 'C10039', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00026' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00028'
  )),
  'EUR', 'card', 'completed', '2024-04-21 10:05:05'
),
('PG0040', 'C10040', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 4 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00015'
  )),
  'EUR', 'card', 'completed', '2024-07-27 16:40:40'
),
('PG0041', 'C10041', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00003' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00010'
  )),
  'EUR', 'card', 'completed', '2024-06-01 14:00:00'
),
('PG0042', 'C10042', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00011'
  )),
  'EUR', 'cash', 'completed', '2024-07-20 10:30:00'
),
('PG0043', 'C10043', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00014' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00001'
  )),
  'EUR', 'card', 'pending', '2024-08-15 09:45:00'
),
('PG0044', 'C10044', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 4 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00009'
  )),
  'EUR', 'card', 'completed', '2024-05-22 12:15:00'
),
('PG0045', 'C10045', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00007' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00016'
  )),
  'EUR', 'cash', 'completed', '2024-07-30 18:00:00'
),
('PG0046', 'C10046', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00020' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00005'
  )),
  'EUR', 'card', 'completed', '2024-06-10 11:30:00'
),
('PG0047', 'C10047', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00024'
  )),
  'EUR', 'card', 'completed', '2024-08-01 13:50:00'
),
('PG0048', 'C10048', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00013' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00018'
  )),
  'EUR', 'cash', 'completed', '2024-07-07 15:20:00'
),
('PG0049', 'C10049', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00006' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00002'
  )),
  'EUR', 'card', 'completed', '2024-07-25 10:05:00'
),
('PG0050', 'C10050', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00028' UNION ALL
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00012'
  )),
  'EUR', 'card', 'completed', '2024-06-18 09:00:00'
),
('PG0051', 'C10019', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00021' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00017'
  )),
  'GBP', 'card', 'completed', '2024-07-20 16:30:00'
),
('PG0052', 'C10020', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 4 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00015'
  )),
  'EUR', 'card', 'completed', '2024-07-15 14:45:00'
),
('PG0053', 'C10012', 'F00001',
  (SELECT SUM(qt * price) FROM (
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00011' UNION ALL
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00023'
  )),
  'USD', 'card', 'completed', '2024-06-10 11:20:00'
),
('PG0054', 'C10012', 'F00002',
  (SELECT SUM(qt * price) FROM (
      SELECT 1 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00010' UNION ALL
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00008'
  )),
  'USD', 'card', 'completed', '2024-06-18 09:50:00'
),
('PG0055', 'C10007', 'F00003',
  (SELECT SUM(qt * price) FROM (
      SELECT 2 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00001' UNION ALL
      SELECT 3 AS qt, sale_price AS price FROM Products WHERE id_product = 'P00014'
  )),
  'EUR', 'card', 'completed', '2024-07-25 12:30:00'
);

INSERT INTO Payment_Items (id_payment, id_product, quantity, unit_price) VALUES (
    'PG0001',          
    'P00001',         
    2,             
    (SELECT sale_price FROM Products WHERE id_product = 'P00001') 
),
('PG0001', 'P00011', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00011')),
('PG0002', 'P00007', 3, (SELECT sale_price FROM Products WHERE id_product = 'P00007')),
('PG0002', 'P00021', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00021')),
('PG0003', 'P00009', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00009')),
('PG0003', 'P00023', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00023')),
('PG0003', 'P00028', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00028')),
('PG0004', 'P00016', 4, (SELECT sale_price FROM Products WHERE id_product = 'P00016')),
('PG0005', 'P00018', 3, (SELECT sale_price FROM Products WHERE id_product = 'P00018')),
('PG0005', 'P00027', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00027')),
('PG0006', 'P00004', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00004')),
('PG0006', 'P00022', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00022')),
('PG0007', 'P00003', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00003')),
('PG0007', 'P00025', 3, (SELECT sale_price FROM Products WHERE id_product = 'P00025')),
('PG0008', 'P00014', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00014')),
('PG0008', 'P00019', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00019')),
('PG0008', 'P00026', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00026')),
('PG0009', 'P00005', 4, (SELECT sale_price FROM Products WHERE id_product = 'P00005')),
('PG0010', 'P00002', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00002')),
('PG0010', 'P00008', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00008')),
('PG0021', 'P00012', 3, (SELECT sale_price FROM Products WHERE id_product = 'P00012')),
('PG0021', 'P00022', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00022')),
('PG0022', 'P00015', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00015')),
('PG0022', 'P00018', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00018')),
('PG0023', 'P00002', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00002')),
('PG0023', 'P00005', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00005')),
('PG0023', 'P00027', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00027')),
('PG0024', 'P00001', 4, (SELECT sale_price FROM Products WHERE id_product = 'P00001')),
('PG0025', 'P00023', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00023')),
('PG0025', 'P00011', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00011')),
('PG0026', 'P00004', 3, (SELECT sale_price FROM Products WHERE id_product = 'P00004')),
('PG0026', 'P00006', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00006')),
('PG0027', 'P00007', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00007')),
('PG0027', 'P00028', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00028')),
('PG0028', 'P00009', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00009')),
('PG0028', 'P00013', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00013')),
('PG0028', 'P00024', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00024')),
('PG0029', 'P00015', 3, (SELECT sale_price FROM Products WHERE id_product = 'P00015')),
('PG0030', 'P00016', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00016')),
('PG0030', 'P00020', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00020')),
('PG0041', 'P00003', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00003')),
('PG0041', 'P00010', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00010')),
('PG0042', 'P00011', 3, (SELECT sale_price FROM Products WHERE id_product = 'P00011')),
('PG0043', 'P00014', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00014')),
('PG0043', 'P00001', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00001')),
('PG0044', 'P00009', 4, (SELECT sale_price FROM Products WHERE id_product = 'P00009')),
('PG0045', 'P00007', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00007')),
('PG0045', 'P00016', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00016')),
('PG0046', 'P00020', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00020')),
('PG0046', 'P00005', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00005')),
('PG0047', 'P00024', 3, (SELECT sale_price FROM Products WHERE id_product = 'P00024')),
('PG0048', 'P00013', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00013')),
('PG0048', 'P00018', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00018')),
('PG0049', 'P00006', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00006')),
('PG0049', 'P00002', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00002')),
('PG0050', 'P00028', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00028')),
('PG0050', 'P00012', 3, (SELECT sale_price FROM Products WHERE id_product = 'P00012')),
('PG0051', 'P00021', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00021')),
('PG0051', 'P00017', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00017')),
('PG0052', 'P00015', 4, (SELECT sale_price FROM Products WHERE id_product = 'P00015')),
('PG0053', 'P00011', 3, (SELECT sale_price FROM Products WHERE id_product = 'P00011')),
('PG0053', 'P00023', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00023')),
('PG0054', 'P00010', 1, (SELECT sale_price FROM Products WHERE id_product = 'P00010')),
('PG0054', 'P00008', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00008')),
('PG0055', 'P00001', 2, (SELECT sale_price FROM Products WHERE id_product = 'P00001')),
('PG0055', 'P00014', 3, (SELECT sale_price FROM Products WHERE id_product = 'P00014'));

UPDATE Products SET purchase_price = CASE id_product
	WHEN 'P00001' THEN 3.20
	WHEN 'P00002' THEN 1.50
	WHEN 'P00003' THEN 2.10
	WHEN 'P00004' THEN 3.00
	WHEN 'P00005' THEN 2.40
	WHEN 'P00006' THEN 1.70
	WHEN 'P00007' THEN 2.80
	WHEN 'P00008' THEN 1.90
	WHEN 'P00009' THEN 3.10
	WHEN 'P00010' THEN 1.80
	WHEN 'P00011' THEN 2.50
	WHEN 'P00012' THEN 1.40
	WHEN 'P00013' THEN 2.20
	WHEN 'P00014' THEN 3.30
	WHEN 'P00015' THEN 3.50
	WHEN 'P00016' THEN 1.40
	WHEN 'P00017' THEN 2.00
	WHEN 'P00018' THEN 1.70
	WHEN 'P00019' THEN 3.00
	WHEN 'P00020' THEN 1.60
	WHEN 'P00021' THEN 1.90
	WHEN 'P00022' THEN 1.20
	WHEN 'P00023' THEN 2.00
	WHEN 'P00024' THEN 1.30
	WHEN 'P00025' THEN 1.20
	WHEN 'P00026' THEN 2.00
	WHEN 'P00027' THEN 1.10
	WHEN 'P00028' THEN 1.50
	ELSE NULL
END;


INSERT INTO Orders (
    id_order, id_supplier, id_employee, amount, currency,
    payment_method, payment_status, order_status, order_date
) VALUES (
    'E0051',            
    'F00002',           
    'F00001',           
    (SELECT SUM(qt * purchase_price) FROM (
        SELECT 3 AS qt, purchase_price FROM Products WHERE id_product = 'P00001' 
        UNION ALL 
        SELECT 2 AS qt, purchase_price FROM Products WHERE id_product = 'P00003'
    )),     
    'EUR',              
    'card',          
    'completed',        
    'delivered',       
    '2024-01-10 10:00:00' 
),
('E0052', 'F00003', 'F00002', (SELECT SUM(qt * purchase_price) FROM (SELECT 5 AS qt, purchase_price FROM Products WHERE id_product = 'P00007' UNION ALL SELECT 1 AS qt, purchase_price FROM Products WHERE id_product = 'P00009')), 'USD', 'transfer', 'pending', 'processing', '2024-02-14 14:30:00'),
('E0053', 'F00001', 'F00003', (SELECT SUM(qt * purchase_price) FROM (SELECT 4 AS qt, purchase_price FROM Products WHERE id_product = 'P00022' UNION ALL SELECT 2 AS qt, purchase_price FROM Products WHERE id_product = 'P00025')), 'GBP', 'cash', 'completed', 'shipped', '2024-03-01 09:20:00'),
('E0054', 'F00004', 'F00001', (SELECT 7 * purchase_price FROM Products WHERE id_product = 'P00004'), 'EUR', 'card', 'completed', 'delivered', '2024-04-05 11:45:00'),
('E0055', 'F00005', 'F00002', (SELECT SUM(qt * purchase_price) FROM (SELECT 2 AS qt, purchase_price FROM Products WHERE id_product = 'P00012' UNION ALL SELECT 6 AS qt, purchase_price FROM Products WHERE id_product = 'P00014')), 'USD', 'transfer', 'pending', 'pending', '2024-05-12 15:10:00'),
('E0056', 'F00006', 'F00003', (SELECT 3 * purchase_price FROM Products WHERE id_product = 'P00017'), 'GBP', 'cash', 'canceled', 'canceled', '2024-06-18 18:30:00'),
('E0057', 'F00007', 'F00001', (SELECT SUM(qt * purchase_price) FROM (SELECT 1 AS qt, purchase_price FROM Products WHERE id_product = 'P00020' UNION ALL SELECT 4 AS qt, purchase_price FROM Products WHERE id_product = 'P00015')), 'EUR', 'card', 'completed', 'delivered', '2024-07-22 10:05:00'),
('E0058', 'F00008', 'F00002', (SELECT 10 * purchase_price FROM Products WHERE id_product = 'P00019'), 'USD', 'transfer', 'pending', 'processing', '2024-08-03 12:00:00'),
('E0059', 'F00009', 'F00003', (SELECT SUM(qt * purchase_price) FROM (SELECT 2 AS qt, purchase_price FROM Products WHERE id_product = 'P00018' UNION ALL SELECT 2 AS qt, purchase_price FROM Products WHERE id_product = 'P00016')), 'GBP', 'cash', 'completed', 'shipped', '2024-09-15 09:15:00'),
('E0060', 'F00001', 'F00001', (SELECT SUM(qt * purchase_price) FROM (SELECT 3 AS qt, purchase_price FROM Products WHERE id_product = 'P00024' UNION ALL SELECT 1 AS qt, purchase_price FROM Products WHERE id_product = 'P00026')), 'EUR', 'card', 'pending', 'pending', '2024-10-10 17:25:00'),
('E0061', 'F00002', 'F00002', (SELECT 5 * purchase_price FROM Products WHERE id_product = 'P00002'), 'USD', 'transfer', 'completed', 'delivered', '2024-11-18 11:40:00'),
('E0062', 'F00003', 'F00003', (SELECT SUM(qt * purchase_price) FROM (SELECT 2 AS qt, purchase_price FROM Products WHERE id_product = 'P00006' UNION ALL SELECT 4 AS qt, purchase_price FROM Products WHERE id_product = 'P00008')), 'GBP', 'cash', 'canceled', 'canceled', '2024-12-05 16:50:00'),
('E0063', 'F00004', 'F00001', (SELECT 6 * purchase_price FROM Products WHERE id_product = 'P00010'), 'EUR', 'card', 'pending', 'processing', '2025-01-11 14:00:00'),
('E0064', 'F00005', 'F00002', (SELECT SUM(qt * purchase_price) FROM (SELECT 2 AS qt, purchase_price FROM Products WHERE id_product = 'P00013' UNION ALL SELECT 3 AS qt, purchase_price FROM Products WHERE id_product = 'P00011')), 'USD', 'transfer', 'completed', 'shipped', '2025-02-14 13:20:00'),
('E0065', 'F00006', 'F00003', (SELECT 1 * purchase_price FROM Products WHERE id_product = 'P00017'), 'GBP', 'cash', 'pending', 'pending', '2025-03-21 08:40:00'),
('E0066', 'F00007', 'F00001', (SELECT 7 * purchase_price FROM Products WHERE id_product = 'P00015'), 'EUR', 'card', 'completed', 'delivered', '2025-04-25 19:05:00'),
('E0067', 'F00008', 'F00002', (SELECT SUM(qt * purchase_price) FROM (SELECT 2 AS qt, purchase_price FROM Products WHERE id_product = 'P00019' UNION ALL SELECT 2 AS qt, purchase_price FROM Products WHERE id_product = 'P00020')), 'USD', 'transfer', 'canceled', 'canceled', '2025-05-29 12:55:00'),
('E0068', 'F00009', 'F00003', (SELECT 3 * purchase_price FROM Products WHERE id_product = 'P00018'), 'GBP', 'cash', 'pending', 'processing', '2025-06-12 10:15:00'),
('E0069', 'F00001', 'F00001', (SELECT SUM(qt * purchase_price) FROM (SELECT 5 AS qt, purchase_price FROM Products WHERE id_product = 'P00025' UNION ALL SELECT 3 AS qt, purchase_price FROM Products WHERE id_product = 'P00026')), 'EUR', 'card', 'completed', 'delivered', '2025-07-15 15:45:00'),
('E0070', 'F00002', 'F00002', (SELECT 4 * purchase_price FROM Products WHERE id_product = 'P00001'), 'USD', 'transfer', 'pending', 'pending', '2025-08-22 17:30:00'),
('E0071', 'F00003', 'F00003', (SELECT SUM(qt * purchase_price) FROM (SELECT 3 AS qt, purchase_price FROM Products WHERE id_product = 'P00005' UNION ALL SELECT 2 AS qt, purchase_price FROM Products WHERE id_product = 'P00007')), 'GBP', 'cash', 'completed', 'shipped', '2025-09-01 14:00:00'),
('E0072', 'F00004', 'F00001', (SELECT 6 * purchase_price FROM Products WHERE id_product = 'P00009'), 'EUR', 'card', 'canceled', 'canceled', '2025-10-05 10:10:00'),
('E0073', 'F00005', 'F00002', (SELECT SUM(qt * purchase_price) FROM (SELECT 1 AS qt, purchase_price FROM Products WHERE id_product = 'P00014' UNION ALL SELECT 5 AS qt, purchase_price FROM Products WHERE id_product = 'P00015')), 'USD', 'transfer', 'pending', 'processing', '2025-11-14 16:55:00'),
('E0074', 'F00006', 'F00003', (SELECT 2 * purchase_price FROM Products WHERE id_product = 'P00017'), 'GBP', 'cash', 'completed', 'delivered', '2025-12-20 18:25:00'),
('E0075', 'F00007', 'F00001', (SELECT SUM(qt * purchase_price) FROM (SELECT 3 AS qt, purchase_price FROM Products WHERE id_product = 'P00020' UNION ALL SELECT 1 AS qt, purchase_price FROM Products WHERE id_product = 'P00019')), 'EUR', 'card', 'pending', 'pending', '2026-01-23 09:15:00'),
('E0076', 'F00008', 'F00002', (SELECT 4 * purchase_price FROM Products WHERE id_product = 'P00016'), 'USD', 'transfer', 'completed', 'shipped', '2026-02-27 11:45:00'),
('E0077', 'F00009', 'F00003', (SELECT SUM(qt * purchase_price) FROM (SELECT 2 AS qt, purchase_price FROM Products WHERE id_product = 'P00018' UNION ALL SELECT 3 AS qt, purchase_price FROM Products WHERE id_product = 'P00017')), 'GBP', 'cash', 'pending', 'processing', '2026-03-12 08:30:00'),
('E0078', 'F00001', 'F00001', (SELECT 5 * purchase_price FROM Products WHERE id_product = 'P00023'), 'EUR', 'card', 'completed', 'delivered', '2026-04-18 14:00:00'),
('E0079', 'F00002', 'F00002', (SELECT SUM(qt * purchase_price) FROM (SELECT 1 AS qt, purchase_price FROM Products WHERE id_product = 'P00001' UNION ALL SELECT 2 AS qt, purchase_price FROM Products WHERE id_product = 'P00002')), 'USD', 'transfer', 'pending', 'processing', '2026-05-22 16:20:00'),
('E0080', 'F00003', 'F00003', (SELECT 3 * purchase_price FROM Products WHERE id_product = 'P00004'), 'GBP', 'cash', 'completed', 'delivered', '2026-06-30 10:10:00');

INSERT INTO Order_Items (id_order, id_product, quantity, unit_value) VALUES (
    'E00001',           
    'P00002',           
    5,                  
    (SELECT purchase_price FROM Products WHERE id_product = 'P00002') 
),
( 'E00002', 'P00004', 3, (SELECT purchase_price FROM Products WHERE id_product = 'P00004')),
( 'E00002', 'P00007', 2, (SELECT purchase_price FROM Products WHERE id_product = 'P00007')),
( 'E00003', 'P00021', 1, (SELECT purchase_price FROM Products WHERE id_product = 'P00021')),
( 'E00004', 'P00005', 4, (SELECT purchase_price FROM Products WHERE id_product = 'P00005')),
( 'E00004', 'P00006', 3, (SELECT purchase_price FROM Products WHERE id_product = 'P00006')),
( 'E00005', 'P00008', 2, (SELECT purchase_price FROM Products WHERE id_product = 'P00008')),
( 'E00006', 'P00009', 6, (SELECT purchase_price FROM Products WHERE id_product = 'P00009')),
( 'E00006', 'P00010', 2, (SELECT purchase_price FROM Products WHERE id_product = 'P00010')),
( 'E00007', 'P00022', 3, (SELECT purchase_price FROM Products WHERE id_product = 'P00022')),
( 'E00008', 'P00014', 4, (SELECT purchase_price FROM Products WHERE id_product = 'P00014')),
( 'E00009', 'P00011', 1, (SELECT purchase_price FROM Products WHERE id_product = 'P00011')),
( 'E00009', 'P00012', 5, (SELECT purchase_price FROM Products WHERE id_product = 'P00012')),
( 'E00010', 'P00019', 2, (SELECT purchase_price FROM Products WHERE id_product = 'P00019')),
( 'E00011', 'P00023', 7, (SELECT purchase_price FROM Products WHERE id_product = 'P00023')),
( 'E00011', 'P00024', 3, (SELECT purchase_price FROM Products WHERE id_product = 'P00024')),
( 'E00012', 'P00003', 5, (SELECT purchase_price FROM Products WHERE id_product = 'P00003')),
( 'E00013', 'P00007', 3, (SELECT purchase_price FROM Products WHERE id_product = 'P00007')),
( 'E00014', 'P00018', 2, (SELECT purchase_price FROM Products WHERE id_product = 'P00018')),
( 'E00014', 'P00020', 1, (SELECT purchase_price FROM Products WHERE id_product = 'P00020')),
( 'E00015', 'P00001', 4, (SELECT purchase_price FROM Products WHERE id_product = 'P00001')),
( 'E00016', 'P00006', 5, (SELECT purchase_price FROM Products WHERE id_product = 'P00006')),
( 'E00017', 'P00013', 2, (SELECT purchase_price FROM Products WHERE id_product = 'P00013')),
( 'E00017', 'P00015', 4, (SELECT purchase_price FROM Products WHERE id_product = 'P00015')),
( 'E00018', 'P00007', 1, (SELECT purchase_price FROM Products WHERE id_product = 'P00007')),
( 'E00019', 'P00002', 3, (SELECT purchase_price FROM Products WHERE id_product = 'P00002')),
( 'E00019', 'P00001', 1, (SELECT purchase_price FROM Products WHERE id_product = 'P00001')),
( 'E00020', 'P00004', 6, (SELECT purchase_price FROM Products WHERE id_product = 'P00004')),
( 'E00021', 'P00009', 2, (SELECT purchase_price FROM Products WHERE id_product = 'P00009')),
( 'E00022', 'P00024', 3, (SELECT purchase_price FROM Products WHERE id_product = 'P00024')),
( 'E00023', 'P00014', 4, (SELECT purchase_price FROM Products WHERE id_product = 'P00014')),
( 'E00024', 'P00019', 2, (SELECT purchase_price FROM Products WHERE id_product = 'P00019')),
( 'E00025', 'P00011', 1, (SELECT purchase_price FROM Products WHERE id_product = 'P00011')),
( 'E00025', 'P00015', 3, (SELECT purchase_price FROM Products WHERE id_product = 'P00015')),
( 'E00026', 'P00005', 2, (SELECT purchase_price FROM Products WHERE id_product = 'P00005')),
( 'E00026', 'P00006', 5, (SELECT purchase_price FROM Products WHERE id_product = 'P00006')),
( 'E00027', 'P00010', 3, (SELECT purchase_price FROM Products WHERE id_product = 'P00010')),
( 'E00028', 'P00014', 2, (SELECT purchase_price FROM Products WHERE id_product = 'P00014')),
( 'E00029', 'P00008', 3, (SELECT purchase_price FROM Products WHERE id_product = 'P00008')),
( 'E00030', 'P00023', 5, (SELECT purchase_price FROM Products WHERE id_product = 'P00023')),
( 'E00031', 'P00019', 4, (SELECT purchase_price FROM Products WHERE id_product = 'P00019')),
( 'E00032', 'P00001', 1, (SELECT purchase_price FROM Products WHERE id_product = 'P00001')),
( 'E00033', 'P00012', 2, (SELECT purchase_price FROM Products WHERE id_product = 'P00012')),
( 'E00034', 'P00004', 2, (SELECT purchase_price FROM Products WHERE id_product = 'P00004')),
( 'E00034', 'P00003', 3, (SELECT purchase_price FROM Products WHERE id_product = 'P00003')),
( 'E00035', 'P00014', 1, (SELECT purchase_price FROM Products WHERE id_product = 'P00014'));