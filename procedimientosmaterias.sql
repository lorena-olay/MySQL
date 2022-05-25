/*crear materia
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
*/
delimiter $$
create procedure crearMateria(in materia int, in nombre VARCHAR(60), in curso char(6))
begin 
insert into materias (codmateria, nommateria, cursomateria)
values (materia, nombre, curso);
end $$
delimiter ;
/*eliminar materia
DELETE FROM table_name WHERE condition;
*/
delimiter $$
create procedure eliminarMateria(in materia int, in nombremat VARCHAR(60),in cursomat char(6))
begin 
delete from materias
where codmateria=materia and nommateria=nombremat and cursomateria=cursomat;
end $$
delimiter ;
/*modificar materia
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
*/
delimiter $$
create procedure modificarMateria(in materia int, in nombremat VARCHAR(60), in cursomat char(6))
begin 
update materias
set nommateria=nombremat, cursomateria=cursomat
where codmateria=materia;
end $$
delimiter ;
/*enseñar materia
SELECT column1, column2, ...
FROM table_name;*/
delimiter $$
create procedure ensenarMateria(in materia int)
begin 
select materia
from materias;
end $$
delimiter ;
/*ordenar materias ascendente por nombre
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;*/
delimiter $$
create procedure ordenarMateriaNombre()
begin 
select *
from materias
order by nommateria ASC;
end $$
delimiter ;