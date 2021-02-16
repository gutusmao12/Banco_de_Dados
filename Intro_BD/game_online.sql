CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe (
classe VARCHAR(45),
id_classe INT NOT NULL,
habilidade VARCHAR(20),
PRIMARY KEY (id_classe)
);

INSERT INTO db_generation_game_online.tb_classe (classe, id_classe, habilidade)
VALUES
('arqueiro', 1, 'vento'),
('guerreiro', 2, 'terra'),
('mago', 3, 'água'),
('cavaleiro', 4, 'terra'),
('feiticeiro', 5, 'fogo');

CREATE TABLE tb_personagem (
nome VARCHAR(45),
genero VARCHAR(20),
poder_ataque INT NOT NULL,
poder_defesa INT NOT NULL,
ultimate INT NOT NULL,
fk_id_classe INT NOT NULL,
PRIMARY KEY(nome)
);

INSERT INTO db_generation_game_online.tb_personagem (nome, genero, poder_ataque, poder_defesa, ultimate, fk_id_classe)
VALUES
('Ashe', 'feminino', 1900, 300, 3000, 1),
('Veigar', 'masculino', 2000, 300, 5000, 3),
('Sejuani', 'feminino', 1500, 800, 3000, 4),
('Garen', 'masculino', 1700, 500, 3500, 2),
('Leblanc', 'feminino', 2500, 150, 5500, 5),
('Brand', 'masculino', 2300, 250, 4800, 3),
('Leona', 'feminino', 800, 2000, 1500, 2);

SELECT * FROM db_generation_game_online.tb_personagem
WHERE poder_ataque > 2000;

UPDATE db_generation_game_online.tb_personagem
SET poder_defesa = 1800
WHERE nome = 'Leona';

UPDATE db_generation_game_online.tb_personagem
SET poder_defesa = 1100
WHERE nome = 'Garen';

SELECT * FROM db_generation_game_online.tb_personagem;

SELECT * FROM db_generation_game_online.tb_personagem
WHERE poder_defesa >1000 and poder_defesa < 2000;

UPDATE db_generation_game_online.tb_personagem
SET nome = 'Cassiopeia'
WHERE nome = 'Leblanc';

SELECT * FROM tb_personagem
WHERE nome LIKE 'C%';

SELECT * FROM tb_classe
INNER JOIN tb_personagem ON tb_classe.id_classe = tb_personagem.fk_id_classe
GROUP BY tb_personagem.nome;

SELECT * FROM tb_personagem 
WHERE fk_id_classe = 3;
