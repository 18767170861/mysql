begin;
select * from t2 where id >4 and id <6 for update;
-- 或者
select * from t2 where id =6 for update;

ROLLBACK;

-- 其他会话执行
INSERT INTO `t2` (`id`, `name`) VALUES (5, '5');
INSERT INTO `t2` (`id`, `name`) VALUES (6, '6');