Table instituicao {
  id int [pk]
  nome_instituicao varchar
  profissao varchar
  
 
}


Table medico {
  id_medico [pk]
  nome_medico varchar 
  sobrenome varchar 
  sexo varchar
  endereco varchar
  data_nascimento date
  crn varchar
  
}


Table usuario {
  id int [pk]
  login varchar
  senha varchar
  nome_usuario varchar
  sobrenome varchar
  sexo varchar
  endereco varchar
  data_nascimento date_nascimento
  cpf varchar
  
}


Table consulta {

 id_consulta int [pk]
 data timestamp
 horario varchar
 id_instituicao int
 cpf varchar
 crn varchar

  }








Ref: "instituicao"."id" < "consulta"."id_instituicao"

Ref: "medico"."id_medico" < "usuario"."id"



Ref: "medico"."crn" < "consulta"."crn"

Ref: "instituicao"."id" < "usuario"."id"

Ref: "consulta"."cpf" < "usuario"."cpf"
