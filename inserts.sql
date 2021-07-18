-- Arquivo para inserção dos dados, conforme requisitado no enunciado.

INSERT INTO alunos VALUES(1,33311122233,'Fernando da Costa Silveira','M','01-08-1984');
INSERT INTO alunos VALUES(2,12569788110,'Flávia Bernardes Da Costa', 'F', '10-11-1989');
INSERT INTO alunos VALUES(3,25411169420,'André da Costa Loureiro','M','02-03-1992');
INSERT INTO alunos VALUES(4,11158436110,'Bibiana Farias Azeverg','F','03-09-1988');
INSERT INTO alunos VALUES(5,58911347561,'Abigail De Moro','F','09-04-1980');
INSERT INTO alunos VALUES(6,15614781211,'Ataide Azevedo Gonçalves','M','23-10-1979');
INSERT INTO alunos VALUES(7,15434761244,'Matheus Barbosa De Agostin','M','11-10-1992');
INSERT INTO alunos VALUES(8,58641047811,'Matheus Arthur Quevedo','M','15-06-1970');
INSERT INTO alunos VALUES(9,87812417124,'Ana Garcia','F','14-07-2000');
INSERT INTO alunos VALUES(10,54671347911,'Jorge José Bahia','M','10-11-2002');
INSERT INTO alunos VALUES(11,89779101465,'Michele Silva','F','01-01-1999');

INSERT INTO professores VALUES (1,'João Benedito da Luz',54756912711,'M');
INSERT INTO professores VALUES (2,'Armando Nogueira',54862178411,'F');
INSERT INTO professores VALUES (3,'Matheus Cubas',11247136747,'M');
INSERT INTO professores VALUES (4,'Guilherme Cubas',57852130100,'M');
INSERT INTO professores VALUES (5,'Amanda Neves',17856121478,'F');
INSERT INTO professores VALUES (6,'Franco Zanchi',47284551344,'M');
INSERT INTO professores VALUES (7,'Roberto Nogueira',57812357811,'M');
INSERT INTO professores VALUES (8,'Hans da Luz',45167822612,'M');
INSERT INTO professores VALUES (9,'Talles Azevedo',12341312452,'M');
INSERT INTO professores VALUES (10,'Luiza Callegaro',01212212454,'F');
INSERT INTO professores VALUES (11,'Bettina Silva',54554545466,'F');
INSERT INTO professores VALUES (12,'Pamela da Fonseca',65656565651,'F');
INSERT INTO professores VALUES (13,'Caroline Sperotto',87878912141,'F');

INSERT INTO avaliacoes VALUES(1,1,2,'04/01/2020',80,1.79,NULL,90,38,107,45);
INSERT INTO avaliacoes VALUES(2,2,3,'02/01/2020',60,1.65,NULL,50,28,75,30);
INSERT INTO avaliacoes VALUES(3,3,7,'01/01/2020',79,1.80,NULL,70,35,100,40);
INSERT INTO avaliacoes VALUES(4,4,8,'01/01/2020',65,1.62,NULL,60,29,70,35);
INSERT INTO avaliacoes VALUES(5,5,9,'03/01/2020',70,1.70,NULL,80,30,80,40);
INSERT INTO avaliacoes VALUES(6,6,11,'15/01/2020',90,1.82,NULL,101,38,100,45);
INSERT INTO avaliacoes VALUES(7,7,3,'10/01/2020',85,1.85,NULL,90,35,90,40);
INSERT INTO avaliacoes VALUES(8,9,4,'04/01/2020',65,1.55,NULL,59,27,70,35);
INSERT INTO avaliacoes VALUES(9,8,5,'04/01/2020',82,1.73,NULL,71,34,99,40);
INSERT INTO avaliacoes VALUES(10,10,1,'11/01/2020',110,1.90,NULL,120,41,105,60);
INSERT INTO avaliacoes VALUES(11,11,12,'10/01/2020',59,1.59,NULL,50,25,70,32);
INSERT INTO avaliacoes VALUES(12,3,6,'05/06/2020',75,1.80,NULL,64,34,86,32);

