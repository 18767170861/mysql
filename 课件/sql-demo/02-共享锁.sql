-- 共享锁加锁
BEGIN
select * from users WHERE id=1 LOCK IN SHARE MODE;


rollback; 
commit;

-- 其他事务执行
select * from users where id =1;

update users set age=19 where id =1;