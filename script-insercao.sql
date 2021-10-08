-- -------------------------------------------
-- Inserção na tabela Usuario
-- -------------------------------------------
INSERT INTO Usuario(nome_usuario, email_usuario, cpf, dataNasc_usuario, telefone_usuario)
VALUES ('Gustavo Marcelo Freitas', 'gustavomfreitas76@dgh.com.br', '35459440939', '27/05/1968', '(83) 2810-7035');

INSERT INTO Usuario(nome_usuario, email_usuario, cpf, dataNasc_usuario, telefone_usuario)
VALUES ('Juan André Barbosa', 'jjuanjosebarbosa@ambev.com.br', '33236124857', '27/02/1951', '(27) 2561-0463');

INSERT INTO Usuario(nome_usuario, email_usuario, cpf, dataNasc_usuario, telefone_usuario)
VALUES ('Rodrigo Alexandre Santos', 'rodrigoasantos97@alvesbarcelos.com.br', '44539241516', '17/11/2002','(67) 3962-9127');

INSERT INTO Usuario(nome_usuario, email_usuario, cpf, dataNasc_usuario, telefone_usuario)
VALUES ('Daiane Ester Benedita', 'dainaneester@supercarica.com', '64781468713', '12/02/1951', '(61) 2621-8738');

INSERT INTO Usuario(nome_usuario, email_usuario, cpf, dataNasc_usuario, telefone_usuario)
VALUES ('Alexandre Moraes', 'alexandregmorais@sigtechbr.com', '48203813267', '24/11/1952', '(68) 2790-0763');

-- -------------------------------------------
-- Inserção na tabela Autor
-- -------------------------------------------
INSERT INTO Autor(nome_autor, email_autor, dataNasc_autor)
VALUES ('Ayla Eliane Bernardes', 'aylabernardes89@gestion.com.br', '17/03/1954');

INSERT INTO Autor(nome_autor, email_autor, dataNasc_autor)
VALUES ('Juan André Barbosa', 'jjuanjosebarbosa@ambev.com.br', '27/02/1951');

INSERT INTO Autor(nome_autor, email_autor, dataNasc_autor)
VALUES ('Raul Bento', 'raulbento@sinelcom.com.br', '02/09/1941');

INSERT INTO Autor(nome_autor, email_autor, dataNasc_autor)
VALUES ('Daiane Ester Benedita', 'dainaneester@supercarica.com', '12/02/1951');

INSERT INTO Autor(nome_autor, email_autor, dataNasc_autor)
VALUES ('Pedro Silveira', 'pedrosilveira@andrediaz.com', '27/04/1959');

-- -------------------------------------------
-- Inserção na tabela Editora
-- -------------------------------------------
INSERT INTO Editora (nome_editora, email_editora, telefone_editora, representante)
VALUES ('Cauacel', 'contato@cauacel.com.br', '(11) 3547-1919', 'Cecília Santana');

INSERT INTO Editora (nome_editora, email_editora, telefone_editora, representante)
VALUES ('Louisiana', 'suporte@louisiana.com', '(11) 2846-2812', 'Alana Barroso');

INSERT INTO Editora (nome_editora, email_editora, telefone_editora, representante)
VALUES ('Hello', 'negocios@hello.com.br', '(33) 2643-6692', 'Silvana Gael');

INSERT INTO Editora (nome_editora, email_editora, telefone_editora, representante)
VALUES ('Robevin', 'contato@robevin.com.br', '(34) 2715-9699', 'Kevin Basílio');

INSERT INTO Editora (nome_editora, email_editora, telefone_editora, representante)
VALUES ('Noah', 'atendimento@noah.com', '(21) 3753-3088', 'Alícia Conrado');

-- -------------------------------------------
-- Inserção na tabela Categoria
-- -------------------------------------------
INSERT INTO Categoria(descricao)
VALUES ('Revista');

INSERT INTO Categoria(descricao)
VALUES ('Livro digital');

INSERT INTO Categoria(descricao)
VALUES ('Pintura digital');

INSERT INTO Categoria(descricao)
VALUES ('Vídeo educacional');

INSERT INTO Categoria(descricao)
VALUES ('Fotografia');