INSERT INTO alunos_professores values (1,2);
INSERT INTO alunos_professores values (2,10);
INSERT INTO alunos_professores values (3,4);
INSERT INTO alunos_professores values (4,6);
INSERT INTO alunos_professores values (5,7);
INSERT INTO alunos_professores values (6,8);
INSERT INTO alunos_professores values (7,9);
INSERT INTO alunos_professores values (8,1);
INSERT INTO alunos_professores values (9,3);
INSERT INTO alunos_professores values (10,11);
INSERT INTO alunos_professores values (11,11);
INSERT INTO alunos_professores values (12,10);
INSERT INTO alunos_professores values (7,8);
INSERT INTO alunos_professores values (8,8);
INSERT INTO alunos_professores values (9,7);
INSERT INTO alunos_professores values (6,6);
INSERT INTO alunos_professores values (2,5);
INSERT INTO alunos_professores values (4,4);
INSERT INTO alunos_professores values (9,4);

INSERT INTO aparelhos values (1, 'Leg Press', 'O aparelho tem como finalidade exercitar as pernas e sua localização está na entrada da academia.','https://obruno.site/fotos/legpress.jpeg');
INSERT INTO aparelhos values (2, 'Supino-Banco','Utiliza-se o banco para realização de supino, que é exercitar os músculos peitorais. Posição deitada. Está localizado no fundo da academia.','https://obruno.site/fotos/supinobanco.jpeg');
INSERT INTO aparelhos values (3, 'Supino-Máquina','Utiliza-se a máquina de supino para exercitar os músculos peitorais. Posição sentada. Está localizado ao lado do Supino-Banco.','https://obruno.site/fotos/supinomaquina.jpeg');
INSERT INTO aparelhos values (4, 'Voador','Utiliza-se a máquina para exercitar os músculos peitorais. Posição sentada. Está localizado no fundo da academia.','https://obruno.site/fotos/voador.jpeg');
INSERT INTO aparelhos values (5, 'Abdominal','Utiliza-se a máquina para exercitar os músculos do abdomem. Posição sentada. Está localizado no meio da academia.','https://obruno.site/fotos/abdominal.jpeg');
INSERT INTO aparelhos values (6, 'Remada Alta','O aparelho deve ser utilizado para exercitar os músculos das costas. Posição sentada com os braços acima da cabeça. Está localizado na entrada da academia.','https://obruno.site/fotos/remAlta.jpeg');
INSERT INTO aparelhos values (7, 'Remada Baixa','O aparelho deve ser utilizado para exercitar os músculos das costas. Posição sentada com os braços na linha do peito. Está localizado ao lado do aparelho de Remada Alta.','https://obruno.site/fotos/remBaixa.jpeg');
INSERT INTO aparelhos values (8,'Cadeira Extensora','O aparelho é utilizado para exercitar os músculos posteriores das pernas. Posição sentada. Está localizado na entrada da academia.','https://obruno.site/fotos/ExtensFlexora.jpeg');
INSERT INTO aparelhos values (9,'Cadeira Flexora','O aparelho é utilizado para exercitar os músculos inferiores das pernas. Posição sentada. Está localizado ao lado do aparelho Cadeira Extensora.','https://obruno.site/fotos/ExtensFlexora.jpeg');
INSERT INTO aparelhos values (10,'Crossover','O aparelho é utilizado para exercitar os músculos do peito. Posição de pé, levando os braços à altura do peito. Está localizado no fundo da academia.','https://obruno.site/fotos/Cross.jpeg');
INSERT INTO aparelhos values (11,'Ombro','O aparelho é utilizado para exercitar os ombros. Posição sentado, levando os braços acima da cabeça. Está localizado no meio da academia.','https://obruno.site/fotos/ombro.jpeg');
INSERT INTO aparelhos values (12,'Extensor Lombar','O aparelho é utilizado para exercitar a lombar. Posição de pé na vertical, braços junto ao peito, descendo e elevando o corpo. Está localizado no meio da academia.','https://obruno.site/fotos/extensLombar.jpeg');

