
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

