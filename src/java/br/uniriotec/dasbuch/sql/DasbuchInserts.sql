--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1beta1
-- Dumped by pg_dump version 9.1beta1
-- Started on 2013-07-02 00:39:06

-- TOC entry 1880 (class 0 OID 25104)
-- Dependencies: 1757
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Daniel', '00535035035', 0, 'gribel.daniel@gmail.com', '81153250  ');
INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Ze das Couves', '80972583766', 0, 'ze@couves.com', '97358725  ');
INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Daniel Gribel', '00435076001', 0, 'gribel.daniel@gmail.com', '81153250  ');
INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Ze das Couves', '00598765411', 0, 'ze@couves.com', '97358725  ');
INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Joao', '56709865399', 0, 'joao@gmail.com', '97358725  ');
INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Manoel', '00934572898', 0, 'manoel@outlook.com', '56479938  ');
INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Andreia', '12345678901', 0, 'andreia@gmail.com', '23349837  ');
INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Beth', '22907607655', 0, 'beth@gmail.com', '34458776  ');
INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Voltaire', '00700700777', 34, 'voltaire@gmail.com', '34668792  ');
INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Mario Vargas Llosa', '65498732109', 36, 'mariollosa@gmail.com', '98773652  ');
INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Jose Saramago', '55678911309', 38, 'saramago@uol.com.br', '67549982  ');
INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Solange', '45645645645', 40, 'solange@gmail.com', '88888888  ');
INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Omega', '00000000000', 42, 'omega@gmail.com', '98776426  ');
INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Paula', '12112112112', 44, 'paula@gmail.com', '81153250  ');
INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Dr. Voltaire', '55566677788', 46, 'voltaire@yahoo.com', '23349837  ');


