-- -------------------------------------------
-- Criação da tabela Autor
-- -------------------------------------------
DROP TABLE IF EXISTS Autor;
CREATE TABLE Autor(
	id_autor SERIAL,
	nome_autor VARCHAR(30) NOT NULL,
	email_autor VARCHAR(50),
	dataNasc_autor DATE,
	PRIMARY KEY (id_autor));

-- -------------------------------------------
-- Criação da tabela Categoria
-- -------------------------------------------
DROP TABLE IF EXISTS Categoria;
CREATE TABLE Categoria(
	id_categoria SERIAL,
	descricao VARCHAR(30) NOT NULL,
	PRIMARY KEY (id_categoria));

-- -------------------------------------------
-- Criação da tabela Editora
-- -------------------------------------------
DROP TABLE IF EXISTS Editora;
CREATE TABLE Editora(
	id_editora SERIAL,
	nome_editora VARCHAR(30) NOT NULL,
	email_editora VARCHAR(50) NOT NULL,
	telefone_editora VARCHAR(20),
	representante VARCHAR(30),
	PRIMARY KEY (id_editora));

-- -------------------------------------------
-- Criação da tabela Endereco
-- -------------------------------------------
DROP TABLE IF EXISTS Endereco;
CREATE TABLE Endereco(
	id_endereco SERIAL,
	cep CHAR(8) NOT NULL,
	rua VARCHAR(30) NOT NULL,
	numero SMALLINT NOT NULL,
	bairro VARCHAR(30) NOT NULL,
	cidade VARCHAR(30) NOT NULL,
	estado CHAR(2) NOT NULL,
	usuario_id INTEGER,
	editora_id INTEGER,
	PRIMARY KEY (id_endereco));

-- -------------------------------------------
-- Criação da tabela Publicacao
-- -------------------------------------------
DROP TABLE IF EXISTS Publicacao;
CREATE TABLE Publicacao(
	id_publicacao SERIAL,
	oid_publicacao OID NOT NULL,
	nome_publicacao VARCHAR(50) NOT NULL,
	dataPubli DATE,
	resumo TEXT,
	usuario_id INTEGER NOT NULL,
	categoria_id INTEGER NOT NULL,
	editora_id INTEGER,
	PRIMARY KEY (id_publicacao));

-- -------------------------------------------
-- Criação da tabela PublicacaoAutor
-- -------------------------------------------
DROP TABLE IF EXISTS PublicacaoAutor;
CREATE TABLE PublicacaoAutor(
	publicacao_id INTEGER NOT NULL,
	autor_id INTEGER NOT NULL);

-- -------------------------------------------
-- Criação da tabela Usuario
-- -------------------------------------------
DROP TABLE IF EXISTS Usuario;
CREATE TABLE Usuario(
	id_usuario SERIAL,
	nome_usuario VARCHAR(30) NOT NULL,
	email_usuario VARCHAR(50) NOT NULL UNIQUE,
	cpf CHAR(11) NOT NULL UNIQUE,
	dataNasc_usuario DATE,
	telefone_usuario VARCHAR(20),
	PRIMARY KEY (id_usuario));

-- -------------------------------------------
-- Definição das chaves estrangeiras
-- -------------------------------------------
ALTER TABLE Endereco
	ADD FOREIGN KEY (usuario_id) REFERENCES Usuario(id_usuario),
	ADD FOREIGN KEY (editora_id) REFERENCES Editora(id_editora);
	
ALTER TABLE Publicacao
	ADD FOREIGN KEY (usuario_id) REFERENCES Usuario(id_usuario),
	ADD FOREIGN KEY (categoria_id) REFERENCES Categoria(id_categoria),
	ADD FOREIGN KEY (editora_id) REFERENCES Editora(id_editora);
	
ALTER TABLE PublicacaoAutor
	ADD FOREIGN KEY (publicacao_id) REFERENCES Publicacao(id_publicacao),
	ADD FOREIGN KEY (autor_id) REFERENCES Autor(id_autor);

-- -------------------------------------------
-- Criação das tabelas de log
-- -------------------------------------------
DROP TABLE IF EXISTS log_Autor;
CREATE TABLE log_Autor(
	codigo SERIAL,
	data_hora TIMESTAMP,
	usuario VARCHAR(30),
	comando CHAR(6),
	tabela VARCHAR(15));
	
DROP TABLE IF EXISTS log_Categoria;
CREATE TABLE log_Categoria(
	codigo SERIAL,
	data_hora TIMESTAMP,
	usuario VARCHAR(30),
	comando CHAR(6),
	tabela VARCHAR(15));
	
DROP TABLE IF EXISTS log_Editora;
CREATE TABLE log_Editora(
	codigo SERIAL,
	data_hora TIMESTAMP,
	usuario VARCHAR(30),
	comando CHAR(6),
	tabela VARCHAR(15));
	
DROP TABLE IF EXISTS log_Endereco;
CREATE TABLE log_Endereco(
	codigo SERIAL,
	data_hora TIMESTAMP,
	usuario VARCHAR(30),
	comando CHAR(6),
	tabela VARCHAR(15));
	
DROP TABLE IF EXISTS log_Publicacao;
CREATE TABLE log_Publicacao(
	codigo SERIAL,
	data_hora TIMESTAMP,
	usuario VARCHAR(30),
	comando CHAR(6),
	tabela VARCHAR(15));
	
DROP TABLE IF EXISTS log_PublicacaoAutor;
CREATE TABLE log_PublicacaoAutor(
	codigo SERIAL,
	data_hora TIMESTAMP,
	usuario VARCHAR(30),
	comando CHAR(6),
	tabela VARCHAR(15));
	
DROP TABLE IF EXISTS log_Usuario;
CREATE TABLE log_Usuario(
	codigo SERIAL,
	data_hora TIMESTAMP,
	usuario VARCHAR(30),
	comando CHAR(6),
	tabela VARCHAR(15));
