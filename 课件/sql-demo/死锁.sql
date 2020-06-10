BEGIN;
update users set lastUpdate = NOW() where id =1;


update t2 set `name`='test' where id =1;


-- 其他会话

BEGIN;

update t2 set `name`='test' where id =1;


update users set lastUpdate = NOW() where id =1;


