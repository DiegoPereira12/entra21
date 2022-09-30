select * from cad_setores;
insert into cad_setores (nome_cad_setor) values ('Financeiro');

select * from cad_cargos;
insert into cad_cargos (nome_cad_cargo, id_cad_setor)
		values('Vendedor', 1),
			  ('Técnico Administrativo', 2);
              
select * from cad_funcionarios;
insert into cad_funcionarios (nome_cad_funcionario, id_cad_cargo)
		values('Juca', 1),
			  ('Pedro', 1),
			  ('Zeca', 1),
			  ('Maria', 2),
			  ('Joana', 2);
              
select * from cad_clientes;
insert into cad_clientes (nome_cad_cliente, id_cad_cidade)
		values('Afonso', 1),
              ('Gean', 1),
              ('Gumercindo', 1),
              ('Felizberto', 1);

select nome_cad_cliente as Pessoas, 'CLIENTE' Tipos from cad_clientes
union
select nome_cad_funcionario, 'FUNCIONARIO' from cad_funcionarios;