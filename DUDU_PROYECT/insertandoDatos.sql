-- crear usuarios
insert into usuario(id)
values (1);
insert into usuario(id)
values (2);
insert into usuario(id)
values (3);
-- crear mazos 
insert into mazo(codmazo,titulo)
values (1,'tema1');
insert into mazo(codmazo,titulo)
values (2,'tema2');
insert into mazo(codmazo,titulo)
values (3,'tema3');
-- crear cartas
DELETE FROM carta
where pk=5; 

insert into carta(pk,contenido,recordado)
values(1,'los pandas comen bambú', true);
insert into carta(pk,contenido,recordado)
values(2,'la primera guerra mundial fue en 1914', false);
insert into carta(pk,contenido,recordado)
values(3,'linux es el sistema operativo más usado en servidores del mundo', true);
insert into carta(pk,contenido,recordado)
values(4,'la definición de la resta es la suma del opuesto a-b=a+(-b)', true);
insert into carta(pk,contenido,recordado)
values(5,'4chan es un foro de internet', false);
insert into carta(pk,contenido,recordado)
values(6,'la madre de bambi murio en la primera película', false);
insert into carta(pk,contenido,recordado)
values(7,'el gluteo es el músculo más grande del cuerpo humano', false);
insert into carta(pk,contenido,recordado)
values(8,'la hipertrofia se consigue rompiendo las fibras musculares', false);
insert into carta(pk,contenido,recordado)
values(9,'java es un lenguaje de programación orientado a objetos', false);
insert into carta(pk,contenido,recordado)
values(10,'mysql es un lenguaje de programación para base de datos', false);
--  los usuarios con los mazos
insert into mazosusuario(id,codmazo)
values (1,2);
insert into mazosusuario(id,codmazo)
values (2,1);
insert into mazosusuario(id,codmazo)
values (2,2);
insert into mazosusuario(id,codmazo)
values (3,3);
insert into mazosusuario(id,codmazo)
values (3,2);
insert into mazosusuario(id,codmazo)
values (3,1);
--  las cartas con los mazos
insert into cartasenmazo(codmazo,codcar)
values (1,1);
insert into cartasenmazo(codmazo,codcar)
values (1,2);
insert into cartasenmazo(codmazo,codcar)
values (1,3);
insert into cartasenmazo(codmazo,codcar)
values (1,4);
insert into cartasenmazo(codmazo,codcar)
values (1,5);
insert into cartasenmazo(codmazo,codcar)
values (2,1);
insert into cartasenmazo(codmazo,codcar)
values (2,2);
insert into cartasenmazo(codmazo,codcar)
values (2,3);
insert into cartasenmazo(codmazo,codcar)
values (2,4);
insert into cartasenmazo(codmazo,codcar)
values (2,5);
insert into cartasenmazo(codmazo,codcar)
values (2,6);
insert into cartasenmazo(codmazo,codcar)
values (2,7);
insert into cartasenmazo(codmazo,codcar)
values (2,8);
insert into cartasenmazo(codmazo,codcar)
values (2,9);
insert into cartasenmazo(codmazo,codcar)
values (3,10);