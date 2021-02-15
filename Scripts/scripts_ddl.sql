-- DDL (Linguagem de definição de dados)
-- CREATE
-- ALTER
-- DROP

-- CREATE
CREATE DATABASE db_novo;
USE db_novo; -- Seta um Banco para ser usado

CREATE TABLE tb_nova1 (
    coluna1_tb1 INT NOT NULL,
    coluna2_tb1 VARCHAR(255) DEFAULT 'Boaz',
    UNIQUE (coluna1_tb1),
    PRIMARY KEY (coluna1_tb1)
);

CREATE TABLE tb_nova2 (
    coluna1_tb2 INT NOT NULL,
    coluna2_tb2 INT,
    coluna3_tb2 VARCHAR(255),
    coluna4_tb2 VARCHAR(255),
    PRIMARY KEY (coluna1_tb2)
);

CREATE TABLE tb_nova3 (
    coluna1_tb3 INT NOT NULL,
    coluna2_tb3 VARCHAR(255),
    fk_coluna1_tb1 INT,
    PRIMARY KEY (coluna1_tb3),
    FOREIGN KEY (fk_coluna1_tb1) REFERENCES tb_nova1(coluna1_tb1)
);

-- ALTER
ALTER TABLE tb_nova1
ADD coluna3_tb1 varchar(255); -- Adciona coluna

ALTER TABLE tb_nova2
DROP COLUMN coluna4_tb2; -- Apaga coluna

ALTER TABLE tb_nova2
MODIFY COLUMN coluna2_tb2 varchar(255); -- Modifica coluna

-- DROP
DROP TABLE tb_nova3;
DROP TABLE tb_nova2;
DROP TABLE tb_nova1;

DROP DATABASE db_novo;
