
select  top 5 t.title, t.price -- top --> la cantidad de los primeros registros 
 from titles as t 
 order by price desc
Go 

select   t.title, t.price 
 from titles as t 
 order by price desc
Go 

select top 20 percent t.title, t.price -- top en porcentaje 
	from titles as t 
	order by price desc 
go 

-- listado de titulos que no tienen precio 

select t.title, t.price
from titles as t 
where t.price is null
go

-- listado de titulo que tienen precio 




-- listado con cadenas like 
select t.title, t.price
	from titles as t 
	where t.title like 'c%' 
	go 

--listado con titulos que empiezan con la palabra cooking 
	select t.title, t.price
	from titles as t 
	where t.title like 'cooking%' 
	go 

-- dos porcentajes puede que antes y despues de la palabra haya caracteres 
	select t.title, t.price
	from titles as t 
	where t.title like '%cooking%' 
	go 
	-- el % representa n caracteres desconocidos

	select t.title, t.price
	from titles as t 
	where t.title like 't_e%' 
	go 

-- listado de palabras que la 1era letra sea c , la 2da m y la 3era u
	select t.title, t.price
	from titles as t 
	where t.title like '%c_m_u%' 
	go 


	select t.title, t.price
	from titles as t 
	where t.title like '%c_n%' 
	go 
	
	select t.title, t.price
	from titles as t 
	where t.title like '%c_n%' and 
	 t.price >10
	go 

	select t.title, t.price
	from titles as t 
	where t.title like '%c_n%' or
	 t.price >10
	go 

	select  t.title , t.type, t.price 
	from titles as t 
	where t.type in ('business','psychology')
	and t.price between 10 and 20 
	go


	-- eliminacion
	delete from authors
	where au_id = '999-39-5349'
	go
	