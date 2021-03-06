-- create vclass using three queries

create class xoo ( id int auto_increment , title varchar(100));
create unique index uni_id on xoo (id);

insert into xoo(title) values ('aaa');
insert into xoo(title) values ('bbb');
insert into xoo(title) values ('ccc');

create vclass vxoo (
	id int, 
	title varchar(100)
) as 
select * from xoo WHERE id=1 UNION ALL 
select * from xoo WHERE id=2 UNION ALL 
SELECT * FROM xoo WHERE id=3;

select * from vxoo;
drop vclass vxoo;

drop class xoo;