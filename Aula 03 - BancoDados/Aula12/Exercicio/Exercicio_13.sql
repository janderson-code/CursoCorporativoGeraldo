USE Academico


-- Lista Exerc�cios (06)

CREATE TABLE tb_mulher(
id_mulher               INTEGER,
nome_mulher             VARCHAR(10),
CONSTRAINT pk_tb_mulher_id_mulher PRIMARY KEY(id_mulher)
);

 

CREATE TABLE tb_homem(
id_homem                INTEGER,
nome_homem              VARCHAR(10),
id_mulher               INTEGER,
CONSTRAINT pk_tb_homem_id_homem PRIMARY KEY(id_homem),
CONSTRAINT fk_tb_homem_id_mulher FOREIGN KEY(id_mulher)
     REFERENCES tb_mulher(id_mulher)
);

 

-- Item (1)

INSERT INTO tb_mulher(id_mulher, nome_mulher)
VALUES
(1, 'Edna'),
(2, 'Stefanny'),
(3, 'C�ssia');
 
INSERT INTO tb_homem(id_homem, nome_homem, id_mulher)
VALUES
(10, 'Anderson', NULL),
(20, 'Jander', 1),
(30, 'Rog�rio', 2);
 
SELECT *
FROM tb_homem;

 

-- Item (3)
-- (A)
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h, tb_mulher m
WHERE h.id_mulher = m.id_mulher;

 

-- (B) -- N�O EXISTE NATURAL JOIN NO SQL SERVER, MAS EST� AI PARA FINS DIDATICOS E PONTUA��O DA PROVA
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h
NATURAL JOIN tb_mulher m;

 

-- (C) -- N�O EXISTE USING NO SQL SERVER, MAS EST� AI PARA FINS DIDATICOS E PONTUA��O DA PROVA
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h
INNER JOIN tb_mulher m USING(id_mulher);


-- (D)
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h
INNER JOIN tb_mulher m ON(h.id_mulher = m.id_mulher);


-- (E)
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h, tb_mulher m;

 

SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h
CROSS JOIN tb_mulher m;


-- (4)
-- (A)
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h
LEFT JOIN tb_mulher M ON (h.id_mulher = m.id_mulher)

-- (B)
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h
RIGHT JOIN tb_mulher M ON (h.id_mulher = m.id_mulher)

-- (C) N�O EXISTE NATURAL JOIN NO SQL SERVER, MAS EST� AI PARA FINS DIDATICOS E PONTUA��O DA PROVA
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h
NATURAL LEFT OUTER JOIN tb_mulher m;

 

-- (D) N�O EXISTE NATURAL JOIN NO SQL SERVER, MAS EST� AI PARA FINS DIDATICOS E PONTUA��O DA PROVA
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h
NATURAL RIGHT OUTER JOIN tb_mulher m;

 

-- (E) N�O EXISTE USING NO SQL SERVER, MAS EST� AI PARA FINS DIDATICOS E PONTUA��O DA PROVA
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h
LEFT OUTER JOIN tb_mulher m USING(id_mulher);

 
-- (E) N�O EXISTE USING NO SQL SERVER, MAS EST� AI PARA FINS DIDATICOS E PONTUA��O DA PROVA
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h 
RIGHT OUTER JOIN tb_mulher m USING(id_mulher);

 
  -- ALTERNATIVA SEM USING
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h
LEFT OUTER JOIN tb_mulher m ON(h.id_mulher = m.id_mulher);

 
  -- ALTERNATIVA SEM USING
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h
RIGHT OUTER JOIN tb_mulher m ON(h.id_mulher = m.id_mulher);

 

-- (F) N�O EXISTE NATURAL JOIN NO SQL SERVER, MAS EST� AI PARA FINS DIDATICOS E PONTUA��O DA PROVA
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h 
NATURAL FULL OUTER JOIN tb_mulher m;

 

-- (G)  N�O EXISTE USING NO SQL SERVER, MAS EST� AI PARA FINS DIDATICOS E PONTUA��O DA PROVA
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h
FULL OUTER JOIN tb_mulher m USING(id_mulher);

 
 -- ALTERNATIVA SEM USING
SELECT h.nome_homem, m.nome_mulher
FROM tb_homem h
FULL OUTER JOIN tb_mulher m ON(h.id_mulher = m.id_mulher);
