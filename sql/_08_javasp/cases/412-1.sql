-- 4.1.2 �̸� �Ծ� ����
autocommit off;

-- 256�� �̸� 
create function f12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234 (x int) return int as language java name 'jclass.func1(int) return int';

-- 257�� �̸�
create function s123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345 (x int) return int as language java name 'jclass.func1(int) return int';

-- 302�� �̸�
create function s123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890 (x int) return int as language java name 'jclass.func1(int) return int';

-- 302�� �̸�
create function g123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890 (x int) return int as language java name 'jclass.func1(int) return int';

-- 256�� ����
create function f1 (f12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234 int) return int as language java name 'jclass.func1(int) return int';

-- 257�� ����
create function f2 (f123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345 int) return int as language java name 'jclass.func1(int) return int';

-- 302�� ����
create function f3 (g123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890 int) return int as language java name 'jclass.func1(int) return int';

-- 256�� java �̸�
create function f3 (xx int) return int as language java name 'f12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234.func1(int) return int';

-- 258�� java �̸�
create function f4 (xx int) return int as language java name 'f1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456.func1(int) return int';

-- 256�� java �̸�
create function f6 (xx int) return int as language java name 's.f12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234(int) return int';

-- 258�� java �̸�
create function f7 (xx int) return int as language java name 's.f1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456(int) return int';

create function func1 (x int) return int as language java name 'jclass.func1(int) return int';
drop function func1;

create function 1func (x int) return int as language java name 'jclass.func1(int) return int';

create function #func (x int) return int as language java name 'jclass.func1(int) return int';

create function _func (x int) return int as language java name 'jclass.func1(int) return int';

create function -func (x int) return int as language java name 'jclass.func1(int) return int';

create function @func (x int) return int as language java name 'jclass.func1(int) return int';

create function func2 (class int) return int as language java name 'jclass.func1(int) return int';

create function func2 (java int) return int as language java name 'jclass.func1(int) return int';

create function func3 (x int) return int as language java name 'class.func1(int) return int';

create function func4(x int) return int as language java name 'class.to_char(int) return int';

rollback;

autocommit on;
