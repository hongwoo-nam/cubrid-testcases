autocommit off;
create class foo (n int);
insert into foo default values;
insert into foo default values;
insert into foo values (13);
insert into foo values (14);
select * from foo;
create index i_foo_n on foo(n);
update foo set n = n + 1;
select * from foo;
rollback work;
rollback;