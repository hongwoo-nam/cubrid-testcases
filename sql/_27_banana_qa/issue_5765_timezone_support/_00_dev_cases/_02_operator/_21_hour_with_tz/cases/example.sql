--cases from dev

SELECT HOUR('10:05:03');

--TBD
SELECT HOUR('272:59:59');

--[er]
SELECT HOUR('2000-01-01 01:02:03');

SELECT HOUR('2000-01-01 01:02:03.1234');

--[er]
--SELECT HOUR(current_date);


-- test for valid datetimetz format
select hour(datetimetz'2003-12-31 01:02:03.1234 Asia/Seoul'), if (hour(datetimetz'2003-12-31 01:02:03.1234 Asia/Seoul') = 1, 'ok', 'nok');
select hour(timestamptz'2003-12-31 01:02:03 Asia/Seoul'), if (hour(timestamptz'2003-12-31 01:02:03 Asia/Seoul') = 1, 'ok', 'nok');
select hour(time'01:02:03'), if (hour(time'01:02:03') = 1, 'ok', 'nok');


-- test for valid date, time string format
select hour('2003-12-31 01:02:03.1234'), if (hour('2003-12-31 01:02:03.1234') = 1, 'ok', 'nok');
select hour('2003-12-31 01:02:03'), if (hour('2003-12-31 01:02:03') = 1, 'ok', 'nok');
select hour('01:02:03'), if (hour('01:02:03') = 1, 'ok', 'nok');


-- test for special case
select hour('23:59:59'), if (hour('23:59:59') = 23, 'ok', 'nok');
select hour('00:00:00'), if (hour('00:00:00') = 0, 'ok', 'nok');
select hour('00:00:00') - 1, if (hour('00:00:00') - 1 = 23, 'ok', 'nok');
select hour('23:59:59') + 1, if (hour('23:59:59') + 1 = 0, 'ok', 'nok');


-- check if ER_TIME_CONVERSION is occured.
select hour('25:00:00');
select hour('01:00:70');
select hour('-30:00:10');
