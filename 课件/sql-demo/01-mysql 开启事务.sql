show VARIABLES like 'autocommit';

-- autocommit 为 ON  
update teacher set name ='seven' where id =1;
insert teacher (name,age) value ('james',22);
delete from teacher where name = 'james';


-- autocommit 为 ON  如何开启事务
BEGIN;   
START TRANSACTION;

update teacher set name ='seven' where id =1;
insert teacher (name,age) value ('james',22);
delete from teacher where name = 'james';

COMMIT;
ROLLBACK;


-- 将autocommit 改成OFF
set session autocommit = OFF;
update teacher set name ='seven' where id =1;
insert teacher (name,age) value ('james',22);
delete from teacher where name = 'james';

commit;
ROLLBACK;