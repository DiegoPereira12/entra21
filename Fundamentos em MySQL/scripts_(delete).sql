use loja;

select id_cad_estado, nome_cad_estado from cad_estados;

insert into cad_estados (nome_cad_estado) values ('Santa Catarina');

delete from cad_estados where id_cad_estado = 1;
