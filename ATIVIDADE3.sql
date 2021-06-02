/* TERCEIRA ATIVIDADE DE PROJETO DE BANCO DE DADOS*/


/*QUESTÃO 1*/

DELIMITER $$
CREATE PROCEDURE insere_aluno(IN cod_curso INTEGER,IN dat_nasc DATE,IN tot_cred INTEGER,IN mgp DOUBLE,IN nom_alun VARCHAR(60),IN email VARCHAR(30)) 
 BEGIN
	INSERT INTO aluno (cod_curso, dat_nasc, tot_cred, mgp, nom_alun, email)
    values (cod_curso, dat_nasc, tot_cred, mgp, nom_alun, email);
    if row_count() = 1 then
    select nom_alun from aluno;
    end if;
 END $$
 DELIMITER ;
 
 call insere_aluno(5, '2000-10-5', 60, 8.75, 'thiago', 'thiagotw10@hotmail.com');

/*FIM DA QUESTÃO 1*/

/*---------------------------------------------------*/

/*QUESTÃO 2*/

DELIMITER //
CREATE PROCEDURE acumulaaaaa()
BEGIN
declare contador tinyint unsigned default 1;
declare str varchar(30) default "";
WHILE contador < 6 DO
	set str = concat(str, contador, ",");
    SET contador = contador + 1;
END WHILE;
select str;
END//
DELIMITER ;

CALL acumulaaaaa();

/*FIM DA QUESTÃO 2*/

/*-------------------------------------------------------*/

/*QUESTÃO 3*/

delimiter $$
create procedure acumula_repetidoor()
begin
	declare result  varchar (30) default "";
    declare somador int default 1  ;
    repeat
		set result = concat(result, somador, "," );
        set somador = somador + 1;
        until somador > 9
    end repeat;
    select result;
end $$
delimiter ; 

call acumula_repetidoor();

/*FIM DA QUESTÃO 3*/