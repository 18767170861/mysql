----- IS锁的意义
set session autocommit = OFF;
update users set lastUpdate=NOW() where id = 1;
rollback;

-- 其他会话执行
update users set lastUpdate=NOW() where phoneNum = '13777777777';