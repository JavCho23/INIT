--Funciones para Request 
	--Mostrar solicitudes de un aula
create function showRequest(@class int)
returns table
as return(
	select R.dateSend, R.description, S.fullname
	from dbo.REQUEST as R
	INNER JOIN dbo.STUDENT as S ON S.id = R.FK_student
	WHERE R.FK_classroom = @class
)
go
	--Validar que la solicitud que se manda no sea de un alumno que ya este adentro

create tigger trig_Request_Insert
on Request
for insert
as
	declare @agregado bit
	
go