use loja;

select * from cad_estados;
select * from cad_cidades;

insert into cad_estados (nome_cad_estado) values ('Paraná');

select ESTADO.nome_cad_estado, CIDADE.nome_cad_cidade FROM cad_estados ESTADO
right join cad_cidades CIDADE on (CIDADE.id_cad_estado = ESTADO.id_cad_estado);

-- inner vs left
-- inner só vai trazer resultado onde contas informações em comun, left vai trazer todas as informações da esquerda, independente se consta informações a direira  
