create table students (
    studentid serial primary key,
    firstname text,
    lastname text
);

create table addresses (
    addressid serial primary key,
    address varchar(80),
    city text,
    state text,
    zip integer,
    studentid integer references students (studentid)
);

create table teachers (
    teacherid serial primary key,
    firstname text,
    lastname text
);

create table classes (
    classid serial primary key,
    classname varchar(40),
    teacherid integer references teachers (teacherid)
);

create table studentclasses (
    classid integer references classes (classid),
    studentid integer references students (studentid)
);