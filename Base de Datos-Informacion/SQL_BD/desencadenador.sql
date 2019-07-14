-- SQL DML 2_07_2019

CREATE TRIGGER Empl_Delete ON Employees
FOR DELETED  
AS 
 IF (SELECT COUNT (*) FROM Deleted ) > 1 --DELETED TABLA TEMPORAL 
 BEGIN
    RAISERROR ('NO SE PUEDE ELIMINAR A MAS DE UN EMPLEADO.',16,1)
	ROLLBACK TRANSACTION
END
GO


--USANDO EL DESENCADENADOR PARA ELIMINAR 
insert into Employees(LastName,FirstName)
values ('Aquino','Jorge')

insert into Employees(LastName,FirstName)
values ('Mendoza','Maria')

select * from Employees
where EmployeeID >= 10

--intentando eliminar a los dos ultimos empleados (NO SE PUEDE)
delete from Employees
where EmployeeID = 10

--INTENTADO ELIMINAR A AQUINO JORGE (SI SE PUEDE)

DELETE FROM Employees
where EmployeeID = 10

--CASO 02 

create trigger des_producto_chequearStock
On products
