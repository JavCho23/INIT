-- mostrar el tirulo y el nombre del autor--

select t.title , a.au_fname, a .au_lname
from titles as t inner join titleauthor as ta
on t.title_id = ta.title_id
inner join authors as a 
on ta.au_id = a.au_id 
go

--cantidad autores por libro--
select t.title, count(*) as cantidadAutores
from titles as t inner join
titleauthor as ta 
on t.title_id = ta.title_id
group by t.title
having count(*) >= 3 
go

--LISTADO DE AUTORES DEL LIBRO SUSHI, ANYONE -- 
select a.au_fname as nombre, a.au_lname as apellido from authors as a inner join titleauthor as ta on ta.au_id = a.au_id
inner join titles as t on ta.title_id= t.title_id where t.title = 'Sushi, Anyone?'

go
--listado de libros de autor akiko yokomoto--
select t.title
from titles as t inner join titleauthor as ta
on t.title_id = ta.title_id
inner join authors as a
on ta.au_id = a.au_id where a.au_fname = 'Akiko' and a.au_lname ='Yokomoto'
go