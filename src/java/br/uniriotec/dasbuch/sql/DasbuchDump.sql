--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1beta1
-- Dumped by pg_dump version 9.1beta1
-- Started on 2013-07-02 00:54:16

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 7 (class 3079 OID 11638)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1890 (class 0 OID 0)
-- Dependencies: 7
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1757 (class 1259 OID 25104)
-- Dependencies: 5
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cliente (
    cli_nome character varying(255) NOT NULL,
    cli_cpf character varying(11) NOT NULL,
    cli_id_endereco integer NOT NULL,
    cli_email character varying(255),
    cli_telefone character(10) NOT NULL
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 1759 (class 1259 OID 25112)
-- Dependencies: 5
-- Name: endereco; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE endereco (
    end_id integer NOT NULL,
    end_rua character varying(255) NOT NULL,
    end_numero character varying(10) NOT NULL,
    end_complemento character varying(255),
    end_bairro character varying(255) NOT NULL,
    end_cidade character varying(255) NOT NULL,
    end_estado character varying(2) NOT NULL,
    end_cep character varying(8)
);


ALTER TABLE public.endereco OWNER TO postgres;

--
-- TOC entry 1758 (class 1259 OID 25110)
-- Dependencies: 1759 5
-- Name: endereco_end_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE endereco_end_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.endereco_end_id_seq OWNER TO postgres;

--
-- TOC entry 1891 (class 0 OID 0)
-- Dependencies: 1758
-- Name: endereco_end_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE endereco_end_id_seq OWNED BY endereco.end_id;


--
-- TOC entry 1892 (class 0 OID 0)
-- Dependencies: 1758
-- Name: endereco_end_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('endereco_end_id_seq', 46, true);


--
-- TOC entry 1760 (class 1259 OID 25119)
-- Dependencies: 5
-- Name: livraria; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE livraria (
    li_id integer NOT NULL,
    li_nome character varying(255)
);


ALTER TABLE public.livraria OWNER TO postgres;

--
-- TOC entry 1761 (class 1259 OID 25122)
-- Dependencies: 5
-- Name: livro; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE livro (
    liv_isbn character varying(255) NOT NULL,
    liv_titulo character varying(255) NOT NULL,
    liv_comprimento double precision NOT NULL,
    liv_largura double precision NOT NULL,
    liv_altura double precision NOT NULL,
    liv_peso double precision NOT NULL,
    liv_editora character varying(255)
);


ALTER TABLE public.livro OWNER TO postgres;

--
-- TOC entry 1763 (class 1259 OID 25130)
-- Dependencies: 5
-- Name: pedido_transporte; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pedido_transporte (
    ped_registro_transporte integer NOT NULL,
    ped_id_nota_fiscal character varying(255) NOT NULL,
    ped_isbn character varying(255) NOT NULL,
    ped_endereco_retirada integer NOT NULL,
    ped_endereco_entrega integer NOT NULL,
    ped_data_registro date NOT NULL,
    ped_data_retirada date NOT NULL,
    ped_data_entrega date NOT NULL,
    ped_custo double precision NOT NULL,
    ped_id_livraria integer NOT NULL,
    ped_id_pedido_livraria character varying(255) NOT NULL,
    ped_cpf character varying(11) NOT NULL
);


ALTER TABLE public.pedido_transporte OWNER TO postgres;

--
-- TOC entry 1762 (class 1259 OID 25128)
-- Dependencies: 1763 5
-- Name: pedido_transporte_ped_registro_transporte_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pedido_transporte_ped_registro_transporte_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pedido_transporte_ped_registro_transporte_seq OWNER TO postgres;

--
-- TOC entry 1893 (class 0 OID 0)
-- Dependencies: 1762
-- Name: pedido_transporte_ped_registro_transporte_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pedido_transporte_ped_registro_transporte_seq OWNED BY pedido_transporte.ped_registro_transporte;


--
-- TOC entry 1894 (class 0 OID 0)
-- Dependencies: 1762
-- Name: pedido_transporte_ped_registro_transporte_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pedido_transporte_ped_registro_transporte_seq', 21, true);


--
-- TOC entry 1865 (class 2604 OID 25115)
-- Dependencies: 1759 1758 1759
-- Name: end_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE endereco ALTER COLUMN end_id SET DEFAULT nextval('endereco_end_id_seq'::regclass);


--
-- TOC entry 1866 (class 2604 OID 25133)
-- Dependencies: 1762 1763 1763
-- Name: ped_registro_transporte; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE pedido_transporte ALTER COLUMN ped_registro_transporte SET DEFAULT nextval('pedido_transporte_ped_registro_transporte_seq'::regclass);


--
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
INSERT INTO cliente (cli_nome, cli_cpf, cli_id_endereco, cli_email, cli_telefone) VALUES ('Novo Insert', '22255599900', 0, 'inserttest@gmail.com', '36496549  ');


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
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (14, 'Rua Pacheco LeÃ£o', '320', 'apto 801', 'Jardim Botanico', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (15, 'rua das Papoulas', '65', 'casa 7', 'Aleixo', 'Manaus', 'AM', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (16, 'rua Lopes Quintas', '99', 'apto 506', 'Jardim Botanico', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (17, 'av Reboucas', '888', 'apto 704', 'Jardim Paulista', 'Sao Paulo', 'SP', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (18, 'rua Lopes Quintas', '390', 'apto 203', 'Jardim Botanico', 'Rio de Janeiro', 'RJ', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (19, 'rua das Papoulas', '68', 'casa 8', 'Aleixo', 'Manaus', 'AM', NULL);
INSERT INTO endereco (end_id, end_rua, end_numero, end_complemento, end_bairro, end_cidade, end_estado, end_cep) VALUES (20, 'Rua Pacheco LeÃ£o', '320', 'apto 801', 'Jardim Botanico', 'Rio de Janeiro', 'RJ', NULL);
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
-- TOC entry 1882 (class 0 OID 25119)
-- Dependencies: 1760
-- Data for Name: livraria; Type: TABLE DATA; Schema: public; Owner: postgres
--



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


--
-- TOC entry 1869 (class 2606 OID 25138)
-- Dependencies: 1757 1757
-- Name: pk_cli_cpf; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT pk_cli_cpf PRIMARY KEY (cli_cpf);


--
-- TOC entry 1871 (class 2606 OID 25140)
-- Dependencies: 1759 1759
-- Name: pk_end_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT pk_end_id PRIMARY KEY (end_id);


--
-- TOC entry 1873 (class 2606 OID 25142)
-- Dependencies: 1760 1760
-- Name: pk_li_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY livraria
    ADD CONSTRAINT pk_li_id PRIMARY KEY (li_id);


--
-- TOC entry 1875 (class 2606 OID 25144)
-- Dependencies: 1761 1761
-- Name: pk_liv_isbn; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY livro
    ADD CONSTRAINT pk_liv_isbn PRIMARY KEY (liv_isbn);


--
-- TOC entry 1879 (class 2606 OID 25146)
-- Dependencies: 1763 1763
-- Name: pk_ped_registro_transporte; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pedido_transporte
    ADD CONSTRAINT pk_ped_registro_transporte PRIMARY KEY (ped_registro_transporte);


--
-- TOC entry 1876 (class 1259 OID 25147)
-- Dependencies: 1763
-- Name: fki_cpf; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_cpf ON pedido_transporte USING btree (ped_cpf);


--
-- TOC entry 1867 (class 1259 OID 25148)
-- Dependencies: 1757
-- Name: fki_endereco; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_endereco ON cliente USING btree (cli_id_endereco);


--
-- TOC entry 1877 (class 1259 OID 25149)
-- Dependencies: 1763
-- Name: fki_isbn; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_isbn ON pedido_transporte USING btree (ped_isbn);


--
-- TOC entry 1889 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-07-02 00:54:16

--
-- PostgreSQL database dump complete
--