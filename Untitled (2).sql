CREATE TABLE [CadastroCliente] (
  [cpf] int PRIMARY KEY,
  [nome] nvarchar(255),
  [email] nvarchar(255),
  [data_nascimento] date
)
GO

CREATE TABLE [LoginCliente] (
  [email] nvarchar(255) PRIMARY KEY,
  [nome_usuario] nvarchar(255),
  [senha] nvarchar(255)
)
GO

CREATE TABLE [CadastroPsicologo] (
  [cpf_psi] int PRIMARY KEY,
  [nome] nvarchar(255),
  [email] nvarchar(255),
  [data_nascimento] date
)
GO

CREATE TABLE [LoginPsicologos] (
  [nome_psicologo] nvarchar(255) PRIMARY KEY,
  [email] nvarchar(255),
  [senha] nvarchar(255)
)
GO
