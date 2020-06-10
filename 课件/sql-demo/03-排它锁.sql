set session autocommit = OFF;
update users set age = 23 where id =1;
select * from users where id =1;
update users set age = 26 where id =1;

commit;
ROLLBACK;

-- 手动获取排它锁
set session autocommit = ON;
begin
select * from users where id =1 for update;
commit;


-- 其他事务执行
select * from users where id =1 lock in share mode;
select * from users where id =1 for update;
select * from users where id =1;