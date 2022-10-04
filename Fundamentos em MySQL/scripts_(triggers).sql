use loja;

describe cad_itens;
select * from cad_itens;
insert into cad_itens (nome_cad_item, valor_cad_item, qtde_cad_estoque_cad_item, id_cad_categoria)
		values('Mouse', 35, 10, 1),
			  ('Teclado', 40.5, 15, 1);

describe cad_categorias;
select * from cad_categorias;

describe cad_vendas;
select * from cad_vendas;
insert into cad_vendas (id_cad_cliente, id_cad_funcionario)
		values(1,2);

select nome_cad_cliente from cad_clientes where id_cad_cliente = 1;
select nome_cad_funcionario from cad_funcionarios where id_cad_funcionario = 2;

select * from cad_itens_venda;


-- criando TIGGER
DELIMITER $
create trigger tg_venda_item after insert on cad_itens_venda
for each row
begin
	UPDATE cad_itens set qtde_cad_estoque_cad_item = qtde_cad_estoque_cad_item - 1
    where id_cad_item = new.id_cad_item;
end$
DELIMITER ;

--
insert into cad_itens_venda(id_cad_item, id_cad_venda)
		values(2,1);

insert into cad_itens_venda (id_cad_item, id_cad_venda)
				values (1,1);