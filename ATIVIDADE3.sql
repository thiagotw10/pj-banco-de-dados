/* TERCEIRA ATIVIDADE DE PROJETO DE BANCO DE DADOS*/


/*QUESTÃO 1*/

DELIMITER $$
CREATE FUNCTION cadastroAluno(cod_curso INT, 
	dat_nasc DATE, 
    tot_cred INT, 
    mgp DOUBLE(10,2), 
    nom_alun VARCHAR(60), 
    email VARCHAR(30))
RETURNS VARCHAR(60)
DETERMINISTIC
BEGIN
	INSERT INTO aluno(cod_curso,
		dat_nasc, 
        tot_cred, 
        mgp, 
        nom_alun, 
        email) VALUES(cod_curso,
		dat_nasc, 
        tot_cred, 
        mgp, 
        nom_alun, 
        email);
	RETURN nom_alun;
END$$
DELIMITER ;

SELECT cadastroAluno(Null, '1998-06-7', 60, 8, 'thiago', 'thiagotw10@hotmail.com') AS Nome_do_Aluno;
 

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