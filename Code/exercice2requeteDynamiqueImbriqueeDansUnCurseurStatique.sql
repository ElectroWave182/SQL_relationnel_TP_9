drop type
if exists
varcharInt
cascade
;

create type
varcharInt
as
(
	chaine varchar,
	entier int
);


create function
catPlus ()
returns setof varcharInt
as $$


	declare
	
		nomTable varchar;
		nbLignes int;
		
		
	begin
	
		for nomTable
		in
			select table_name,
			from information_schema.tables
			;
			
		loop
			execute
				"select count (*) from "
				|| nomTable
				|| " into nbLignes"
			;
			
			return next (nomTable, nbLignes);
		
		end loop
		;
		
		return;
	
	
	end
	
$$ LANGUAGE plpgsql
;
