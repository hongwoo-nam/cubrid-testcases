-- create table with nchar VARYING data type of 1073741824 and  tests a create syntax with nchar VARYING data type and another constraint like unique,not null, shared and set default value

CREATE CLASS ddl_0001(
   col1       nchar VARYING(536870911) PRIMARY KEY,
   col2       nchar VARYING(536870911) ,
   col3       nchar VARYING(536870911) NOT NULL,
   col4       nchar VARYING(536870911) NOT NULL,
   col5       nchar VARYING(536870911) nOt nUlL,
   col6       nchar VARYING(536870911) UNIQUE,
   col7       nchar VARYING(536870911) UNIQUE NOT NULL,
   col8       nchar SHARED NULL,
   col9       nchar SHARED N'a' NOT NULL
);


drop ddl_0001;