-- -------------------------------------------
-- Inserção na tabela Endereco
-- -------------------------------------------
INSERT INTO Endereco(cep, rua, numero, bairro, cidade, estado, usuario_id)
VALUES ('58064220', 'Rua José Pedro dos Santos', 427, 'Valentina de Figueiredo', 'João Pessoa', 'PB', 1);

INSERT INTO Endereco(cep, rua, numero, bairro, cidade, estado, usuario_id)
VALUES ('29052635', 'Praça Doutor Quintino', 781, 'Ilha do Boi', 'Vitória', 'ES', 2);

INSERT INTO Endereco(cep, rua, numero, bairro, cidade, estado, usuario_id)
VALUES ('79074622', 'Rua Antônio Pereira de Souza', 500, 'Jardim Radialista', 'Campo Grande', 'MS', 3);

INSERT INTO Endereco(cep, rua, numero, bairro, cidade, estado, usuario_id)
VALUES ('72902432', 'Quadra 206', 457, 'Parque Estrela Dalva XVI', 'Santo Antônio do Descoberto', 'GO', 4);

INSERT INTO Endereco(cep, rua, numero, bairro, cidade, estado, usuario_id)
VALUES ('69909742', 'Travessa Assis Brasil', 846, 'Vila Acre', 'Rio Branco', 'AC', 5);

INSERT INTO Endereco(cep, rua, numero, bairro, cidade, estado, editora_id)
VALUES ('04685005', 'Avenida Nossa S. do Sabará', 187, 'Vila Santana', 'São Paulo', 'SP', 1);

INSERT INTO Endereco(cep, rua, numero, bairro, cidade, estado, editora_id)
VALUES ('07063012', 'Rua Almirante Barroso', 329, 'Vila Galvão', 'Guarulhos', 'SP', 2);

INSERT INTO Endereco(cep, rua, numero, bairro, cidade, estado, editora_id)
VALUES ('35030282', 'Rua Dois', 600, 'São Paulo', 'Governador Valadares', 'MG', 3);

INSERT INTO Endereco(cep, rua, numero, bairro, cidade, estado, editora_id)
VALUES ('38039870', 'Rua E', 379, 'Chácaras São Basílio', 'Uberaba', 'MG', 4);

INSERT INTO Endereco(cep, rua, numero, bairro, cidade, estado, editora_id)
VALUES ('21250280', 'Rua Major Conrado', 871, 'Cordovil', 'Rio de Janeiro', 'RJ', 5);

-- -------------------------------------------
-- Inserção na tabela Publicacao
-- -------------------------------------------
INSERT INTO Publicacao(oid_publicacao, nome_publicacao, dataPubli, resumo, usuario_id, categoria_id, editora_id)
VALUES (lo_import('C:\Testes\livro.pdf'), 'Tudo sobre Redes Neurais', '28/09/2019', 
		'Um livro sobre aspectos abrangentes de Redes Neurais', 2, 2, 5);

INSERT INTO Publicacao(oid_publicacao, nome_publicacao, dataPubli, resumo, usuario_id, categoria_id)
VALUES (lo_import('C:\Testes\fotografia.png'), 'Uma noite na cidade', '27/02/2018',
	   'Uma fotografia de uma cidade à noite', 3, 5);

INSERT INTO Publicacao(oid_publicacao, nome_publicacao, dataPubli, resumo, usuario_id, categoria_id, editora_id)
VALUES (lo_import('C:\Testes\revista.pdf'), 'Atualidades 2021', '30/06/2021',
	   'Uma revista sobre os assuntos da atualidade de 2021', 2, 1, 3);

INSERT INTO Publicacao(oid_publicacao, nome_publicacao, dataPubli, resumo, usuario_id, categoria_id)
VALUES (lo_import('C:\Testes\pintura.png'), 'Memórias do futuro', '01/10/2021',
	   'Uma pintura digital de um local futurista', 5, 3);

-- -------------------------------------------
-- Inserção na tabela PublicacaoAutor
-- -------------------------------------------
INSERT INTO PublicacaoAutor
VALUES (1, 1);

INSERT INTO PublicacaoAutor
VALUES (1, 2);

INSERT INTO PublicacaoAutor
VALUES (2, 3);

INSERT INTO PublicacaoAutor
VALUES (3, 1);

INSERT INTO PublicacaoAutor
VALUES (3, 2);

INSERT INTO PublicacaoAutor
VALUES (4, 3);
