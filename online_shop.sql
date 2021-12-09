drop database if exists online_shop;
create database online_shop char set utf8;
use online_shop; 

select * from user;
select * from bucket;
select * from subscribe;
select * from product;



DELETE FROM user WHERE id>=1;

update user set role="ROLE_ADMIN" where id=1;


select a.role from user_roles a, users b 
where b.username="user1" and a.userid=b.userid;



drop database if exists periodicals;
create database periodicals char set utf8;
use periodicals; 