create database prueba;
use prueba;
CREATE TABLE persona (
    pk int,
    nombtr varchar(255),
    fechnac date
);

DROP TABLE Carta;

CREATE TABLE carta (
    pk int,
    contenido varchar(500),
    recordado boolean,
    constraint pk_pk primary key (pk)
);

select *
from carta;


SELECT *
FROM persona;

SET GLOBAL time_zone = '-3:00';

