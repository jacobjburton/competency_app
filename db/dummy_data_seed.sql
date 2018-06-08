insert into students (firstname, lastname)
values ('Jacob', 'Burton'), --1--
('Janna', 'deWife'), --2--
('Brookyln' 'deBebe'), --3--
('Dan', 'Lubbers'), --4--
('Justin', 'Reynolds'), --5--
('Tim', 'Cowley'); --6--

insert into addresses (address, city, state, zip, studentid)
values ('915 E 820 N #19', 'Provo', 'Utah', 84606, 1),
('12345 SW Millview Ct', 'Tigard', 'Oregon', 97330, 2),
('15150 NW Orchard View Rd', 'McMinnville', 'Oregon', 91728, 3),
('934857 Kentucky Rd', 'Louisville', 'Kentucky', 12312, 4),
('12364 That One Rd', 'Kaysville', 'Utah', 83029, 5),
('666 Place in Idaho St', 'Boise', 'Idaho', 66666, 6);

insert into teachers (firstname, lastname)
values ('Teachy', 'McTeacherson'), --1--
('Lucifer', 'deDevil'), --2--
('Guy', 'Teach'); --3--

insert into classes (classname, teacherid)
values ('Biology', 1), --1--
('Ethics', 2), --2--
('Physics', 3), --3--
('Sex Ed', 1), --4--
('Religious Studies', 2), --5--
('Chemistry', 3); --6--

insert into studentclasses (classid, studentid)
values (1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

