--答疑：
create table question(
  id int(4) auto_increment primary key comment '主键',
  title varchar(20)  comment '题目',
  content varchar(100) comment '内容',
  studentId int(11)  comment '学生学号',
  studentName varchar(20) comment '学生姓名',
  createTime dateTime comment '问题日期'
);

create table questionReply(
  id int(4) auto_increment primary key comment '主键',
  questionId int(11) comment '问题编号',
  replyContent varchar(100) comment '回复内容',
  replyId int(11) comment '回复编号',
  replyTime dateTime comment '回复时间'
);
create table evaluation(
   id int(4) auto_increment primary key comment '主键',
   courseId int(11) comment '课程编号',
   courseName varchar(20) comment '课程名称',
   studentAccount varchar(20) comment '学生学号',
   simpleAnswer varchar(20) comment '单选题',
   suggestion varchar(50) comment '建议'
);

--实验细节：主键、课程编号、实验题目、实验内容、实验资料(rar格式的，文件名称、文件路径)、学生提交的实验作业(一人提交，rar格式，文件名称、文件路径)
create table coursedetail(
	id int(11) auto_increment primary key comment '主键',
	courseId int(11) comment '课程编号',
	courseName varchar(20) comment '课程名称',
	title varchar(20) comment '实验题目',
	content varchar(20) comment '实验内容',
	filename varchar(20) comment '附件名称',
	filepath varchar(50) comment '附件路径'
);

insert into coursedetail(courseId, courseName, title, content, filename, filepath) values(1, 'java实验', '实验一：基础111', 'xxxxxxxxx', 'test1.rar', 'c:\\test');
insert into coursedetail(courseId, courseName, title, content, filename, filepath) values(1, 'java实验', '实验二：基础111', 'xxxxxxxxx', 'test2.rar', 'c:\\test');
insert into coursedetail(courseId, courseName, title, content, filename, filepath) values(1, 'java实验', '实验三：基础111', 'xxxxxxxxx', 'test3.rar', 'c:\\test');
insert into coursedetail(courseId, courseName, title, content, filename, filepath) values(1, 'java实验', '实验四：基础111', 'xxxxxxxxx', 'test4.rar', 'c:\\test');

--查看实验人数名单(对应课程表):
--主键、课程编号、课程名称、学生学号、学生姓名、学生性别、学生专业
create table namelist(
	id int(11) auto_increment primary key comment '主键',
	courseId int(11) comment '课程编号',
	courseName varchar(20) comment '课程名称',
	studentAccount varchar(20) comment '学生学号',
	studentName varchar(20) comment '学生姓名',
	sex int(4) comment '学生性别',
	specialty varchar(20) comment '学生专业'
);

insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330101', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330102', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330103', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330104', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330105', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330106', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330107', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330108', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330109', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330110', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330111', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330112', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330113', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330114', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330115', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330116', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330117', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330118', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330119', 'XXX', 0, '软件工程');
insert into namelist(courseId, courseName, studentAccount, studentName, sex, specialty) values(1, 'java实验', '1300330120', 'XXX', 0, '软件工程');

--新建课程表：
--添加课程：课程编号、课程名称、教师编号、教师名字、课程类型、实验所选人数(后台自动提交数据)、课程描述
create table course(
	courseId int(11) auto_increment primary key comment '课程编号',
	name varchar(20) comment '课程名称',
	teacherId varchar(20) comment '教师编号',
	teacherName varchar(20) comment '教师名字',
	type varchar(20) comment '课程类型',
	number int(10) comment '选课人数',
	description varchar(100) comment '课程描述'
);

--新建教室表：
create table classroom (
	classroomId varchar(20) primary key comment '实验室编号',
	name varchar(20) comment '实验室名称',
	type varchar(20) comment '实验室类型:电脑室、硬件室',
	capacity int(10) comment '容纳人数'
);

insert into classroom values ('05401', '实验室', '电脑室', 30);
insert into classroom values ('05402', 'java实验室', '电脑室', 25);
insert into classroom values ('05403', 'c/c++实验室', '电脑室', 30);
insert into classroom values ('05404', '多媒体实验室', '电脑室', 30);
insert into classroom values ('05405', '数媒实验室', '电脑室', 40);
insert into classroom values ('12303', '硬件实验室', '硬件室', 30);

--新建实验室预约表
--实验室预约：课程编号、实验名称、实验教师、实验地点、开始日期(第几周)、结束日期(第几周)、星期几、第几节课
create table appointment(
	id int(11) auto_increment primary key,
	courseId varchar(20) comment '课程编号',
	courseName varchar(20) comment '实验名称',
	teacher varchar(20) comment '实验教师',
	classroomId varchar(20) comment '实验地点',
	personcount int(6) comment '实验人数',
	startWeek int(6) comment '开始周 1~20',
	endWeek int(6) comment '结束周 1~20',
	whatday int(6) comment '星期几 1~7',
	part int(6) comment '第几节课 1~6',
	state int(4) comment '状态 0-不可用 1-可用'
);

insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state)
    values('A2017_3_12_4035', 'java基础课程与设计', '老师A', '05401', 55, 5, 12, 5, 3, 0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4035','java基础课程与设计1','老师A','05401',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4036','java基础课程与设计13','老师AE','05403',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4037','java基础课程与设计14','老师AF','05404',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4038','java基础课程与设计15','老师AG','05405',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4039','java基础课程与设计16','老师AH','05401',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4040','java基础课程与设计17','老师AAA','05402',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4041','java基础课程与设计18','老师AAB','05403',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4042','java基础课程与设计19','老师AAC','05404',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4043','java基础课程与设计20','老师AAD','05405',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4044','java基础课程与设计12','老师AD','05402',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4045','java基础课程与设计11','老师AC','05401',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4046','java基础课程与设计10','老师AB','05405',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4047','java基础课程与设计2','老师B','05402',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4048','java基础课程与设计3','老师C','05403',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4049','java基础课程与设计4','老师D','05404',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4050','java基础课程与设计5','老师E','05405',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4051','java基础课程与设计6','老师F','05401',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4052','java基础课程与设计7','老师G','05402',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4053','java基础课程与设计8','老师H','05403',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4054','java基础课程与设计9','老师AA','05404',55,5,12,5,3,0);
insert into appointment(courseId, courseName, teacher, classroomId, personcount, startWeek, endWeek, whatday, part, state) 
	values ('A2017_3_12_4055','java基础课程与设计21','老师AAE','05406',55,5,12,5,3,0);