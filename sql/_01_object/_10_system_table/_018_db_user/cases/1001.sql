--Test system table db_user's attribute: name

--+ holdcas on;
call login('dba') on class db_user;
create user test_user;


select name, id, password, groups
from   db_user
where  name = 'TEST_USER';

drop user test_user;
commit;
--+ holdcas off;
