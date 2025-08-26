SELECT
  p.nome,
  SUM(ip.quantidade) AS total_unidades_vendidas
FROM
  itens_pedido AS ip
JOIN
  produtos AS p ON ip.produto_id = p.id
GROUP BY
  p.nome
ORDER BY
  total_unidades_vendidas DESC
LIMIT 3;