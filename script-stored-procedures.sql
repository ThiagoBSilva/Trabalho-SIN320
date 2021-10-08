-- ------------------------------------------------------
-- Stored Procedure - Publicações de um Autor
-- ------------------------------------------------------
DROP FUNCTION IF EXISTS publicacoes_autor;
CREATE FUNCTION publicacoes_autor (INTEGER) RETURNS SETOF TEXT AS
$$
DECLARE
	publi INTEGER; 
	dados_publi RECORD;
	autores RECORD; 
BEGIN
	FOR publi IN SELECT publicacao_id FROM PublicacaoAutor WHERE autor_id = $1 LOOP
		SELECT INTO dados_publi * FROM Publicacao, Usuario, Editora, Categoria
		WHERE publi = id_publicacao
			AND usuario_id = id_usuario
			AND (editora_id = id_editora OR editora_id IS NULL)
			AND categoria_id = id_categoria;
			
		SELECT INTO autores STRING_AGG(CAST(nome_autor AS TEXT), ', ') FROM PublicacaoAutor, Autor
		WHERE publi = publicacao_id
			AND autor_id = id_autor;
			
		IF dados_publi.editora_id IS NULL THEN
			RETURN NEXT 'Nome: ' || dados_publi.nome_publicacao ||
						', Data: ' || dados_publi.dataPubli ||
						', Autor(es): ' || autores ||
						', Resumo: ' || dados_publi.resumo ||
						', Categoria: ' || dados_publi.descricao ||
						', Editora: <<N/A>>';
		ELSE
			RETURN NEXT 'Nome: ' || dados_publi.nome_publicacao ||
						', Data: ' || dados_publi.dataPubli ||
						', Autor(es): ' || autores ||
						', Resumo: ' || dados_publi.resumo ||
						', Categoria: ' || dados_publi.descricao ||
						', Editora: ' || dados_publi.nome_editora;
		END IF;
	END LOOP;
	RETURN;
END;
$$ LANGUAGE plpgsql;

-- ------------------------------------------------------
-- Stored Procedure - Publicações de uma Categoria
-- ------------------------------------------------------
DROP FUNCTION IF EXISTS publicacoes_categoria;
CREATE FUNCTION publicacoes_categoria (INTEGER) RETURNS SETOF TEXT AS
$$
DECLARE
	publi INTEGER; 
	dados_publi RECORD;
	autores RECORD; 
BEGIN
	FOR publi IN SELECT id_publicacao FROM Publicacao WHERE categoria_id = $1 LOOP
		SELECT INTO dados_publi * FROM Publicacao, Usuario, Editora, Categoria
		WHERE publi = id_publicacao
			AND usuario_id = id_usuario
			AND (editora_id = id_editora OR editora_id IS NULL)
			AND categoria_id = id_categoria;
			
		SELECT INTO autores STRING_AGG(CAST(nome_autor AS TEXT), ', ') FROM PublicacaoAutor, Autor
		WHERE publi = publicacao_id
			AND autor_id = id_autor;
			
		IF dados_publi.editora_id IS NULL THEN
			RETURN NEXT 'Nome: ' || dados_publi.nome_publicacao ||
						', Data: ' || dados_publi.dataPubli ||
						', Autor(es): ' || autores ||
						', Resumo: ' || dados_publi.resumo ||
						', Categoria: ' || dados_publi.descricao ||
						', Editora: <<N/A>>';
		ELSE
			RETURN NEXT 'Nome: ' || dados_publi.nome_publicacao ||
						', Data: ' || dados_publi.dataPubli ||
						', Autor(es): ' || autores ||
						', Resumo: ' || dados_publi.resumo ||
						', Categoria: ' || dados_publi.descricao ||
						', Editora: ' || dados_publi.nome_editora;
		END IF;
	END LOOP;
	RETURN;
END;
$$ LANGUAGE plpgsql;

-- ------------------------------------------------------
-- Stored Procedure - Publicações de uma Editora
-- ------------------------------------------------------
DROP FUNCTION IF EXISTS publicacoes_editora;
CREATE FUNCTION publicacoes_editora (INTEGER) RETURNS SETOF TEXT AS
$$
DECLARE
	publi INTEGER; 
	dados_publi RECORD;
	autores RECORD; 
BEGIN
	FOR publi IN SELECT id_publicacao FROM Publicacao WHERE editora_id = $1 LOOP
		SELECT INTO dados_publi * FROM Publicacao, Usuario, Editora, Categoria
		WHERE publi = id_publicacao
			AND usuario_id = id_usuario
			AND editora_id = id_editora
			AND categoria_id = id_categoria;
			
		SELECT INTO autores STRING_AGG(CAST(nome_autor AS TEXT), ', ') FROM PublicacaoAutor, Autor
		WHERE publi = publicacao_id
			AND autor_id = id_autor;
			

		RETURN NEXT 'Nome: ' || dados_publi.nome_publicacao ||
					', Data: ' || dados_publi.dataPubli ||
					', Autor(es): ' || autores ||
					', Resumo: ' || dados_publi.resumo ||
					', Categoria: ' || dados_publi.descricao ||
					', Editora: ' || dados_publi.nome_editora;
	END LOOP;
	RETURN;
END;
$$ LANGUAGE plpgsql;