INSERT INTO series values ('A', 30, '1kg', 45, 'Trinta repetições com peso de 1kg e descanso de 45s.');
INSERT INTO series values ('B', 10, '8kg', 45, 'Dez repetições com peso de 8kg e descanso de 45s');
INSERT INTO series values ('C', 12, '12kg', 45, 'Doze repetições com peso de 12kg e descanso de 45s');
INSERT INTO series values ('D', 15, '10kg', 45, 'Quinze repetições com peso de 10kg e descanso de 45s.');
INSERT INTO series values ('E', 15, '12kg', 45, 'Quinze repetições com peso de 12kg e descanso de 45s');
INSERT INTO series values ('F', 12, '10kg', 45, 'Doze repetições com peso de 10kg e descanso de 45s.');
INSERT INTO series values ('G', 12, '20kg', 45, 'Doze repetições com peso de 20kg e decanso de 45s.');
INSERT INTO series values ('H', 30, '1kg', 45, 'Trinta repetições com peso de 1kg e descanso de 45s.');
INSERT INTO series values ('I', 15, '8kg', 45, 'Quinze repetições com peso de 8kg e descanso de 45s.');
INSERT INTO series values ('J', 15, '5kg', 45, 'Quinze repetições com peso de 5kg e descanso de 45s.');
INSERT INTO series values ('K', 15, '15kg', 45, 'Quinze repetições compeso de 15kg e descanso de 45s.');
INSERT INTO series values ('L', 15, '20kg', 45, 'Quinze repetições com peso de 20kg e descanso de 45s.');

INSERT INTO treinos values (1,2,1,'03/02/2020','03/02/2020');
INSERT INTO treinos values (2,10,2,'01/02/2020','01/02/2020');
INSERT INTO treinos values (3,4,3,'12/02/2020','12/02/2020');
INSERT INTO treinos values (4,6,4,'11/02/2020','11/02/2020');
INSERT INTO treinos values (5,7,5,'05/02/2020','05/02/2020');
INSERT INTO treinos values (6,8,6,'07/02/2020','07/02/2020');
INSERT INTO treinos values (7,9,7,'02/02/2020','02/02/2020');
INSERT INTO treinos values (8,1,8,'22/02/2020','02/02/2020');
INSERT INTO treinos values (9,3,9,'25/02/2020','25/02/2020');
INSERT INTO treinos values (10,11,10,'11/02/2020','11/02/2020');
INSERT INTO treinos values (11,11,11,'21/02/2020','21/02/2020');
INSERT INTO treinos values (12,10,12,'21/02/2020','21/02/2020');
INSERT INTO treinos values (13,8,7,'28/02/2020','28/02/2020');
INSERT INTO treinos values (14,8,8,'09/02/2020','09/02/2020');
INSERT INTO treinos values (15,7,9,'07/02/2020','07/02/2020');
INSERT INTO treinos values (16,6,6,'07/02/2020','07/02/2020');
INSERT INTO treinos values (17,5,2,'04/02/2020','04/02/2020');
INSERT INTO treinos values (18,4,4,'02/02/2020','02/02/2020');
INSERT INTO treinos values (19,9,4,'02/02/2020','02/02/2020');

INSERT INTO series_aparelhos VALUES ('A',5);
INSERT INTO series_aparelhos VALUES ('A',12);
INSERT INTO series_aparelhos VALUES ('B',11);
INSERT INTO series_aparelhos VALUES ('C',2);
INSERT INTO series_aparelhos VALUES ('C',10);
INSERT INTO series_aparelhos VALUES ('D',3);
INSERT INTO series_aparelhos VALUES ('E',2);
INSERT INTO series_aparelhos VALUES ('F',6);
INSERT INTO series_aparelhos VALUES ('F',7);
INSERT INTO series_aparelhos VALUES ('G',1);
INSERT INTO series_aparelhos VALUES ('H',11);
INSERT INTO series_aparelhos VALUES ('I',9);
INSERT INTO series_aparelhos VALUES ('J',11);
INSERT INTO series_aparelhos VALUES ('K',10);
INSERT INTO series_aparelhos VALUES ('L',2);

