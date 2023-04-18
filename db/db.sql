drop table if exists course;
drop table if exists teacher;

create table course
(
    id serial primary key,
    teacher_id INT not null,
    name varchar(140) not null,
    time TIMESTAMP default now(),
    description varchar(2000),
    format varchar(30),
    structure varchar(200),
    duration varchar(30),
    price integer,
    language varchar(30),
    level varchar(30)
);

create table teacher
(
    id serial primary key,
    name varchar(140) not null,
    picture_url varchar(100),
    profile varchar(2000)
);

insert into course 
    (id, teacher_id, name, time)
values(1, 1, 'First course', '2022-01-17 05:40:00');

insert into course 
    (id, teacher_id, name, time)
values(2, 1, 'Second course', '2022-01-18 05:45:00');

insert into teacher 
    (id, name, picture_url, profile)
values(1, 'nihao', 'https:://www.baidu.com', 'best teacher');

insert into teacher 
    (id, name, picture_url, profile)
values(2, 'wohao', 'https:://www.google.com', 'best teacher 2');
