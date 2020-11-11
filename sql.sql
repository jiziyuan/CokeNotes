教师表：tno教师编号，tname教师名称，tbirth出生日期，prof职称，depart部门

1.create table teacher(

tno varchar(20) primary key,

tname varchar(20) not null,

tsex varchar(10) not null,

Tbirth datetime,

prof varchar(20),

depart varchar (20) not null

);

课程表：cno课程号，cname课程名称，tno教师编号

2.create table course(

cno varchar(20) primary key,

cname varchar(20) not null,

tno varchar(20) not null,

foreign key(tno) reference teacher(tno)

);

成绩表：学号 sno，课程号 cno，成绩 degree

3.create table score(

sno varchar(20) not null,

cno varchar(20) not null,

degree decimal,

foreign key (sno) references student(sno),

foreign key (cno) references course(cno),

primary key(sno,cno)

);





学生表：学号，姓名，性别，生日，班级

create table student(
    -> sno varchar(20) primary key,
    -> sname varchar(20) not null,
    -> ssex varchar(10) not null,
    -> sbirthday datetime,
    -> class varchar(20)



insert into student values('01','王三','男','1990-05-01','A班');

insert into student values('02','张三','男','1995-08-10','A班');

insert into student values('03','李四','男','1998-10-15','B班');

insert into student values('04','陈丽','女','1999-11-01','A班');

insert into student values('05','周周','男','1998-05-05','B班');

insert into student values('06','洒洒','女','1997-06-21','C班');

insert into student values('07','哈哈哈','女','1999-04-29','C班');

insert into student values('08','王二','男','1998-05-06','B班');

insert into student values('09','王一','女','1999-05-01','B班');

+-----+-----------+------+---------------------+-------+
| sno | sname     | ssex | sbirth              | class |
+-----+-----------+------+---------------------+-------+
| 01  | 王三    | 男  | 1990-05-01 00:00:00 | A班  |
| 02  | 张三    | 男  | 1995-08-10 00:00:00 | A班  |
| 03  | 李四    | 男  | 1998-10-15 00:00:00 | B班  |
| 04  | 陈丽    | 女  | 1999-11-01 00:00:00 | A班  |
| 05  | 周周    | 男  | 1998-05-05 00:00:00 | B班  |
| 06  | 洒洒    | 女  | 1997-06-21 00:00:00 | C班  |
| 07  | 哈哈哈 | 女  | 1999-04-29 00:00:00 | C班  |
| 08  | 王二    | 男  | 1998-05-06 00:00:00 | B班  |
| 09  | 王一    | 女  | 1999-05-01 00:00:00 | B班  |
+-----+-----------+------+---------------------+-------+

insert into teacher values('201','王其','男','教师','计算机''1945-04-01';

insert into teacher values('302','王爽','女','教师','音乐','1935-11-01');

insert into teacher values('233','李二','女','副主任','计算机','1936-12-01');

insert into teacher values('504','韩其','男','助教','数学','1955-02-27');

insert into teacher values('407','陈元','男','教师','电子工程','1957-11-16');







insert into course values('3-2','电子工程','407');

insert into course values('2-3','计算机','233');

insert into course values('4-7','数学','504');

insert into course values('4-1','音乐','302');

+-----+--------------+-----+
| cno | cname        | tno |
+-----+--------------+-----+
| 2-3 | 计算机    | 233 |
| 3-2 | 电子工程 | 407 |
| 4-1 | 音乐       | 302 |
| 4-7 | 数学       | 407 |
| 5-4 | 电子工程 | 504 |
+-----+--------------+-----+

''

insert into score values('03','2-3','76');

insert into score values('04','3-2','89');

insert into score values('05','3-2','87');

insert into score values('06','4-7','80');

insert into score values('07','4-7','85');

insert into score values('08','3-2','77');

insert into score values('09','4-1','89');

 sno | cno | degree |
+-----+-----+--------+
| 03  | 2-3 | 76     |
| 04  | 3-2 | 89     |
| 05  | 3-2 | 87     |
| 06  | 4-7 | 80     |
| 07  | 4-7 | 85     |
| 08  | 3-2 | 77     |
| 09  | 4-1 | 89     |
+-----+-----+--------