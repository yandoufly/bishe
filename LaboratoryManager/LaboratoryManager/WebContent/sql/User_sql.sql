create database laboratory default charset utf8;
use laboratory;

create table user (
	id int(11) auto_increment primary key,
	account varchar(20) comment '�˺�',
	password varchar(20) comment '����',
	name varchar(20) comment '����',
	idnumber varchar(50) comment '���֤����',
	sex int(4) comment '�Ա�',
	profession varchar(10) comment 'ְ��',
	specialty varchar(20) comment 'רҵ',
	birthday datetime comment '��������',
	cellphone1 varchar(20) comment '�ֻ�����',
	cellphone2 varchar(20) comment '�ڶ���ϵ����',
	QQ varchar(20) comment 'QQ����',
	email varchar(20) comment '��������',
	address varchar(50) comment '��ϵ��ַ',
	role int(2) comment '0-����Ա��1-��ʦ��2-ѧ��'
);

insert into user(id, account, password, name, idnumber, sex,profession,specialty,birthday,cellphone1,cellphone2,QQ,email,address,role) 
values(1300330101, '1300330101', '123456', '����', '45212319684723', 0, '��','�������','1993-09-23','13734278941','14330931256','123109493204','159854231@qq.com','���ֵ��ӿƼ���ѧ����У��',2);