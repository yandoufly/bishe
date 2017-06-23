--���ɣ�
create table question(
  id int(4) auto_increment primary key comment '����',
  title varchar(20)  comment '��Ŀ',
  content varchar(100) comment '����',
  studentId int(11)  comment 'ѧ��ѧ��',
  studentName varchar(20) comment 'ѧ������',
  createTime dateTime comment '��������'
);

create table questionReply(
  id int(4) auto_increment primary key comment '����',
  questionId int(11) comment '������',
  replyContent varchar(100) comment '�ظ�����',
  replyId int(11) comment '�ظ����',
  replyTime dateTime comment '�ظ�ʱ��'
);
create table evaluation(
   id int(4) auto_increment primary key comment '����',
   courseId int(11) comment '�γ̱��',
   courseName varchar(20) comment '�γ�����',
   studentAccount varchar(20) comment 'ѧ��ѧ��',
   simpleAnswer varchar(20) comment '��ѡ��',
   suggestion varchar(50) comment '����'
);

--ʵ��ϸ�ڣ��������γ̱�š�ʵ����Ŀ��ʵ�����ݡ�ʵ������(rar��ʽ�ģ��ļ����ơ��ļ�·��)��ѧ���ύ��ʵ����ҵ(һ���ύ��rar��ʽ���ļ����ơ��ļ�·��)
create table coursedetail(
	id int(11) auto_increment primary key comment '����',
	courseId int(11) comment '�γ̱��',
	courseName varchar(20) comment '�γ�����',
	title varchar(20) comment 'ʵ����Ŀ',
	content varchar(20) comment 'ʵ������',
	filename varchar(20) comment '��������',
	filepath varchar(50) comment '����·��'
);

insert into coursedetail(courseId, courseName, title, content, filename, filepath) values(1, 'javaʵ��', 'ʵ��һ������111', 'xxxxxxxxx', 'test1.rar', 'c:\\test');
insert into coursedetail(courseId, courseName, title, content, filename, filepath) values(1, 'javaʵ��', 'ʵ���������111', 'xxxxxxxxx', 'test2.rar', 'c:\\test');
insert into coursedetail(courseId, courseName, title, content, filename, filepath) values(1, 'javaʵ��', 'ʵ����������111', 'xxxxxxxxx', 'test3.rar', 'c:\\test');
insert into coursedetail(courseId, courseName, title, content, filename, filepath) values(1, 'javaʵ��', 'ʵ���ģ�����111', 'xxxxxxxxx', 'test4.rar', 'c:\\test');

--�鿴ʵ����������(��Ӧ�γ̱�):
--�������γ̱�š��γ����ơ�ѧ��ѧ�š�ѧ��������ѧ���Ա�ѧ��רҵ
create table namelist(
	id int(11) auto_increment primary key comment '����',
	courseId int(11) comment '�γ̱��',
	courseName varchar(20) comment '�γ�����',
	studentAccount varchar(20) comment 'ѧ��ѧ��',
	studentName varchar(20) comment 'ѧ������',
	sex int(4) comment 'ѧ���Ա�',
	specialty varchar(20) comment 'ѧ��רҵ'
);

insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330101', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330102', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330103', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330104', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330105', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330106', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330107', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330108', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330109', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330110', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330111', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330112', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330113', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330114', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330115', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330116', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330117', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330118', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330119', 'XXX', 0, '�������');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'javaʵ��', '1300330120', 'XXX', 0, '�������');

--�½��γ̱�
--��ӿγ̣��γ̱�š��γ����ơ���ʦ��š���ʦ���֡��γ����͡�ʵ����ѡ����(��̨�Զ��ύ����)���γ�����
create table course(
	courseId int(11) auto_increment primary key comment '�γ̱��',
	name varchar(20) comment '�γ�����',
	teacherId varchar(20) comment '��ʦ���',
	teacherName varchar(20) comment '��ʦ����',
	type varchar(20) comment '�γ�����',
	number int(10) comment 'ѡ������',
	description varchar(100) comment '�γ�����'
);

--�½����ұ�
create table classroom (
	classroomId varchar(20) primary key comment 'ʵ���ұ��',
	name varchar(20) comment 'ʵ��������',
	type varchar(20) comment 'ʵ��������:�����ҡ�Ӳ����',
	capacity int(10) comment '��������'
);

insert into classroom values ('05401', 'ʵ����', '������', 30);
insert into classroom values ('05402', 'javaʵ����', '������', 25);
insert into classroom values ('05403', 'c/c++ʵ����', '������', 30);
insert into classroom values ('05404', '��ý��ʵ����', '������', 30);
insert into classroom values ('05405', '��ýʵ����', '������', 40);
insert into classroom values ('12303', 'Ӳ��ʵ����', 'Ӳ����', 30);

--�½�ʵ����ԤԼ��
--ʵ����ԤԼ���γ̱�š�ʵ�����ơ�ʵ���ʦ��ʵ��ص㡢��ʼ����(�ڼ���)����������(�ڼ���)�����ڼ����ڼ��ڿ�
create table appointment(
	id int(11) auto_increment primary key,
	courseId varchar(20) comment '�γ̱��',
	courseName varchar(20) comment 'ʵ������',
	teacher varchar(20) comment 'ʵ���ʦ',
	classroomId varchar(20) comment 'ʵ��ص�',
	personcount int(6) comment 'ʵ������',
	startWeek int(6) comment '��ʼ�� 1~20',
	endWeek int(6) comment '������ 1~20',
	whatday int(6) comment '���ڼ� 1~7',
	part int(6) comment '�ڼ��ڿ� 1~6',
	state int(4) comment '״̬ 0-������ 1-����'
);

insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state)
    values('A2017_3_12_4035', 'java�����γ������', '��ʦA', '05401', 55, 5, 12, 5, 3, 0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4035','java�����γ������1','��ʦA','05401',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4036','java�����γ������13','��ʦAE','05403',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4037','java�����γ������14','��ʦAF','05404',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4038','java�����γ������15','��ʦAG','05405',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4039','java�����γ������16','��ʦAH','05401',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4040','java�����γ������17','��ʦAAA','05402',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4041','java�����γ������18','��ʦAAB','05403',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4042','java�����γ������19','��ʦAAC','05404',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4043','java�����γ������20','��ʦAAD','05405',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4044','java�����γ������12','��ʦAD','05402',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4045','java�����γ������11','��ʦAC','05401',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4046','java�����γ������10','��ʦAB','05405',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4047','java�����γ������2','��ʦB','05402',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4048','java�����γ������3','��ʦC','05403',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4049','java�����γ������4','��ʦD','05404',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4050','java�����γ������5','��ʦE','05405',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4051','java�����γ������6','��ʦF','05401',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4052','java�����γ������7','��ʦG','05402',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4053','java�����γ������8','��ʦH','05403',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4054','java�����γ������9','��ʦAA','05404',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4055','java�����γ������21','��ʦAAE','05406',55,5,12,5,3,0);