drop table
if exists
emp
cascade
;

drop table
if exists
stats
cascade
;


create table
emp
(
	empNo numeric (4) primary key, 
	eName varchar (10), 
	job varchar (9), 
	mgr numeric (4), 
	hireDate date, 
	sal numeric (6, 2), 
	comm numeric (6, 2), 
	deptNo numeric (2)
);

create table
stats
(
	typeMaj char (6) primary key,
	nbMaj bigint,
	timestampModif timestamp
);


insert into
emp
values
(
	7369,
	'SMITH',
	'CLERK',
	7902,
	'17-dec-1980',
	800,
	null,
	20
);

insert into
emp
values
(
	7499,
	'ALLEN',
	'SALESMAN',
	7698,
	'20-feb-1981',
	1600,
	300,
	30
);

insert into
emp
values
(
	7521,
	'WARD',
	'SALESMAN',
	7698,
	'22-feb-1981',
	1250,
	500,
	30
);

insert into
emp
values
(
	7566,
	'JONES',
	'MANAGER',
	7839,
	'02-apr-1981',
	2975,
	null,
	20
);

insert into
emp
values
(
	7654,
	'MARTIN',
	'SALESMAN',
	7698,
	'28-sep-1981',
	1250,
	1400,
	30
);

insert into
emp
values
(
	7698,
	'BLAKE',
	'MANAGER',
	7839,
	'01-may-1981',
	2850,
	null,
	30
);

insert into
emp
values
(
	7782,
	'CLARK',
	'MANAGER',
	7839,
	'09-jun-1981',
	2450,
	null,
	10
);

insert into
emp
values
(
	7839,
	'KING',
	'PRESIDENT',
	null,
	'17-nov-1981',
	5000,
	null,
	10
);

insert into
emp
values
(
	7844,
	'TURNER',
	'SALESMAN',
	7698,
	'08-sep-1981',
	1500,
	0,
	30
);

insert into
emp
values
(
	7900,
	'JAMES',
	'CLERK',
	7698,
	'03-dec-1981',
	950,
	null,
	30
);

insert into
emp
values
(
	7902,
	'FORD',
	'ANALYST',
	7566,
	'03-dec-1981',
	3000,
	null,
	20
);

insert into
emp
values
(
	7934,
	'MILLER',
	'CLERK',
	7782,
	'23-jan-1982',
	1300,
	null,
	10
);


insert into
stats
values
(
	'INSERT',
	0,
	null
);

insert into
stats
values
(
	'UPDATE',
	0,
	null
);

insert into
stats
values
(
	'DELETE',
	0,
	null
);
