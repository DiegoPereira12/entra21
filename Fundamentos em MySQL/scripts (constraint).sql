
alter table cad_cidades add constraint FK_CAD_CIDADES_ID_CAD_ESTADO_CAD_ESTADOS_ID_CAD_ESTADO foreign key (id_cad_estado)
references CAD_ESTADOS (id_cad_estado);

describe cad_cidades;

alter table cad_clientes add constraint FK_CAD_CLIENTES_ID_CAD_CIDADE_CAD_CIDADES_ID_CAD_CIDADE foreign key (id_cad_cidade)
references CAD_CIDADES (id_cad_cidade);

describe cad_clientes;

alter table cad_vendas add constraint CAD_VENDAS_ID_CAD_CLIENTE_CAD_CLIENTES_ID_CAD_CLIENTE foreign key (id_cad_cliente)
references CAD_CLIENTES (id_cad_cliente);

alter table cad_vendas add constraint FK_CAD_VENDAS_ID_CAD_FUN_CAD_FUNCIONARIOS_ID_CAD_FUN foreign key (id_cad_funcionario)
references CAD_FUNCIONARIOS (id_cad_funcionario);

describe cad_vendas;

alter table cad_funcionarios add constraint FK_CAD_FUN_ID_CAD_CARGO_CAD_CARGOS_ID_CAD_CARGO foreign key (id_cad_cargo)
references CAD_CARGOS (id_cad_cargo);

describe cad_funcionarios;

alter table cad_cargos add constraint FK_CAD_CARGOS_ID_CAD_SETOR_CAD_SETORES_ID_CAD_SETOR foreign key (id_cad_setor)
references cad_setores (id_cad_setor);

describe cad_cargos;

alter table cad_itens_venda add constraint FK_CAD_ITENS_VENDA_ID_CAD_ITEM_CAD_ITENS_ID_CAD_ITEM foreign key (id_cad_item)
references CAD_ITENS (id_cad_item);

describe cad_itens_venda;

alter table cad_itens_venda add constraint FK_CAD_ITENS_VENDA_ID_CAD_VENDA_CAD_VENDAS_ID_CAD_VENDA foreign key (id_cad_venda)
references cad_vendas (id_cad_vendas);

describe cad_itens_venda;

alter table cad_itens add constraint FK_CAD_ITENS_ID_CAD_CATEG_CAD_CATEGORIAS_ID_CAD_CATEG foreign key (id_cad_categoria)
references cad_categorias (id_cad_categoria);

describe cad_itens;


