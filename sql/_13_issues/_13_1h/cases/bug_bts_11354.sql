drop table if exists foo;
create table foo ( a integer primary key, b integer, c integer, d datetime );
create index foo_a_b_d_c on foo ( a , b desc , c );
insert into foo values ( 1, 3, null, sysdatetime );
insert into foo values ( 2, 3, null, sysdatetime );
insert into foo values ( 3, 3, 1, sysdatetime );
select * from foo where a = 1 and b > 3 ;
select * from foo where a = 2 and b > 3 ;
select * from foo where a = 3 and b > 3 ;
drop foo;