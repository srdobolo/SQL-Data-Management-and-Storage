1. Qual é a faixa etária mais comum entre os clientes?
sqlCopiarEditarSELECTFLOOR(DATEDIFF(CURDATE(), data_nascimento) / 365) AS idade,
  COUNT(*) AS quantidadeFROM ClientesGROUP BY idadeORDER BY quantidade DESCLIMIT 1;
🔁 2. Quais clientes visitam a taproom com mais frequência?
sqlCopiarEditarSELECT nome, frequencia_visitasFROM ClientesORDER BY frequencia_visitas DESCLIMIT 10;
💸 3. Quanto os clientes costumam gastar, em média, por visita?
sqlCopiarEditarSELECT AVG(media_consumo_compra) AS media_geral_por_visitaFROM Clientes;
💰 4. Qual é o total gasto por cliente desde que começou a frequentar?
sqlCopiarEditarSELECT nome, totalGastoFROM ClientesORDER BY totalGasto DESCLIMIT 10;
📅 5. Quando foi a última compra de cada cliente?
sqlCopiarEditarSELECT nome, ultima_compraFROM ClientesORDER BY ultima_compra DESC;
📣 6. Qual canal trouxe mais clientes para a taproom?
sqlCopiarEditarSELECT canal_aquisicao, COUNT(*) AS total_clientesFROM ClientesGROUP BY canal_aquisicaoORDER BY total_clientes DESC;
📨 7. Quantos clientes estão inscritos na newsletter?
sqlCopiarEditarSELECT COUNT(*) AS total_newsletterFROM ClientesWHERE newsletter = TRUE;
 