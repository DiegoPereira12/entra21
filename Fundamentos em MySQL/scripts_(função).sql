DELIMITER $
create function fn_nome_escola() returns varchar(20)
begin
	return 'Proway';
end$
DELIMITER ;

select fn_nome_escola();