INSERT INTO treinos_series VALUES(1,'A');
INSERT INTO treinos_series VALUES(2,'B');
INSERT INTO treinos_series VALUES(3,'C');
INSERT INTO treinos_series VALUES(4,'D');
INSERT INTO treinos_series VALUES(5,'E');
INSERT INTO treinos_series VALUES(6,'F');
INSERT INTO treinos_series VALUES(7,'G');
INSERT INTO treinos_series VALUES(8,'H');
INSERT INTO treinos_series VALUES(9,'I');
INSERT INTO treinos_series VALUES(10,'J');
INSERT INTO treinos_series VALUES(11,'K');
INSERT INTO treinos_series VALUES(12,'L');
INSERT INTO treinos_series VALUES(13,'B');
INSERT INTO treinos_series VALUES(14,'C');
INSERT INTO treinos_series VALUES(15,'E');
INSERT INTO treinos_series VALUES(16,'I');
INSERT INTO treinos_series VALUES(17,'L');
INSERT INTO treinos_series VALUES(18,'B');
INSERT INTO treinos_series VALUES(19,'A');
INSERT INTO treinos_series values(1,'B');
INSERT INTO treinos_series values(2,'C');

INSERT INTO registro_aula VALUES (11,'A',TO_DATE('02/03/2020 14:03:04','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02/03/2020 16:10:00','DD-MM-YYYY HH24:MI:SS'));
INSERT INTO registro_aula VALUES (10,'B',TO_DATE('10/03/2020 15:30:10','DD-MM-YYYY HH24:MI:SS'),TO_DATE('10/03/2020 16:15:20','DD-MM-YYYY HH24:MI:SS'));
INSERT INTO registro_aula VALUES (9, 'C',TO_DATE('01/05/2020 20:10:05','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01/05/2020 22:10:10','DD-MM-YYYY HH24:MI:SS'));
INSERT INTO registro_aula VALUES (8, 'D',TO_DATE('22/03/2020 12:01:20','DD-MM-YYYY HH24:MI:SS'),TO_DATE('22/03/2020 13:00:07','DD-MM-YYYY HH24:MI:SS'));
INSERT INTO registro_aula VALUES (7, 'E',TO_DATE('22/03/2020 15:10:10','DD-MM-YYYY HH24:MI:SS'),TO_DATE('22/03/2020 17:10:10','DD-MM-YYYY HH24:MI:SS'));
INSERT INTO registro_aula VALUES (6, 'F',TO_DATE('30/03/2020 07:02:30','DD-MM-YYYY HH24:MI:SS'),TO_DATE('30/03/2020 08:04:10','DD-MM-YYYY HH24:MI:SS'));
INSERT INTO registro_aula VALUES (5, 'H',TO_DATE('02/04/2020 22:00:20','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02/04/2020 23:00:00','DD-MM-YYYY HH24:MI:SS'));
INSERT INTO registro_aula VALUES (4, 'H',TO_DATE('04/04/2020 09:00:24','DD-MM-YYYY HH24:MI:SS'),TO_DATE('04/04/2020 10:20:10','DD-MM-YYYY HH24:MI:SS'));
INSERT INTO registro_aula VALUES (3, 'I',TO_DATE('10/04/2020 23:00:23','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02/04/2020 23:45:08','DD-MM-YYYY HH24:MI:SS'));
INSERT INTO registro_aula VALUES (2, 'K',TO_DATE('15/04/2020 13:10:10','DD-MM-YYYY HH24:MI:SS'),TO_DATE('15/04/2020 15:30:10','DD-MM-YYYY HH24:MI:SS'));
INSERT INTO registro_aula VALUES (1, 'K',TO_DATE('20/04/2020 14:15:20','DD-MM-YYYY HH24:MI:SS'),TO_DATE('20/04/2020 17:10:10','DD-MM-YYYY HH24:MI:SS'));
INSERT INTO registro_aula VALUES (2, 'I',TO_DATE('03/05/2020 12:00:30','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03/05/2020 17:10:00','DD-MM-YYYY HH24:MI:SS'));
INSERT INTO registro_aula VALUES (3, 'H',TO_DATE('15/05/2020 22:30:30','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03/05/2020 23:00:40','DD-MM-YYYY HH24:MI:SS'));
INSERT INTO registro_aula VALUES (4, 'C',TO_DATE('22/05/2020 10:30:40','DD-MM-YYYY HH24:MI:SS'),TO_DATE('22/05/2020 12:00:20','DD-MM-YYYY HH24:MI:SS'));
INSERT INTO registro_aula VALUES (5, 'A',TO_DATE('01/06/2020 19:40:10','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01/06/2020 21:15:10','DD-MM-YYYY HH24:MI:SS'));





















