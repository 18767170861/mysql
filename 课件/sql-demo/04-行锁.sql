----ex1
set session autocommit = OFF;
update users set lastUpdate=NOW() where phoneNum = '13666666666';

rollback;
-- 其他查询执行
update users set lastUpdate=NOW() where id =2;
update users set lastUpdate=NOW() where id =1;

----- ex2
set session autocommit = OFF;
update users set lastUpdate=NOW() where id = 1;

rollback;
-- 其他查询执行
update users set lastUpdate=NOW() where id =2;
update users set lastUpdate=NOW() where id =1;


--------ex3
set session autocommit = OFF;
update users set lastUpdate=NOW() where `name` = 'seven';

rollback;
-- 其他查询执行
update users set lastUpdate=NOW() where `name` = 'seven';
update users set lastUpdate=NOW() where id =1;
update users set lastUpdate=NOW() where `name` = 'qingshan';
update users set lastUpdate=NOW() where id =2;