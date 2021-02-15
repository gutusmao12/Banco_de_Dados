-- DML (Linguagem de manipulação de dados)
-- INSERT
-- UPDATE
-- DELETE
-- SELECT

-- INSERT
INSERT INTO db_restaurante.tb_funcionarios (nome, sobrenome, email, data_inicio, salario)
VALUES
('Pamela', 'Souza', 'pamela@email.com', '2020-02-01', 2100.6),
('Marcos', 'Carlos', 'marcos@email.com', '2020-07-01', 1500.8),
('Francisco', 'Onorio', 'fancisco@email.com', '2020-08-01', 1500.8),
('Fabio', 'Souza', 'fabio@email.com', '2020-03-01', 1500.8),
('Fabiana', 'Simões', 'fabiana@email.com', '2020-01-01', 2800.3);

INSERT INTO db_restaurante.tb_produtos (nome_prato,descricao_prato)
VALUES
('Macarronada Tradicional','Macarronada tradicional ao molho de tomate'),
('Macarronada Branca','Macarronada ao molho branco'),
('Lazanha de Frango','Lazanha de franco ao molho de alcaparras'),
('Inhoque','Inhoque da nona ao molho de tomate'),
('Macarronada ao Alho','Macarronada ao alho com fatias de salmão');

INSERT INTO db_restaurante.tb_vendas (descricao, tb_funcionarios_id_funcionario, tb_produtos_id_produto)
VALUES
('Mesa 11',1,2),
('Mesa 10',2,3),
('Mesa 10',2,3),
('Mesa 12',3,4),
('Mesa 12',3,5);

-- SELECT
SELECT * FROM db_restaurante.tb_funcionarios;
SELECT * FROM db_restaurante.tb_produtos;
SELECT * FROM db_restaurante.tb_vendas;

SELECT nome, sobrenome
FROM db_restaurante.tb_funcionarios
ORDER BY nome ASC, sobrenome DESC;  -- Ordena pelo nome de forma crescente (DESC - Decrescente)

SELECT salario
FROM db_restaurante.tb_funcionarios
GROUP BY salario; -- Agrupa todos os valores iguais

-- UPDATE
UPDATE db_restaurante.tb_funcionarios
SET salario = 5000.6
WHERE id_funcionario = 4;

SET SQL_SAFE_UPDATES = 0; -- Configuração para salvar com clausulas WHERE diferente de ID
UPDATE db_restaurante.tb_funcionarios
SET salario = 5000.6
WHERE nome = "Fabiana";

UPDATE db_restaurante.tb_funcionarios
SET salario = 10000.5; -- Atualiza toda a coluna salario

-- DELETE
DELETE FROM db_restaurante.tb_funcionarios
WHERE email = 'fabio@email.com';

DELETE FROM db_restaurante.tb_funcionarios; -- Deleta todos os funcionarios