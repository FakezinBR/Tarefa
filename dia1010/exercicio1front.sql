drop database vendas
CREATE DATABASE vendas;
USE vendas;

CREATE TABLE tbl_produto (
    pro_ID INT PRIMARY KEY AUTO_INCREMENT,
    pro_descricao VARCHAR(50),
    pro_preco FLOAT
);

CREATE TABLE tbl_nota_fiscal (
    not_ID INT PRIMARY KEY AUTO_INCREMENT,
    not_valor FLOAT
);

CREATE TABLE tbl_itens (
    ite_produto_cod_prod INT,
    ite_nota_fiscar_num_nf INT,
    ite_numero INT PRIMARY KEY,
    ite_quantidade INT
);

ALTER TABLE tbl_produto MODIFY pro_descricao VARCHAR(50);
ALTER TABLE tbl_nota_fiscal ADD ICMS FLOAT AFTER not_ID;
ALTER TABLE tbl_produto ADD pro_peso FLOAT;
ALTER TABLE tbl_itens DROP PRIMARY KEY, ADD PRIMARY KEY (ite_numero);
ALTER TABLE tbl_nota_fiscal CHANGE not_valor not_valor_total FLOAT;
DROP TABLE IF EXISTS tbl_itens;
ALTER TABLE tbl_nota_fiscal RENAME TO tbl_venda;

DESCRIBE tbl_produto;
DESCRIBE tbl_venda;