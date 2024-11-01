drop type
if exists
coupleVarchar
cascade
;

create type
coupleVarchar
as
(
	chaine1 varchar,
	chaine2 varchar
);


create or replace
function
deuxAtt (nomTable varchar)
returns void
as $$

	declare
	
		attributs coupleVarchar;
		valeurs record;
		gauche record;
		droite record;


	begin

		select column_name
		from information_schema.columns
		into attributs
		where table_name = nomTable
		limit 2
		;
		
		for valeurs
		in
			execute
				"select "
				|| attributs.chaine1
				|| ", "
				|| attributs.chaine2
				|| " from "
				|| nomTable
			;
			
		loop
		
			-- 1ère valeur
			execute
				"select "
				|| attributs.chaine1
				|| " from valeurs into gauche"
			;
			
			-- 2e valeur
			execute
				"select "
				|| attributs.chaine2
				|| " from valeurs into droite"
			;
		
			raise info
				cast (gauche as varchar)
				+ " | "
				+ cast (droite as varchar)
				+ '\n'
			;
			
		end loop
		;
		
		return;


	end

$$ language plpgsql
;
