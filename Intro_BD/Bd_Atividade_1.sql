CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_rh(
idFuncionario INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) DEFAULT 'Gustavo',
funcional INT NOT NULL,
salario INT NOT NULL,
UNIQUE (idFuncionario),
PRIMARY KEY (idFuncionario)
);

INSERT INTO db_rh.tb_rh (idFuncionario, nome, funcional, dataInicio, salario)
VALUES
('1', 'Gustavo', 11089616, 1800),
('2', 'Matheus', 11089617, 2600),
('3', 'Lucas', 11089618, 3000),
('4', 'Kleber', 11089619, 1400),
('5', 'Gilmar', 11089620, 5000);

SELECT * FROM db_rh.tb_rh;
SELECT * FROM db_rh.tb_rh WHERE salario > 2000;
SELECT * FROM db_rh.tb_rh WHERE salario < 2000;

UPDATE db_rh.tb_rh
SET salario = 4000
WHERE idFuncionario = '1';

SELECT * FROM db_rh.tb_rh;


