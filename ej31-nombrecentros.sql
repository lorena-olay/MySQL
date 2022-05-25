/*Obtener los nombres de los centros, si hay alguno en la C/ Atocha. (Lorena)
drop procedure if EXISTS centrosCalleAtocha;
delimiter &&
create procedure centrosCalleAtocha()
begin
select nomce
from centros
where dirce like "%atocha%" or "%ATOCHA%";
end&&
delimiter ;

select *
from centros;

call centrosCalleAtocha();
*/
/*Borrar de la tabla EMPLEADOS a los empleados cuyo salario (sin incluir la comisión) supere al salario medio de los empleados de su departamento. (Maxi)*/
delimiter$$
begin
DECLARE @Media VARCHAR(50)
select @Media = avg(salarem)
print @Media
end$$
delimiter ;
drop procedure if EXISTS borrarEmpleadosSueldo;
delimiter $$
create procedure borrarEmpleadosSueldo()
begin
delete from empleados
where salarem>@media
order by salarem;

end$$
delimiter ;
call borrarEmpleadosSueldo();

