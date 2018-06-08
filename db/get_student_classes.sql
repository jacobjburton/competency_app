select classes.classname, classes.classid from classes
left outer join studentclasses on classes.classid = studentclasses.classid
left outer join students on students.studentid = studentclasses.studentid
where students.studentid = $1
