create schema FeriasDB;
use FeriasDB;

-- Create tables

create table Ferias (
nomeFerias varchar(45) not null,
dataInicio date not null,
dataFim date not null
);

create table Pessoa (
nomePessoa varchar(45) not null,
dataNascimento date,
rua varchar(45),
numeroRua varchar(45),
cidade varchar(45),
UF varchar(2),
CEP varchar(8)
);

create table Despesa (
dataCompra date not null,
dataHoraEvento datetime,
bufferChegada datetime,
siteFornecedor varchar(300),
linkVoucher varchar(300),
valor decimal(12,2)
);

create table Cidade (
nome varchar(45) not null,
estado varchar(45),
pais varchar(45) not null
);

create table PontoTuristico (
nome varchar(45) not null,
horaAbertura time,
horaFechamento time,
precoEntrada decimal(12,2),
linkGoogleMaps varchar(300),
idadeMinima int
);

create table Sexo (
descricao varchar(45) not null
);

create table Email (
email varchar(100) not null
);

create table NecessidadeEspecial (
tipoNecessidade varchar(45) not null
);

create table tipoPontoTuristico (
tipo varchar(45) not null
);

create table EmailFornecedor (
email varchar(100) not null
);

create table TelefoneFornecedor (
telefone varchar(100) not null
);

create table TipoDespesa (
tipoDespesa varchar(100) not null
);

-- Add pks

alter table Ferias
	add idFerias int not null auto_increment,
	add constraint pk_Ferias
		primary key auto_increment (idFerias);

alter table Pessoa
	add idPessoa int not null auto_increment,
	add constraint pk_Pessoa
		primary key auto_increment (idPessoa);

alter table Despesa
	add idDespesa int not null auto_increment,
	add constraint pk_Despesa
		primary key auto_increment (idDespesa);

alter table Cidade
	add idCidade int not null auto_increment,
	add constraint pk_Cidade
		primary key auto_increment (idCidade);

alter table PontoTuristico
	add idPontoTuristico int not null auto_increment,
	add constraint pk_PontoTuristico
		primary key auto_increment (idPontoTuristico);

alter table Sexo
	add idSexo int not null auto_increment,
	add constraint pk_Sexo
		primary key auto_increment (idSexo);

alter table Email
	add idEmail int not null auto_increment,
	add constraint pk_Email
		primary key auto_increment (idEmail);

alter table NecessidadeEspecial
	add idNecessidadeEspecial int not null auto_increment,
	add constraint pk_NecessidadeEspecial
		primary key auto_increment (idNecessidadeEspecial);

alter table tipoPontoTuristico
	add idtipoPontoTuristico int not null auto_increment,
	add constraint pk_tipoPontoTuristico
		primary key auto_increment (idtipoPontoTuristico);

alter table EmailFornecedor
	add idEmail int not null auto_increment,
	add constraint pk_EmailFornecedor
		primary key auto_increment (idEmail);

alter table TelefoneFornecedor
	add idTelefoneFornecedor int not null auto_increment,
	add constraint pk_TelefoneFornecedor
		primary key auto_increment (idTelefoneFornecedor);

alter table TipoDespesa
	add idTipoDespesa int not null auto_increment,
	add constraint pk_TipoDespesa
		primary key auto_increment (idTipoDespesa);

-- Add fks

alter table Pessoa
	add Sexo_idSexo int not null,
	add constraint fk_PessoaSexo
		foreign key (Sexo_idSexo) references Sexo(idSexo);

create table Telefone (
numeroTelefone varchar(45) not null,
Pessoa_idPessoa int not null,
constraint pk_Telefone
	primary key (numeroTelefone, Pessoa_idPessoa),
constraint fk_TelefonePessoa
	foreign key (Pessoa_idPessoa) references Pessoa(idPessoa)
);

alter table Email
	add Pessoa_idPessoa int not null,
	add constraint fk_EmailPessoa
		foreign key (Pessoa_idPessoa) references Pessoa(idPessoa);

alter table PontoTuristico
	add Cidade_idCidade int not null,
	add constraint fk_PontoTuristicoCidade
		foreign key (Cidade_idCidade) references Cidade(idCidade),
	add tipoPontoTuristico_idtipoPontoTuristico int not null,
    add constraint fk_PontoTuristicotipoPontoTuristico
		foreign key (tipoPontoTuristico_idtipoPontoTuristico) references tipoPontoTuristico(idtipoPontoTuristico);

alter table Despesa
	add TipoDespesa_idTipoDespesa int not null,
	add constraint fk_TipoDespesa
		foreign key (TipoDespesa_idTipoDespesa) references TipoDespesa(idTipoDespesa),
	add Ferias_idFerias int not null,
    add constraint fk_DespesaFerias
		foreign key (Ferias_idFerias) references Ferias(idFerias);

alter table EmailFornecedor
	add Despesa_idDespesa int not null,
	add constraint fk_EmailFornecedorDespesa
		foreign key (Despesa_idDespesa) references Despesa(idDespesa);

alter table TelefoneFornecedor
	add Despesa_idDespesa int not null,
	add constraint fk_TelefoneFornecedorDespesa
		foreign key (Despesa_idDespesa) references Despesa(idDespesa);

-- Create aux tables for N<->N

create table Pessoa_has_Ferias (
Pessoa_idPessoa int not null,
Ferias_idFerias int not null,
constraint pk_Pessoa_has_Ferias primary key (Pessoa_idPessoa, Ferias_idFerias),
constraint fk_Pessoa_has_Ferias_Pessoa foreign key (Pessoa_idPessoa) references Pessoa(idPessoa),
constraint fk_Pessoa_has_Ferias_Ferias foreign key (Ferias_idFerias) references Ferias(idFerias)
);

create table Ferias_has_Cidade (
Ferias_idFerias int not null,
Cidade_idCidade int not null,
constraint pk_Ferias_has_Cidade primary key (Ferias_idFerias, Cidade_idCidade),
constraint fk_Ferias_has_Cidade_Ferias foreign key (Ferias_idFerias) references Ferias(idFerias),
constraint fk_Ferias_has_Cidade_Cidade foreign key (Cidade_idCidade) references Cidade(idCidade)
);

create table PontoTuristico_has_NecessidadeEspecial (
PontoTuristico_idPontoTuristico int not null,
NecessidadeEspecial_idNecessidadeEspecial int not null,
constraint pk_PontoTuristico_has_NecessidadeEspecial primary key (PontoTuristico_idPontoTuristico, NecessidadeEspecial_idNecessidadeEspecial),
constraint fk_PontoTuristico_has_NecessidadeEspecial_PontoTuristico foreign key (PontoTuristico_idPontoTuristico) references PontoTuristico(idPontoTuristico),
constraint fk_PontoTuristico_has_NecessidadeEspecial_NecessidadeEspecial foreign key (NecessidadeEspecial_idNecessidadeEspecial) references NecessidadeEspecial(idNecessidadeEspecial)
);

create table Pessoa_has_NecessidadeEspecial (
Pessoa_idPessoa int not null,
NecessidadeEspecial_idNecessidadeEspecial int not null,
constraint pk_Pessoa_has_NecessidadeEspecial primary key (Pessoa_idPessoa, NecessidadeEspecial_idNecessidadeEspecial),
constraint fk_Pessoa_has_NecessidadeEspecial_Pessoa foreign key (Pessoa_idPessoa) references Pessoa(idPessoa),
constraint fk_Pessoa_has_NecessidadeEspecial_NecessidadeEspecial foreign key (NecessidadeEspecial_idNecessidadeEspecial) references NecessidadeEspecial(idNecessidadeEspecial)
);
