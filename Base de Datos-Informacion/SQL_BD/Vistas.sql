
--IMPLEMENTACION DE LAS VISTAS
create view v_ListaAutores
as
select au_id as codigo,
 au_fname + '' + au_lname as nombre,
 city as ciudad
from authors 
go

-- utilizando la vista 

select * from v_ListaAutores
go 

sp_helptext v_ListaAutores
go

alter view v_ListaAutores
with encryption
as
select au_id as codigo,
 au_lname + '' + au_fname as nombre,
 city as ciudad
from authors 
go

select * from v_ListaAutores
order by nombre asc
go

--ejemplo 02

create view v_ListaLibros_Business
with encryption 
as 
select t.title_id, t.title,
t.type, p.pub_name, p.city, t.price 
from titles as t 
inner join publishers as p
on t.pub_id = p.pub_id 
where t.type = 'business'
go

create view v_EstadisticaLibrosxTipo
with encryption 
as
select t.type as tipo, count(*) as cantidad 
from titles as t 
group by t.type
go 

select * from v_EstadisticaLibrosxTipo
go

alter view v_Pedidos
with encryption
as
select s.stor_id, s.ord_num, s.title_id,
t.title, s.qty
from sales as s 
inner join titles as t 
on t.title_id = s.title_id
go

--usando la vista pedidos
select * from v_Pedidos
go

--mostrar en una vista el total acumulado de ventas x años 

