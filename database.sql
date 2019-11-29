drop database library;
create database library;
use library;

create table users(id int primary key Auto_increment, name varchar(100),email varchar(20) Unique ,phone bigint,password varchar(50),role varchar(40));
insert into users values(id,"Priyanka","pm037912@gmail.com",8269891072,"12345678","Owner");
insert into users values(id,"Meenal","meenal@gmail.com",8269832072,"12345","member");
insert into users values(id,"Mayank","mayank@gmail.com",8269832070,"12345898","member");
insert into users values(id,"Pratik","Pratik@gmail.com",8269821072,"12445","member");



create table payments(id int primary key Auto_increment,userid int,amount int, type varchar(20), transaction_time Time(0) Not Null,nextpayment_duedate date,foreign key(userid) references users(id));



create table books(id int primary key ,name varchar(100),author varchar(100),subject varchar(100),price float,isbn varchar(20) Unique);
insert into books values(03,"Operating System Internals","Galvin","Operating System",254.65,"9873459811830");
insert into books values(67,"Most effective c++","Graddy Booch","C++",834.65,"0174559811830");
insert into books values(28,"Data Structures","Pradeep Kumar","Data stucture",744.65,"0174528511830");
insert into books values(04,"Data Structures and its Applications","Agrawaal","Data stucture",604.65,"0174525511830");


create table copies(id int primary key ,bookid int,rack int,status varchar(20),Foreign key(bookid) References books(id));
insert into copies values(01,03,2,"Available");
insert into copies values(02,67,1,"Available");
insert into copies values(03,28,4,"Not Available");
--issuerecord
create table issuerecord(id int primary key Auto_increment,copyid int,memberid int,
                         issue_date date,return_duedate date,return_date date,fine_amount float,
                         Foreign key(copyid) References copies(id),Foreign key(memberid) References users(id));
