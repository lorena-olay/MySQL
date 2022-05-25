select * 
from carta
UNION
select * 
from mazo;
select * 
from usuario;
select * 
from mazosusuario;
select * 
from cartasenmazo
order by codmazo;
 
 drop table mazosusuario;
  create table mazosusuario
(
    id int,
    codmazo int,
	constraint fk_mazosusuario_mazo foreign key (codmazo) references mazo(codmazo) on delete cascade on update cascade,
    constraint fk_mazosusuario_usuario foreign key (id) references usuario(id) on delete cascade on update cascade
);
 
 create table cartasenmazo
(
	codmazo int,
    codcar int,
	constraint fk_cartasenmazo_mazo foreign key (codmazo) references mazo(codmazo) on delete cascade on update cascade,
    constraint fk_cartasenmazo_carta foreign key (codcar) references carta(pk) on delete cascade on update cascade
);

drop table mazo; 
create table mazo 
(
	codmazo int,
    titulo varchar(40),
    -- codcar int,
    constraint pk_mazo primary key (codmazo)
    -- constraint fk_mazo_carta foreign key (codcar) references carta(pk) on delete cascade on update cascade
);

drop table usuario;
create table usuario 
(
	id int,
	-- codmazo int,
    constraint id primary key (id)
    -- constraint fk_usuario_mazo foreign key (codmazo) references mazo(codmazo) on delete cascade on update cascade
);

