
---<Yeisson Fernando Mora cc: 1028007724 and Yully Varela Isaza CC: 32143184>--
--Ejecutables de los procesos almacenados. ---

---- Preceso almacenado para crear actualizar y eliminar clientes ---
--Para Uso
--Insertar
declare @mensaje varchar(100)
exec usp_registro_cliente
@opcion = 'I',
@nombre = 'Yuli Isaza',
@correo = 'YULI23ats@gmail.com',
@telefono = '333333333',
@mensaje = @mensaje output

print @mensaje

--Actualizar 
declare @mensaje varchar(100)

exec usp_registro_cliente
@opcion = 'A',
@clienteId = 1001,
@nombre = 'Yuli Varela',
@correo = 'Yuli123@gmail.com',
@telefono = '33333333',
@mensaje = @mensaje output

print @mensaje

--Eliminar
declare @mensaje varchar(100)
exec usp_registro_cliente
@opcion = 'E',
@clienteId = 13,
@mensaje = @mensaje output

print @mensaje


----------Preceso almacenado para consultar las entradas por cliente ------------
declare @total int;

exec usp_consultar_entradas 
@clienteID = 2,
@totalEntradas = @total output;

print 'Total de entradas:' + cast(@total as varchar(10))

select * from tblClientes

----------------------Reporte de ventas de pelicula--------------------------------------------
declare @total decimal(10,2)

exec usp_reporte_ventas_pelicula 
@TotalGeneral = @total output;

PRINT 'Total recaudado por el cine $'+ cast(@total as varchar(20))




