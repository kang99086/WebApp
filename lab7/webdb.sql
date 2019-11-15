DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS Department;

CREATE TABLE student(
  student_id  int not null  primary key,
  name  varchar(15) not null,
  year  smallint  not null  default 1,
  dept_no int not null,
  major varchar(25)
);

CREATE TABLE Department(
  dept_no int auto_increment primary key,
  dept_name varchar(25)  UNIQUE KEY,
  office  varchar(25) not null,
  office_tel  varchar(13)
);

alter table student modify major varchar(30);

alter table student add gender varchar(20);

alter table student drop gender;

insert into student (student_id,name,year,dept_no,major)
values
(20070002, 'Jane Smith', 3, 4, 'Business Administration'),
(20060001, 'Ashley Jackson', 4, 4, 'Business Administration'),
(20030001, 'Liam Johnson', 4, 2, 'Electrical Engineering'),
(20040003, 'Jacob Lee', 3, 2, 'Electrical Engineering'),
(20060002, 'Noah Kim', 3, 1, 'Computer Science'),
(20100002, 'Ava Lim', 3, 4, 'Business Administration'),
(20110001, 'Emma Watson', 2, 1, 'Computer Science'),
(20080003, 'Lisa Maria', 4, 3, 'Law'),
(20040002, 'Jacob William', 4, 5, 'Law'),
(20070001, 'Emily Rose', 4, 4, 'Business Administration'),
(20100001, 'Ethan Hunt', 3, 4, 'Business Administration'),
(20110002, 'Jason Mraz', 2, 1, 'Electrical Engineering'),
(20030002, 'John Smith', 5, 1, 'Computer Science'),
(20070003, 'Sophia Park', 4, 3, 'Law'),
(20070007, 'James Michael', 2, 4, 'Business Administration'),
(20100003, 'James Bond', 3, 1, 'Computer Science'),
(20070005, 'Olivia Madison', 2, 5, 'English Language and Literature');

insert into Department(dept_name,office,office_tel)
values
('Computer Science', 'Science Building 101', '02-3290-0123'),
('Electrical Engineering', 'Engineering Building 401', '02-3290-2345'),
('Law', 'Law Building 201', '02-3290-7896'),
('Business Administration', 'Business Building 104', '02-3290-1112'),
('English Language and Literature', 'Language Building 303', '02-3290-4412');

update student
SET major='Electronics Engineering'
where major='Electrical Engineering';

update Department
SET dept_name='Electronics Engineering'
where dept_name='Electrical Engineering';

insert into Department(dept_name,office,office_tel)
values
('Special Education','Education Building 403','02-3290-2347');

update student
set dept_no='6',major='Speical Education'
where name='Emma Watson';

delete from student where name in('John Smith', 'Jason Mraz');

select student_id,year,major from student where major='Computer Science';

select * from student where year='3';

select * from student where year='1' or year='2';

select * from student where student_id LIKE '%2007%';

select * from student order by student_id;

select major,avg(year) from student group by major having avg(year)>=3;

select * from student where student_id LIKE '%2007%' limit 2;
