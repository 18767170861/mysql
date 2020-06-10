begin;
select * from t2 where id>5 and id<9 for update;

ROLLBACK

-- 其他事务执行
set session autocommit=off;
select * from t2 where id=4 for update;
select * from t2 where id=7 for update;
select * from t2 where id=10 for update;
INSERT INTO `t2` (`id`, `name`) VALUES (9, '9');