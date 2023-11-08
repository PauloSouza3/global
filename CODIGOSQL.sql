CREATE TABLE intituiçao (
  id_instituiçao int PRIMARY KEY,
  nome_instituiçao varchar(55) NOT NULL,
  profissao varchar(255)
);

CREATE TABLE cadastro_usuario (
  id_usuario int PRIMARY KEY,
  login varchar(20) NOT NULL,
  senha int (14) NOT NULL UNIQUE
  nome_usuario varchar(55) NOT NULL,
  sobrenome varchar(55) NOT NULL,
  sexo varchar(25) not NULL,
  endereço varchar (200) not NULL,
  data_nascimento DATE,
  cpf varchar(55) NOT NULL
);

CREATE TABLE medico (
  id_medico int PRIMARY KEY,
  nome_medico varchar(55) NOT NULL,
  sobrenome varchar(55) NOT NULL,
  sexo varchar(25) not NULL,
  endereço varchar (200) not NULL,
  data_nascimento DATE,
  crn varchar(55) NOT NULL
);

CREATE TABLE consulta (
  id_consulta int PRIMARY KEY,
  data timestamp,
  horario varchar(10),
  id_instituiçao int NOT NULL,
  cpf varchar(55) NOT NULL,
  crn varchar(55) NOT NULL
   FOREIGN KEY (id_instituiçao) REFERENCES assistente(id_instituiçao),
  FOREIGN KEY (cpf) REFERENCES medico(cpf)
);

SELECT * FROM instituiçao;
SELECT * FROM cadastro_usuariO;
SELECT * FROM medico;
SELECT * FROM consulta;
