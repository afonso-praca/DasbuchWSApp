DROP TABLE IF EXISTS "cliente";
CREATE TABLE "cliente" (
    cli_nome character varying(255) NOT NULL,
    cli_cpf character varying(11) NOT NULL,
    cli_id_endereco integer NOT NULL,
    cli_email character varying(255),
    cli_telefone character(10) NOT NULL
);

DROP TABLE IF EXISTS "endereco";
CREATE TABLE "endereco" (
    end_id serial NOT NULL,
	end_rua character varying(255) NOT NULL,
    end_numero character varying(10) NOT NULL,
	end_complemento character varying(255),
	end_bairro character varying(255) NOT NULL,
    end_cidade character varying(255) NOT NULL,
    end_estado character varying(2) NOT NULL,
    end_cep character varying(8)
);

-- DROP TABLE IF EXISTS "livraria";
-- CREATE TABLE "livraria" (
--     li_id integer NOT NULL,
--     li_nome character varying(255)
-- );

DROP TABLE IF EXISTS "livro";
CREATE TABLE "livro" (
    liv_isbn character varying(255) NOT NULL,
    liv_titulo character varying(255) NOT NULL,
    liv_comprimento double precision NOT NULL,
    liv_largura double precision NOT NULL,
    liv_altura double precision NOT NULL,
    liv_peso double precision NOT NULL,
    liv_editora character varying(255)
);

DROP TABLE IF EXISTS "pedido_transporte";
CREATE TABLE "pedido_transporte" (
    ped_registro_transporte serial NOT NULL,
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

ALTER TABLE ONLY "cliente"
    ADD CONSTRAINT pk_cli_cpf PRIMARY KEY (cli_cpf);

ALTER TABLE ONLY "endereco"
    ADD CONSTRAINT pk_end_id PRIMARY KEY (end_id);

ALTER TABLE ONLY "livraria"
    ADD CONSTRAINT pk_li_id PRIMARY KEY (li_id);

ALTER TABLE ONLY "livro"
    ADD CONSTRAINT pk_liv_isbn PRIMARY KEY (liv_isbn);

ALTER TABLE ONLY "pedido_transporte"
    ADD CONSTRAINT pk_ped_registro_transporte PRIMARY KEY (ped_registro_transporte);

CREATE INDEX fki_cpf ON "pedido_transporte" USING btree (ped_cpf);
CREATE INDEX fki_endereco ON "cliente" USING btree (cli_id_endereco);
--CREATE INDEX fki_id_livraria ON "pedido_transporte" USING btree (ped_id_livraria);
CREATE INDEX fki_isbn ON "pedido_transporte" USING btree (ped_isbn);

--ALTER TABLE ONLY "pedido_transporte"
    --ADD CONSTRAINT fk_cpf FOREIGN KEY (ped_cpf) REFERENCES "cliente"(cli_cpf);
--ALTER TABLE ONLY "cliente"
    --ADD CONSTRAINT fk_endereco FOREIGN KEY (cli_id_endereco) REFERENCES "endereco"(end_id);
--ALTER TABLE ONLY "pedido_transporte"
--    ADD CONSTRAINT fk_id_livraria FOREIGN KEY (ped_id_livraria) REFERENCES "livraria"(li_id);
--ALTER TABLE ONLY "pedido_transporte"
    --ADD CONSTRAINT fk_isbn FOREIGN KEY (ped_isbn) REFERENCES "livro"(liv_isbn);