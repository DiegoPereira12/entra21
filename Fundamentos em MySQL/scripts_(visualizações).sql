select nome_cad_cliente as Pessoas, 'CLIENTE' Tipos from cad_clientes
union
select nome_cad_funcionario, 'FUNCIONARIO' from cad_funcionarios;