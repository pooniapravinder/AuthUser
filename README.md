# spring-mvc-hibernate-mysql-login-register
A login and register using Spring MVC and Hibernate with MySQL Database

====================Database=======================

create database task;
use task;
create table accounts(
id BIGINT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
user_name VARCHAR(60) NOT NULL,
email VARCHAR(60) NOT NULL,
password VARCHAR(100) NOT NULL
);
