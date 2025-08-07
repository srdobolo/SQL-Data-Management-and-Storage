
-- Nenhum evento está sobre-inscrito (lotação respeitada).
SELECT
  e.id_evento,
  e.designacao,
  e.capacidade,
  COUNT(p.id_cliente) AS inscricoes
FROM
  Eventos e
LEFT JOIN
  Participacoes_Evento p
ON
  e.id_evento = p.id_evento
GROUP BY
  e.id_evento
HAVING
  inscricoes > e.capacidade;

-- Detetar inscrições inválidas:
SELECT p.*
FROM Participacoes_Evento p
JOIN Eventos e ON p.id_evento = e.id_evento
WHERE DATE(p.data_inscricao) > DATE(e.data_evento);

--Só registar inscrições se a data for anterior ao evento.
CREATE TRIGGER trg_check_data_inscricao
BEFORE INSERT ON Participacoes_Evento
FOR EACH ROW
BEGIN
  SELECT
    CASE
      WHEN DATE(NEW.data_inscricao) > (SELECT data_evento FROM Eventos WHERE id_evento = NEW.id_evento)
      THEN
        RAISE(ABORT, 'A data de inscrição não pode ser depois da data do evento')
    END;
END;