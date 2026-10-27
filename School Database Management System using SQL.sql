-- انشاء قاعدة بيانات المدرسة
CREATE database excllence_school;

-- استخدم قاعدة البيانات
USE excllence_school;

-- انشاء جدول الطلاب
create table students(
id INT PRIMARY KEY,
student_name varchar(100),
birth_date DATE,
gender char(1),
entrollment_date date,
email varchar(100),
academic_level int,
track varchar(100),
gpa decimal(5,2));

-- انشاء جدول المعلمين
create table teachers (
id  int primary key,
teacher_name varchar(100),
birth_date date,
gender char(1),
email varchar(100),
office_number varchar(20));

-- انشاء جدول المواد
create table subjects(
id int primary key,
subject_name varchar(100));

-- عرض جميع الجداول الموجودة في قاعدة البيانات
show tables;

-- ادخال بيانات الطلاب
insert into students(
id, student_name, birth_date, gender, entrollment_date, email, academic_level, track, gpa)
values
(1, 'Ahmed Ali' , '2008-01-15', 'M', '2024-09-01', 'ahmed@example.com', 1, 'Scientific', 88.50),
(2, 'salem saud', '2007-02-25', 'M', '2024-05-12', 'salem@example.com', 5, 'Humanities', 90.00),
(3, 'sara mohammed','2006-03-17', 'F', '2024-06-22', 'sara@example.com', 4, 'Scientific', 94.53),
(4, 'reem ahmed', '2007-05-08', 'F', '2024-08-16', 'reem@example.com',2, 'Scientific', 90.65),
(5, 'Khalid Omar', '2007-07-12', 'M', '2024-11-01', 'khalid@example.com', 2, 'Scientific', 82.50),
(6, 'Noura Hassan', '2008-02-18', 'F', '2024-04-01', 'noura@example.com', 1, 'Humanities', 90.00),
(7, 'Ahmed Mohsen', '2007-09-14', 'M', '2024-05-01', 'ahmed@example.com', 5, 'Scientific', 97.40),
(8, 'Reema Salem', '2007-10-10', 'F', '2024-03-19', 'reema@example.com', 3, 'Scientific', 99.50),
(9, 'Norah Abdu', '2007-02-28', 'F', '2024-12-11', 'norah@example.com', 2, 'Humanities', 91.25),
(10, 'Saud Abdullah', '2007-01-26', 'M', '2024-06-26', 'saud@example.com', 5, 'Humanities', 99.98);

-- ادخال بيانات المعلمين 
insert into teachers(
id, teacher_name, birth_date, gender, email, office_number)
values
(1, 'ali saber', '1984-03-05', 'M', 'ali@example.com', '105'),
(2, 'mohammed rami', '1985-08-18', 'M', 'mohammed@example.com', '103'),
(3, 'fatema yahia', '1991-04-26', 'F', 'fatema@example.com', '108'),
(4, 'Reem Saeed', '1995-09-09', 'F', 'reem@example.com', '109'),
(5, 'Mohammed abdullah', '1986-11-07', 'M', 'mohammed@example.com', '101')
;

-- ادخال بيانات المواد 
insert into subjects(
id, subject_name)
values
(1, 'math'),
(2, 'physics'),
(3, 'arabic'),
(4, 'english');

-- عرض جميع الطلاب 
select* from students;

-- عرض جميع المعلمين
select* from teachers;

-- عرض جميع المواد 
select* from subjects;

-- عرض الطلاب مرتبين حسب الاسم تصاعديا
select* 
from students 
order by student_name ASC;

-- عرض اسم الطالب باستخدام اسم مستعار
SELECT student_name AS Name
FROM students;

-- تعديل البريد الالكتروني للطالب رقم 5
update students
set email = 'newemail@example.com'
where id = 5;

-- التاكد من تعديل بيانات الطالب
select*
from students
where id = 5;

-- تعديل رقم مكتب المعلم رقم 3 
update teachers
set office_number = '205'
where id = 3;

-- التاكد من التعديل 
select*
from teachers
where id = 3;

-- تغيير اسم جدول المواد 
rename table subjects to school_subjects;

-- عرض الجداول للتاكد من تغيير الاسم
show tables;
