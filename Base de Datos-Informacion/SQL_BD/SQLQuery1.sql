
SELECT *
FROM titles as T
go 

SELECT t.title_id as codigo,
	t.title as titulo, t.price as precio

	FROM titles as T 
	ORDER BY t.price desc, T.title asc
	go 

SELECT t.type, count(*) as cantidad,
	 max(t.price) as mascaro,
	 min(t.price) as masbarato,
	 (max(t.price) + min (t.price)) / 2 as mipromedio,
	 avg (t.price) as precioPromedio

	 FROM titles  as T
	 GROUP BY t.type
	 having avg(t.price)>15 --HAVING ES CONDICIONAL CUANDO ES POR GRUPOS
go





