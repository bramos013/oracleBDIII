
-- Consultas b�sicas da tabelas criadas para verifica��o dos dados inseridos.

SELECT * FROM alunos;
SELECT * FROM aparelhos;
SELECT * FROM series;
SELECT * FROM treinos;
SELECT * FROM alunos_professores;
SELECT * FROM avaliacoes;
SELECT * FROM registro_aula;
SELECT * FROM treinos_series;
SELECT * FROM series_aparelhos;
SELECT * FROM professores;


-- 1)Consultas envolvendo, no conjunto, necessariamente os comandos distinct, order by e fun��es de manipula��o de datas, em qualquer combina��o;
-- a)Quais foram os dias que os alunos compareceram � academia? Qual o hor�rio de entrada e sa�da da academia nesses dias? 
SELECT a.id_aluno "Cod Aluno", a.nome "Nome do Aluno", TO_CHAR(data_entrada, 'DD,MM,YYYY HH24:MI:SS' )"Entrada", TO_CHAR(data_saida, 'DD,MM,YYYY HH24:MI:SS')"Saida"
FROM alunos a 
    JOIN registro_aula ra ON ( a.id_aluno = ra.id_aluno)
ORDER BY a.nome;

-- b)Quantos aparelhos est�o cadastrados no sistema da academia?
SELECT COUNT (*) "Total Aparelhos" FROM aparelhos;

-- c)Quantos alunos est�o cadastrados no sistema da academia?
SELECT COUNT (*) "Total Alunos" FROM alunos;

-- d)Algum aluno possui o nome Matheus?
SELECT a.id_aluno "Cod Aluno", a.nome "Aluno" 
FROM alunos a 
WHERE a.nome LIKE 'Matheus%';

-- r)Quais os alunos possuem 18, 21 e 40 anos de idade?
SELECT nome, round((to_date(sysdate) - to_date(data_nascimento))/365) "Idade" 
FROM alunos
WHERE round((to_date(sysdate) - to_date(data_nascimento))/365) in (18,21,40);

-- f)Quais foram os alunos que compareceram na academia em mar�o desse ano?
SELECT DISTINCT a.nome "Nome do Aluno", TO_CHAR(data_entrada, 'MONTH')"M�s" 
FROM alunos a 
    JOIN registro_aula ra ON ( a.id_aluno = ra.id_aluno) 
WHERE TO_CHAR(data_entrada, 'MONTH') LIKE '%MAR�O%';

-- 2)3 consultas envolvendo, no conjunto, jun��es entre 2, 3 e 4 tabelas, incluindo pelo uma com outer join;
-- a) Quais os alunos que os professores atendem? Indique o nome do Professor mesmo que ele n�o atenda nenhum aluno.
SELECT  p.id_professor "Cod Professor",p.nome "Professor", a.nome "Aluno" 
FROM alunos a
    RIGHT OUTER JOIN alunos_professores ap ON (a.id_aluno = ap.id_aluno)
    RIGHT OUTER JOIN professores p ON (ap.id_professor = p.id_professor)
ORDER BY p.nome;

-- b)Qual ou quais os treinos que a Aluna Abigail realizou? Indique o aparelho, a carga, n�mero de repeti��es e as datas que os treinos foram prescritos.
SELECT t.id_treino "Cod Treino", a.nome "Aluno", apa.nome_aparelho "Aparelho", S.CARGA "Carga", s.num_repeticoes "Tot Repeti�oes", t.data_inicio "Inicio", t.data_termino "Termino"
FROM APARELHOS apa
    JOIN series_aparelhos sapa ON (apa.id_aparelho = sapa.id_aparelho)
    JOIN SERIES S ON (SAPA.ID_SERIE = S.ID_SERIE)
    JOIN TREINOS_SERIES TS ON (S.ID_SERIE = TS.ID_SERIE)
    JOIN TREINOS T ON (TS.ID_TREINO = T.ID_TREINO)
    JOIN ALUNOS A ON (T.ID_ALUNO = T.ID_ALUNO)
WHERE a.nome  LIKE 'Abigail%'  
ORDER BY t.id_treino;

-- c)Quais as avalia��es que os professores realizaram? Indique a data e o nome do aluno.
SELECT p.nome "Professor", a.nome "Aluno", av.id_avaliacao "Cod Avalia�ao", av.data "Data", av.peso "Peso", av.altura "Altura"
FROM professores p
		JOIN avaliacoes av ON (p.id_professor = av.id_professor)
		JOIN alunos a ON (av.id_aluno = a.id_aluno);

-- d)Quais s�o as s�ries constantes no treino de n�mero 1? Indique a descri��o, repeti��es, carga, descanso, aparelho e a descri��o do aparelho.
SELECT t.id_treino "Treino", s.id_serie "S�ries", s.descricao "Descri��o da s�rie", s.num_repeticoes "N� de repeti��es", s.carga "Carga", apa.nome_aparelho "Aparelho", apa.descricao_localizacao "Descri��o e localiza��o"
FROM TREINOS T
    JOIN TREINOS_SERIES TS ON (T.ID_TREINO = TS.ID_TREINO)
    JOIN SERIES S ON (TS.ID_SERIE = S.ID_SERIE)
    JOIN SERIES_APARELHOS SA ON (S.ID_SERIE = SA.ID_SERIE)
    JOIN APARELHOS APA ON (SA.ID_APARELHO = APA.ID_APARELHO)
    WHERE T.ID_TREINO = 1;
    
-- 3) 2 consultas envolvendo fun��es de agrega��o com group by e having;
-- a)Quais os alunos que possuem mais de um professor?
SELECT a.nome "Aluno",COUNT(*) AS "Total professores" 
FROM alunos a
    JOIN alunos_professores ap ON (a.id_aluno = ap.id_aluno)
    JOIN professores p ON (ap.id_professor = p.id_professor)
GROUP BY a.nome 
HAVING COUNT(*) >=2;

-- b)Qual a quantidade de treinos que cada aluno tem
SELECT a.nome, count (*) qtd
FROM ALUNOS A
    JOIN TREINOS T ON (A.ID_ALUNO = T.ID_ALUNO)
    JOIN TREINOS_SERIES TS ON (T.ID_TREINO = TS.ID_TREINO)
    JOIN SERIES S ON (TS.ID_SERIE = S.ID_SERIE)
GROUP BY a.nome;
























