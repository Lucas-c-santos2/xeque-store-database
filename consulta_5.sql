SELECT
  id AS pedido_id,
  cliente_nome,
  data_pedido,
  status
FROM
  pedidos
WHERE
  status IN ('Pendente', 'Processando')
ORDER BY
  data_pedido ASC;