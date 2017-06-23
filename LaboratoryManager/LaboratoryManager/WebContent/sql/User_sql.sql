create database laboratory default charset utf8;
use laboratory;

create table user (
	id int(11) auto_increment primary key,
	account varchar(20) comment '账号',
	password varchar(20) comment '密码',
	name varchar(20) comment '姓名',
	idnumber varchar(50) comment '身份证号码',
	sex int(4) comment '性别',
	profession varchar(10) comment '职称',
	specialty varchar(20) comment '专业',
	birthday datetime comment '出生日期',
	cellphone1 varchar(20) comment '手机号码',
	cellphone2 varchar(20) comment '第二联系号码',
	QQ varchar(20) comment 'QQ号码',
	email varchar(20) comment '电子邮箱',
	address varchar(50) comment '联系地址',
	role int(2) comment '0-管理员，1-教师，2-学生'
);

insert into user(id, account, password, name, idnumber, sex,profession,specialty,birthday,cellphone1,cellphone2,QQ,email,address,role) 
values(1300330101, '1300330101', '123456', '李三', '45212319684723', 0, '无','软件工程','1993-09-23','13734278941','14330931256','123109493204','159854231@qq.com','桂林电子科技大学花江校区',2);