describe cad_clientes;

select id_cad_cliente, nome_cad_cliente, email_cad_cliente, id_cad_cidade from cad_clientes
where id_cad_cidade = 1;

create table cad_serviços (
	id_cad_serviço  int not null primary key auto_increment,
    descricação_cad_serviço varchar(50) not null,
    index (id_cad_serviço)
);

-- adicionar index
alter table cad_clientes add index idx_idcliente (id_cad_cliente);

show index from cad_clientes;

-- remover index
alter table cad_clientes drop index idx_idcliente;