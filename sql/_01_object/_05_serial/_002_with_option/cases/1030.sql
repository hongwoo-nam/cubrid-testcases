-- [er] create serial using start with which value is -2 and MINVALUE which value is 999999999999999999999999999999999999


create serial ser1
START WITH -2
MINVALUE 9999999999999999999999999999999999999
;

select * from db_serial WHERE name='ser1';

drop serial ser1;
