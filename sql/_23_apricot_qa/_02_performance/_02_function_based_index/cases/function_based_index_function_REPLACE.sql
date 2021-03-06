--+ holdcas on;
set  system parameters 'dont_reuse_heap_file=yes';
create table t1(  a char(1200),   b varchar(1200),  c nchar(1200),  d NCHAR VARYING(1200),  e BIT(1200),  f BIT VARYING(1200),  g int,  h SMALLINT,  i BIGINT,  j NUMERIC,  k FLOAT,  l DOUBLE,  m MONETARY,  n DATE,  o TIME,  p TIMESTAMP,  q DATETIME);

insert into t1 values (
  '1234567890',
  '1234567890',
  N'abc',
  N'ABC',
  B'1111111111',
  B'1111111111',
  10,
  255,
  9223372036854775807,
  0,
  0,
  0,
  -100,
  DATE '2008-10-31',
  TIME '00:00:00',
  TIMESTAMP '2010-10-31 01:15:45',
  DATETIME  '2008-10-31 13:15:45');
insert into t1 values (null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);

--TEST Create successfully 
create index i_t1_a2q on t1(REPLACE(a,b,null));
--TEST: should use index i_t1_a2q
select /*+ RECOMPILE */* from t1 where REPLACE(a,b,null) is null ;
--TEST Create successfully 
create index i_t1_a2p on t1(REPLACE(b,a,'Same'));
--TEST: should use index i_t1_a2p
select /*+ RECOMPILE */* from t1 where REPLACE(b,a,'Same')<'Sam' ;
--TEST Create successfully 
create index i_t1_a2o on t1(REPLACE(c,N'abc',null));
--TEST: should use index i_t1_a2o
select /*+ RECOMPILE */* from t1 where REPLACE(c,N'abc',null) = N'' ;
--TEST Create successfully 
create index i_t1_a2n on t1(REPLACE(d,c,N'ABC'));
--TEST: should use index i_t1_a2n
select /*+ RECOMPILE */* from t1 where REPLACE(d,c,N'ABC')=N'ABC' ;
--TEST Create failed
create index i_t1_a2m on t1(REPLACE(e,null));
--TEST Create failed
create index i_t1_a2l on t1(REPLACE(f,'1'));
--TEST Create failed
create index i_t1_a2k on t1(REPLACE(g,'1'));
--TEST Create failed
create index i_t1_a2j on t1(REPLACE(h,'1'));
--TEST Create failed
create index i_t1_a2i on t1(REPLACE(i,'1'));
--TEST Create failed
create index i_t1_a2h on t1(REPLACE(j,'1'));
--TEST Create failed
create index i_t1_a2g on t1(REPLACE(k,'1'));
--TEST Create failed
create index i_t1_a2f on t1(REPLACE(l,'1'));
--TEST Create failed
create index i_t1_a2e on t1(REPLACE(m,'1'));
--TEST Create failed 
create index i_t1_a2d on t1(REPLACE(n,'1'));
--TEST Create failed 
create index i_t1_a2c on t1(REPLACE(o,'1'));
--TEST Create failed 
create index i_t1_a2b on t1(REPLACE(p,'1'));
--TEST Create failed 
create index i_t1_a2a on t1(REPLACE(q));

drop table t1;
set  system parameters 'dont_reuse_heap_file=no';
commit;
--+ holdcas off;
