CREATE TABLE ESTOQUE (
 ID_Estoque integer CONSTRAINT pk_id_estoque PRIMARY KEY,
 carro varchar(30) NOT NULL, 
 evento varchar(40) NOT NULL,
 qtd_combustivel real NOT NULL 
);


CREATE TABLE MOTORISTA ( 
 ID_Cnh integer,
 nome_motorista varchar(200) NOT NULL,
 tipo_habilitacao character(2) NOT NULL,
 vencimento_cnh date NOT NULL,
 PRIMARY KEY(ID_Cnh)
);



CREATE TABLE DEP_FROTAS (
 ID_Dep integer CONSTRAINT pk_id_dep PRIMARY KEY, 
 num_dep character(4) NOT NULL,
 funcionarios varchar(40) NOT NULL,
 carros varchar(30) NOT NULL
);


CREATE TABLE EVENTOS (
 ID_Eventos integer CONSTRAINT pk_id_eventos PRIMARY KEY, 
 tipo_eventos varchar(10) NOT NULL
);



CREATE TABLE SOLICITACAO_CARROS (
 ID_Solic_de_carros integer CONSTRAINT pk_id_solic_de_carros  PRIMARY KEY,
 nome_func varchar(30) NOT NULL,
 evento varchar(30) NOT NULL,
 qtd_pessoas varchar(30) NOT NULL,
 data date NOT NULL,
 hora_utilizacao timestamp NOT NULL,
 mat_func integer NOT NULL,
 dep_func integer NOT NULL
);



CREATE TABLE QUILOMETRAGEM (
 ID_Quilometragem integer CONSTRAINT pk_id_quilometragem PRIMARY KEY, 
 inicio_atendimento timestamp NOT NULL,
 fim_atendimento timestamp NOT NULL
);



CREATE TABLE CARROS(
 ID_Carros integer, 
 tipo_carro varchar(10) NOT NULL,
 PRIMARY KEY(ID_Carros)
);



CREATE TABLE TIPOS_CARRO (
 ID_Carros integer, 
 marca varchar(30) NOT NULL,
 modelo varchar(30) NOT NULL,
 ano integer NOT NULL,
 num_chassi integer NOT NULL,
 placa varchar(10) NOT NULL,
 tipo_de_combustivel varchar(10) NOT NULL,
 PRIMARY KEY(ID_Carros),
 CONSTRAINT fk_carros
 FOREIGN KEY(ID_Carros) 
	  REFERENCES CARROS(ID_Carros) 

);



CREATE TABLE OPCIONAL_CARROS (
 ID_Carros integer, 
 qtd_portas integer NOT NULL,
 farol_neblina integer, 
 cambio_automatico integer,
 PRIMARY KEY(ID_Carros),
 CONSTRAINT fk_carros
 FOREIGN KEY(ID_Carros) 
	  REFERENCES CARROS(ID_Carros) 

);




CREATE TABLE MULTAS (
 ID_Multas integer,
 local varchar(30) NOT NULL,
 data date NOT NULL,
 hora timestamp NOT NULL,
 tipo_multa varchar(200) NOT NULL,
 ID_Cnh integer NOT NULL, 
 PRIMARY KEY(ID_Multas),
 FOREIGN KEY(ID_Cnh) 
  REFERENCES MOTORISTA(ID_Cnh) 
);




CREATE TABLE MANUTENCAO (
 ID_Munutencao integer, 
 ID_Carros integer,
 tipo_manutencao varchar(30) NOT NULL,
 quilometragem real NOT NULL,
 causa varchar(30) NOT NULL,
 nome_motorista varchar(200) NOT NULL,
 pecas_trocadas varchar NOT NULL,
 tempo_garantia_peca integer,
 PRIMARY KEY(ID_Munutencao),
 CONSTRAINT fk_carros
 FOREIGN KEY(ID_Carros) 
	  REFERENCES CARROS(ID_Carros) 

);
