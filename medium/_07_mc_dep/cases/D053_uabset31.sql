autocommit off;
SET TRANSACTION ISOLATION LEVEL
    REPEATABLE READ CLASS, READ COMMITTED INSTANCES;
UPDATE base_c1 SET 
              attr6_longstr_noidx  = 'UPDATE' + attr6_longstr_noidx,
              attr6_longstr_idx    = 'UPDATE' + attr6_longstr_noidx
       WHERE  attr15_int_50vals_idx < 12
         AND  attr16_objpath.attr12_int_4vals_idx = 0;
UPDATE virtual_c2 SET 
              attr6_longstr_noidx  = 'UPDATE' + attr6_longstr_noidx,
              attr6_longstr_idx    = 'UPDATE' + attr6_longstr_noidx
       WHERE  attr15_int_50vals_idx < 24
         AND  attr16_objpath.attr12_int_4vals_idx = 1;
UPDATE base_c0 SET 
              attr6_longstr_noidx  = 'UPDATE' + attr6_longstr_noidx,
              attr6_longstr_idx    = 'UPDATE' + attr6_longstr_noidx
       WHERE  attr15_int_50vals_idx < 36
         AND  attr16_objpath.attr12_int_4vals_idx = 2;
UPDATE virtual_c1 SET 
              attr6_longstr_noidx  = 'UPDATE' + attr6_longstr_noidx,
              attr6_longstr_idx    = 'UPDATE' + attr6_longstr_noidx
       WHERE  attr15_int_50vals_idx < 50
         AND  attr16_objpath.attr12_int_4vals_idx = 3;
ROLLBACK WORK;
