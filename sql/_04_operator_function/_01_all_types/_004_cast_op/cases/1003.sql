--[er]test casting timestamp to other type(like string, varchar, char, date, time, timestamp, nchar, nchar varying)
create class func_03(
varchartest     varchar(20),
sinttest         smallint,
inttest                 int,
numerictest     numeric(38,10),
floattest               float,
realtest                real,
doublepretest   double precision,
moneytest       monetary,
chartest        char(8),
datetest        date,
timetest        time,
timestamptest           timestamp,
bittest         bit(16),
nchartest       nchar(20),
ncharvartest    nchar varying(20),
bitvartest              bit varying(20),
stringtest      string);
create class dummy( a int );
insert into func_03 values ( '1234567890', 123, 12345, 9876543210987654321012345678.0123456789, 987654.321, 987654321.987654321,987654.321, 9876.1,'char1234', DATE '08/14/1977', TIME '02:10:00', TIMESTAMP '08/14/1977 5:35:00 pm',B'0', N'test111', N'test111', B'1','qa test');
insert into func_03 values ( '', 0, 0, 0, 0, 0,0, 0, '', null, null, null,B'', N'', N'', B'','');
insert into func_03(stringtest) values ( null);
insert into dummy values (1);

select timestamptest from func_03 order by 1;
select cast(timestamptest as string) from func_03 order by 1;
select cast(timestamptest as varchar(25)) from func_03 order by 1;
select cast(timestamptest as char(25)) from func_03 order by 1;
select cast(timestamptest as date) from func_03 order by 1;
select cast(timestamptest as time) from func_03 order by 1;
select cast(timestamptest as timestamp) from func_03 order by 1;
select cast(timestamptest as nchar(25)) from func_03 order by 1;
select cast(timestamptest as nchar varying(25)) from func_03 order by 1;
select cast(set{timestamptest} as set of timestamp) from func_03 order by 1;
select cast(multiset{timestamptest} as multiset of timestamp) from func_03 order by 1;
select cast(list{timestamptest} as list of timestamp) from func_03 order by 1;
select cast(timestamptest as char(8)) from func_03 order by 1;

drop table func_03;
drop table dummy;

