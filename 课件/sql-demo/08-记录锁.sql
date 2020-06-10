begin;
select * from t2 where id =4 for update;
rollback;


-- 其他事务执行 
select * from t2 where id =7 for update;
select * from t2 where id =4 for update;