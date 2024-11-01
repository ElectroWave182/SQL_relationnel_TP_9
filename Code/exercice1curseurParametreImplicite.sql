create or replace
function
_schema (nomTable varchar)
returns setof varchar
as $$

	declare
	
		attributsTable setof varchar;


	begin

		select column_name
		from information_schema.columns
		into attributsTable
		where table_name = nomTable
		;

		return attributsTable;


	end

$$ language plpgsql
;
