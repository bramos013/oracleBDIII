CREATE TABLE alunos(
    id_aluno number(6) NOT NULL,
    cpf number(11) NOT NULL UNIQUE,
    nome varchar(100) NOT NULL,
    sexo char(1),
    data_nascimento date,
    CONSTRAINT pk_aluno PRIMARY KEY (id_aluno)
);

CREATE TABLE treinos(
    id_treino number(8) NOT NULL,
    id_aluno number(6) NOT NULL,
    id_professor number(4) NOT NULL,
    data_inicio date NOT NULL,
    data_termino date NOT NULL,
    CONSTRAINT pk_treino PRIMARY KEY (id_treino)
);

CREATE TABLE series(
    id_serie char(1) NOT NULL,
    num_repeticoes number(2) NOT NULL,
    carga VARCHAR(5) NOT NULL,
    descanso number(2),
    descricao varchar(500),
    CONSTRAINT pk_serie PRIMARY KEY (id_serie) 
);

CREATE TABLE treinos_series(
    id_treino number (8) not null,
    id_serie char (1) not null,
    CONSTRAINT pk_treinos_series PRIMARY KEY (id_treino, id_serie)
);

CREATE TABLE avaliacoes(
    id_avaliacao number(7) NOT NULL,
    id_aluno number(6) NOT NULL,
    id_professor number (4) NOT NULL,
    data date NOT NULL,
    peso number(4,1) NOT NULL,
    altura number(3,2) NOT NULL,
    imc number(3,1) NULL,    
    perimetro_cintura number(3) NOT NULL,
    perimetro_biceps number(3) NOT NULL,
    perimetro_peito number(3) NOT NULL,    
    perimetro_quadriceps number(3) NOT NULL,
    CONSTRAINT pk_avaliacao PRIMARY KEY (id_avaliacao)
);

CREATE TABLE professores(
    id_professor number(4) NOT NULL,
    nome varchar(100) NOT NULL,
    cpf number(11) NOT NULL UNIQUE,
    sexo char(1),
    CONSTRAINT pk_professor PRIMARY KEY (id_professor)
);

CREATE TABLE aparelhos(
    id_aparelho number(3) NOT NULL,
    nome_aparelho varchar(100) NOT NULL,
    descricao_localizacao varchar(700) NOT NULL,
    foto varchar(500),
    CONSTRAINT pk_aparelho PRIMARY KEY (id_aparelho)
);  

CREATE TABLE series_aparelhos(
    id_serie char (1),
    id_aparelho number (3),
    CONSTRAINT pk_series_aparelhos PRIMARY KEY (id_serie, id_aparelho)
);
        
CREATE TABLE registro_aula(
    id_aluno number(6) NOT NULL,
    id_serie char(1) NOT NULL,
    data_entrada date NOT NULL,
    data_saida date NOT NULL,
    CONSTRAINT pk_registro_aula PRIMARY KEY (id_aluno, id_serie)
);

CREATE TABLE alunos_professores(
    id_professor number(4) NOT NULL,
    id_aluno number(6) NOT NULL,
    CONSTRAINT pk_alunos_professores PRIMARY KEY (id_professor, id_aluno)
);

ALTER TABLE alunos ADD (CONSTRAINT ck_sexo_aluno CHECK(sexo IN ('M', 'F')))
;
ALTER TABLE professores ADD (CONSTRAINT ck_sexo_professor CHECK(sexo IN ('M', 'F')))
;
ALTER TABLE treinos_series ADD (CONSTRAINT fk_id_serie_treinos FOREIGN KEY (id_serie) REFERENCES series (id_serie))
;
ALTER TABLE treinos_series ADD (CONSTRAINT fk_id_treinos_treinos FOREIGN KEY (id_treino) REFERENCES treinos (id_treino))
;
ALTER TABLE treinos ADD (CONSTRAINT fk_aluno_treino FOREIGN KEY(id_aluno) REFERENCES alunos (id_aluno)) 
;
ALTER TABLE treinos ADD (CONSTRAINT fk_professor_treino FOREIGN KEY(id_professor) REFERENCES professores (id_professor)) 
;
ALTER TABLE avaliacoes ADD (CONSTRAINT fk_aluno_avaliacao FOREIGN KEY(id_aluno) REFERENCES alunos (id_aluno))
;
ALTER TABLE avaliacoes ADD (CONSTRAINT fk_professor_avaliação FOREIGN KEY(id_professor) REFERENCES professores (id_professor))
;
ALTER TABLE registro_aula ADD (CONSTRAINT fk_aluno_registro FOREIGN KEY(id_aluno) REFERENCES alunos(id_aluno)) 
;
ALTER TABLE registro_aula ADD (CONSTRAINT fk_serie_registro FOREIGN KEY(id_serie) REFERENCES series (id_serie)) 
;
ALTER TABLE alunos_professores ADD (CONSTRAINT fk_RelAluno_professor FOREIGN KEY(id_aluno) REFERENCES alunos (id_aluno)) 
;
ALTER TABLE alunos_professores ADD (CONSTRAINT fk_RelProfessor_aluno FOREIGN KEY(id_professor) REFERENCES professores(id_professor))    
;
ALTER TABLE series_aparelhos ADD (CONSTRAINT fk_serie_aparelhos FOREIGN KEY (id_serie) REFERENCES series (id_serie))
;
ALTER TABLE series_aparelhos ADD (CONSTRAINT fk_aparelhos_series FOREIGN KEY (id_aparelho) REFERENCES aparelhos (id_aparelho))
;





