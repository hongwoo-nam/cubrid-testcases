--TEST: pass marginal values of date/timestamptz/datetimetz type to the 2nd param


--TEST: 1. marginal values: date argument
select addtime(time'14:59:59', date'0001-01-01');

select addtime(time'14:59:59', date'9999-12-31');

select addtime(time'14:59:59', date'12/31/9999');

select addtime(time'14:59:59', date'1/1/1');




--TEST: 2. marginal values: timestamptz argument
select addtime(time'14:59:59', timestamptz'00:00:00 01/01/01');

select addtime(time'14:59:59', timestamptz'03:14:07 1/19/2038');

select addtime(time'14:59:59', timestamptz'0:0:0 PM 1970-01-01');

select addtime(time'14:59:59', timestamptz'1/19/2038 03:14:07');



--TEST: 3. marginal values: datetimetz argument
select addtime(time'14:59:59', datetimetz'0:0:0.00 1/1/1');

select addtime(time'14:59:59', datetimetz'23:59:59.999 12/31/9999');

select addtime(time'14:59:59', datetimetz'00:00:00.0000 AM 0001-01-01');

select addtime(time'14:59:59', datetimetz'12/31/9999 23:59:59.999');



--TEST: 4. marginal values: time argument
select addtime(time'14:59:59', time'0:0:0.0000000000000000');

select addtime(time'0:0:01', time'23:59:59');

select addtime(time'14:59:59', time'00:00:00');

select addtime(time'0:0:0.001', time'23:59:59.999');
