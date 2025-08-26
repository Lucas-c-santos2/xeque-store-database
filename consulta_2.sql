SELECT
  ip.pedido_id,
  SUM(p.preco * ip.quantidade) AS valor_total
FROM
  itens_pedido AS ip
JOIN
  produtos AS p ON ip.produto_id = p.id
WHERE
  ip.pedido_id = 1
GROUP BY
  ip.pedido_id;
