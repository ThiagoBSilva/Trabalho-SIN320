-- -------------------------------------------
-- Rules da tabela Autor
-- -------------------------------------------
CREATE OR REPLACE RULE rl_log_Autor_update AS ON UPDATE TO Autor DO
	INSERT INTO log_Autor(data_hora, usuario, comando, tabela)
	VALUES (current_timestamp(0), current_user, 'UPDATE', 'Autor');

CREATE OR REPLACE RULE rl_log_Autor_delete AS ON DELETE TO Autor DO
	INSERT INTO log_Autor(data_hora, usuario, comando, tabela)
	VALUES (current_timestamp(0), current_user, 'DELETE', 'Autor');

-- -------------------------------------------
-- Rules da tabela Categoria
-- -------------------------------------------
CREATE OR REPLACE RULE rl_log_Categoria_update AS ON UPDATE TO Categoria DO
	INSERT INTO log_Categoria(data_hora, usuario, comando, tabela)
	VALUES (current_timestamp(0), current_user, 'UPDATE', 'Categoria');

CREATE OR REPLACE RULE rl_log_Categoria_delete AS ON DELETE TO Categoria DO
	INSERT INTO log_Categoria(data_hora, usuario, comando, tabela)
	VALUES (current_timestamp(0), current_user, 'DELETE', 'Categoria');

-- -------------------------------------------
-- Rules da tabela Editora
-- -------------------------------------------
CREATE OR REPLACE RULE rl_log_Editora_update AS ON UPDATE TO Editora DO
	INSERT INTO log_Editora(data_hora, usuario, comando, tabela)
	VALUES (current_timestamp(0), current_user, 'UPDATE', 'Editora');

CREATE OR REPLACE RULE rl_log_Editora_delete AS ON DELETE TO Editora DO
	INSERT INTO log_Editora(data_hora, usuario, comando, tabela)
	VALUES (current_timestamp(0), current_user, 'DELETE', 'Editora');

-- -------------------------------------------
-- Rules da tabela Endereco
-- -------------------------------------------
CREATE OR REPLACE RULE rl_log_Endereco_update AS ON UPDATE TO Endereco DO
	INSERT INTO log_Endereco(data_hora, usuario, comando, tabela)
	VALUES (current_timestamp(0), current_user, 'UPDATE', 'Endereco');

CREATE OR REPLACE RULE rl_log_Endereco_delete AS ON DELETE TO Endereco DO
	INSERT INTO log_Endereco(data_hora, usuario, comando, tabela)
	VALUES (current_timestamp(0), current_user, 'DELETE', 'Endereco');

-- -------------------------------------------
-- Rules da tabela Publicacao
-- -------------------------------------------
CREATE OR REPLACE RULE rl_log_Publicacao_update AS ON UPDATE TO Publicacao DO
	INSERT INTO log_Publicacao(data_hora, usuario, comando, tabela)
	VALUES (current_timestamp(0), current_user, 'UPDATE', 'Publicacao');

CREATE OR REPLACE RULE rl_log_Publicacao_delete AS ON DELETE TO Publicacao DO
	INSERT INTO log_Publicacao(data_hora, usuario, comando, tabela)
	VALUES (current_timestamp(0), current_user, 'DELETE', 'Publicacao');

-- -------------------------------------------
-- Rules da tabela PublicacaoAutor
-- -------------------------------------------
CREATE OR REPLACE RULE rl_log_PublicacaoAutor_update AS ON UPDATE TO PublicacaoAutor DO
	INSERT INTO log_PublicacaoAutor(data_hora, usuario, comando, tabela)
	VALUES (current_timestamp(0), current_user, 'UPDATE', 'PublicacaoAutor');

CREATE OR REPLACE RULE rl_log_PublicacaoAutor_delete AS ON DELETE TO PublicacaoAutor DO
	INSERT INTO log_PublicacaoAutor(data_hora, usuario, comando, tabela)
	VALUES (current_timestamp(0), current_user, 'DELETE', 'PublicacaoAutor');

-- -------------------------------------------
-- Rules da tabela Usuario
-- -------------------------------------------
CREATE OR REPLACE RULE rl_log_Usuario_update AS ON UPDATE TO Usuario DO
	INSERT INTO log_Usuario(data_hora, usuario, comando, tabela)
	VALUES (current_timestamp(0), current_user, 'UPDATE', 'Usuario');

CREATE OR REPLACE RULE rl_log_Usuario_delete AS ON DELETE TO Usuario DO
	INSERT INTO log_Usuario(data_hora, usuario, comando, tabela)
	VALUES (current_timestamp(0), current_user, 'DELETE', 'Usuario');
	
-- -------------------------------------------
-- Rule de exclusão automática do blob
-- -------------------------------------------
CREATE OR REPLACE RULE rl_exclusao_auto_blob
AS ON DELETE TO Publicacao DO
	SELECT lo_unlink (OLD.oid_publicacao);
