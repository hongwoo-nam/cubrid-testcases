-- pass different formats of timestamptz/datetimetz arguments


--2. pass different formats of timestamptz arguments
select second(timestamptz'2010-10-08 2:16:10');

select second(timestamptz'2009-1-09 4:30:01 am');

select second(timestamptz'1999-11-30 9:10:10 pm');

select second(timestamptz'13:14:55 10/08');

select second(timestamptz'2:22:22 8/12/2010');

select second(timestamptz'09:03:22 PM 1988-08-08');

select second(timestamptz'12/12/1999 10:20:55');



--3. pass different formats of datetimetz arguments
select second(datetimetz'13:14:55.123 10/08');

select second(datetimetz'2:22:22.333 8/12/2010');

select second(datetimetz'09:03:22.012 PM 1988-08-08');

select second(datetimetz'12/12/1644 10:20:55.789');


