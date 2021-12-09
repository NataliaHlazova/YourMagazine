drop database if exists online_shop;
create database online_shop char set utf8;
use online_shop; 

select * from user;
select * from bucket;
select * from subscribe;
select * from product;

update user set role="ROLE_ADMIN" where id=1;
