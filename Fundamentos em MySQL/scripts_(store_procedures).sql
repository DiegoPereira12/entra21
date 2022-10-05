use loja;

DELIMITER $
create procedure sp_exibe_clientes()
begin
	select cli.id_cad_cliente codigo, cli.nome_cad_cliente nome, cli.email_cad_cliente email, cidade.nome_cad_cidade
    from cad_clientes cli
    left join cad_cidades cidade on (cidade.id_cad_cidade = cli.id_cad_cidade);
end$
DELIMITER ;

call sp_exibe_clientes();

-- procedure usando parametros

select * from cad_clientes;

DELIMITER $
create procedure sp_cadastra_cliente (in nome varchar(50), in email varchar(100), in cod_cidade INT)
begin
	insert into cad_clientes (nome_cad_cliente, email_cad_cliente, id_cad_cidade)
			values (nome, email,cod_cidade);
end$
DELIMITER ;

call sp_cadastra_cliente('Zeca', 'zeca@gmail.com',2);
