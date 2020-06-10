begin;
insert into users(name , age ,phoneNum ,lastUpdate ) values ('tom2',30,'1344444444',now());
ROLLBACK;

begin;
insert into users(name , age ,phoneNum ,lastUpdate ) values ('xxx',30,'13444444444',now());
ROLLBACK;


-- 其他事务执行
insert into users(name , age ,phoneNum ,lastUpdate ) values ('yyy',30,'13444444444',now());