--
-- TOC entry 1881 (class 0 OID 25112)
-- Dependencies: 1759
-- Data for Name: endereco; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (1, 'av Reboucas', '23', 'casa 8', 'Pinheiros', 'Sao Paulo', 'SP', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (2, 'Pacheco Leao', '123', 'apto 506', 'Jardim Botanico', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (3, 'Alameda Alaska', '201', 'apto 902', 'Ponta Negra', 'Manaus', 'AM', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (4, 'av Jaguare', '65', 'apto 405', 'Jaguare', 'Sao Paulo', 'SP', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (5, 'Alameda Alaska', '608', 'loja 54', 'Ponta Negra', 'Manaus', 'AM', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (6, 'Rua Pacheco Leao', '320', 'apto 801', 'Jardim Botanico', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (7, 'av Reboucas', '201', 'casa 8', 'Pinheiros', 'Sao Paulo', 'SP', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (8, 'av Jaguare', '99', 'apto 405', 'Jaguare', 'Sao Paulo', 'SP', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (9, 'av Reboucas', '23', 'casa 8', 'Pinheiros', 'Sao Paulo', 'SP', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (10, 'Rua Pacheco Leao', '320', 'apto 801', 'Jardim Botanico', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (11, 'rua A', '645', 'galpao 9', 'Gamboa', 'Cabo Frio', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (12, 'rua do Joao', '534', 'casa 1', 'Sao Cristovao', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (13, 'av Reboucas', '27', 'apto 902', 'Pinheiros', 'Sao Paulo', 'SP', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (14, 'Rua Pacheco Leão', '320', 'apto 801', 'Jardim Botanico', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (15, 'rua das Papoulas', '65', 'casa 7', 'Aleixo', 'Manaus', 'AM', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (16, 'rua Lopes Quintas', '99', 'apto 506', 'Jardim Botanico', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (17, 'av Reboucas', '888', 'apto 704', 'Jardim Paulista', 'Sao Paulo', 'SP', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (18, 'rua Lopes Quintas', '390', 'apto 203', 'Jardim Botanico', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (19, 'rua das Papoulas', '68', 'casa 8', 'Aleixo', 'Manaus', 'AM', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (20, 'Rua Pacheco Leão', '320', 'apto 801', 'Jardim Botanico', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (21, 'av Reboucas', '99', '99', 'Pinheiros', 'Sao Paulo', 'SP', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (22, 'rua Lopes Quintas', '320', 'apto 506', 'Jardim Botanico', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (23, 'rua das Papoulas', '68', 'casa 9', 'Aleixo', 'Manaus', 'AM', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (24, 'rua Lopes Quintas', '320', 'apto 506', 'Jardim Botanico', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (25, 'av Reboucas', '99', 'apto 902', 'Pinheiros', 'Sao Paulo', 'SP', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (26, 'rua do Joao', '99', 'apto 506', 'Sao Cristovao', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (27, 'Av. Rio Branco', '647', '20 andar', 'Centro', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (28, 'SQN 408', '1', 'bloco D apto 203', 'Asa Norte', 'Brasilia', 'DF', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (29, 'Rua das Palmeiras', '57', 'casa 2', 'Botafogo', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (30, 'Praia do Flamengo', '82', 'apto 504', 'Flamengo', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (31, 'Rua em Goiania', '367', 'Vila A', 'Setor Marista', 'Goiania', 'GO', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (32, 'Av. Abelardo Bueno', '278', 'apto 1204', 'Barra da Tijuca', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (33, 'Av. Presidente Vargas', '8797', '38 andar', 'Centro', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (34, 'Arco do Triunfo', '7800', 'casa 3', 'Barre', 'Franca', 'FR', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (35, 'Av. Maracana', '8737', 'casa 3', 'Maracana', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (36, 'Av. Lima', '789', 'apto 807', 'Centro', 'Lima', 'DC', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (37, 'Rua da Alfandega', '87', 'galpao 6', 'Centro', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (38, 'Rua Joao Salomao', '2', 'Vila 5, casa 6', 'Braga', 'Lisboa', 'PO', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (39, 'rua das Papoulas', '43', 'apto 604', 'Aleixo', 'Manaus', 'AM', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (40, 'rua do Sol', '7867', 'casa 7', 'Campos Eliseos', 'Duque de Caxias', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (41, 'av Reboucas', '99', 'casa 8', 'Jardim Paulista', 'Sao Paulo', 'SP', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (42, 'rua Omega', '679', 'apto 102', 'Itaim Bibi', 'Sao Paulo', 'SP', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (43, 'rua das Papoulas', '78', 'casa 4', 'Aleixo', 'Manaus', 'AM', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (44, 'av Jaguare', '22', 'apto 805', 'Jaguare', 'Sao Paulo', 'SP', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (45, 'av Reboucas', '333', 'apto 902', 'Jardim Paulista', 'Sao Paulo', 'SP', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (46, 'rua do Voltaire', '4937', 'apto 502', 'Humaita', 'Rio de Janeiro', 'RJ', NULL);


--
-- TOC entry 1883 (class 0 OID 25122)
-- Dependencies: 1761
-- Data for Name: livro; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO livro (liv_isbn, liv_titulo, liv_comprimento, liv_largura, liv_altura, liv_peso, liv_editora) VALUES ('098', 'Candido', 3, 8, 7, 1, NULL);
INSERT INTO livro (liv_isbn, liv_titulo, liv_comprimento, liv_largura, liv_altura, liv_peso, liv_editora) VALUES ('110', 'Candido', 5, 8, 4, 2, NULL);
INSERT INTO livro (liv_isbn, liv_titulo, liv_comprimento, liv_largura, liv_altura, liv_peso, liv_editora) VALUES ('7865', 'Alice no pais das maravilhas', 9, 7, 8, 5, NULL);
INSERT INTO livro (liv_isbn, liv_titulo, liv_comprimento, liv_largura, liv_altura, liv_peso, liv_editora) VALUES ('657', 'Extremamente alto e incrivelmente perto', 9, 8, 4, 6, NULL);
INSERT INTO livro (liv_isbn, liv_titulo, liv_comprimento, liv_largura, liv_altura, liv_peso, liv_editora) VALUES ('45280', 'As esganadas', 9, 7, 5, 2, NULL);
INSERT INTO livro (liv_isbn, liv_titulo, liv_comprimento, liv_largura, liv_altura, liv_peso, liv_editora) VALUES ('445', 'Grande sertao veredas', 8, 35, 6, 7, NULL);
INSERT INTO livro (liv_isbn, liv_titulo, liv_comprimento, liv_largura, liv_altura, liv_peso, liv_editora) VALUES ('6740', 'Micromegas', 6, 8, 1, 6, NULL);
INSERT INTO livro (liv_isbn, liv_titulo, liv_comprimento, liv_largura, liv_altura, liv_peso, liv_editora) VALUES ('8794733', 'O sonho do celta', 66, 88, 99, 55, NULL);
INSERT INTO livro (liv_isbn, liv_titulo, liv_comprimento, liv_largura, liv_altura, liv_peso, liv_editora) VALUES ('2534', 'Ensaio sobre a cegueira', 8, 7, 5, 9, NULL);
INSERT INTO livro (liv_isbn, liv_titulo, liv_comprimento, liv_largura, liv_altura, liv_peso, liv_editora) VALUES ('777', 'Biogeografia', 6, 5, 4, 3, NULL);
INSERT INTO livro (liv_isbn, liv_titulo, liv_comprimento, liv_largura, liv_altura, liv_peso, liv_editora) VALUES ('999', 'Codigo de etica', 7, 6, 5, 4, NULL);
INSERT INTO livro (liv_isbn, liv_titulo, liv_comprimento, liv_largura, liv_altura, liv_peso, liv_editora) VALUES ('81', 'Passaros', 8, 6, 5, 4, NULL);
INSERT INTO livro (liv_isbn, liv_titulo, liv_comprimento, liv_largura, liv_altura, liv_peso, liv_editora) VALUES ('44', 'Candido ou o otimismo', 7, 8, 6, 4, NULL);


--
-- TOC entry 1884 (class 0 OID 25130)
-- Dependencies: 1763
-- Data for Name: pedido_transporte; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (1, '456', '098', 0, 0, '2013-06-28', '2013-06-28', '2013-06-28', 10, 0, '34', '00535035035');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (2, '987654321', '098', 0, 0, '2013-06-28', '2013-06-28', '2013-06-28', 10, 0, '123', '80972583766');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (3, '987', '110', 0, 0, '2013-06-29', '2013-06-29', '2013-06-29', 10, 0, '675', '00435076001');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (4, '987654321', '098', 0, 0, '2013-06-29', '2013-06-29', '2013-06-29', 10, 0, '123', '00598765411');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (5, '456', '110', 0, 0, '2013-06-29', '2013-06-29', '2013-06-29', 10, 0, '34', '00535035035');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (6, '456', '110', 0, 0, '2013-06-29', '2013-06-29', '2013-06-29', 10, 0, '34', '56709865399');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (7, '2', '7865', 0, 0, '2013-06-29', '2013-06-29', '2013-06-29', 10, 0, '4', '00598765411');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (8, '3874', '098', 0, 0, '2013-06-29', '2013-06-29', '2013-06-29', 10, 0, '9', '00535035035');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (9, '6', '098', 0, 0, '2013-06-29', '2013-06-29', '2013-06-29', 10, 0, '7', '00535035035');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (10, '3', '098', 0, 0, '2013-06-29', '2013-06-29', '2013-06-29', 10, 0, '2', '00598765411');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (11, '6', '098', 0, 0, '2013-06-29', '2013-06-29', '2013-06-29', 10, 0, '7', '00535035035');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (12, '8', '657', 0, 0, '2013-06-29', '2013-06-29', '2013-06-29', 10, 0, '7', '00934572898');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (13, '7', '45280', 0, 0, '2013-06-30', '2013-06-30', '2013-06-30', 10, 0, '8', '12345678901');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (14, '55', '445', 31, 32, '2013-06-30', '2013-06-30', '2013-06-30', 10, 0, '66', '22907607655');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (15, '87', '6740', 33, 34, '2013-06-30', '2013-06-30', '2013-06-30', 10, 0, '6', '00700700777');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (16, '77', '8794733', 35, 36, '2013-06-30', '2013-06-30', '2013-07-01', 10, 0, '88', '65498732109');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (17, '6', '2534', 37, 38, '2013-06-30', '2013-06-30', '2013-07-01', 10, 0, '5', '55678911309');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (18, '6', '777', 39, 40, '2013-07-01', '2013-07-01', '2013-07-02', 10, 0, '8', '45645645645');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (19, '2', '999', 41, 42, '2013-07-01', '2013-07-01', '2013-07-02', 10, 0, '4', '00000000000');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (20, '5', '81', 43, 44, '2013-07-01', '2013-07-01', '2013-07-02', 10, 0, '7', '12112112112');
INSERT INTO pedido_transporte (ped_registro_transporte, ped_id_nota_fiscal, ped_isbn, ped_endereco_retirada, ped_endereco_entrega, ped_data_registro, ped_data_retirada, ped_data_entrega, ped_custo, ped_id_livraria, ped_id_pedido_livraria, ped_cpf) VALUES (21, '7654682', '44', 45, 46, '2013-07-01', '2013-07-01', '2013-07-02', 10, 4, '889', '55566677788');

-- Completed on 2013-07-02 00:39:07

--
-- PostgreSQL database dump complete
--