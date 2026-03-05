SELECT * FROM mahmod.courses;
SELECT * FROM mahmod.enrollments;
SELECT * FROM mahmod.students;

-- find the student id and the courses they offer
select enrollments.student_id, courses.course_name
from enrollments join courses
on enrollments.course_id = courses.course_id;

-- find students name and course id
select students.name, enrollments.course_id
from students join enrollments
on students.student_id = enrollments.student_id;

insert into students 
values ("4", "Mahmod", "20");

-- find all students, their ages and their corresponding course_id
select students.name, students.age, enrollments.course_id
from students left join enrollments
on students.student_id = enrollments.student_id;

-- find all students, their ages and their corresponding course_id and course name
select students.name, students.age, enrollments.course_id, courses.course_name
from students left join enrollments
on students.student_id = enrollments.student_id
left join courses
on courses.course_id = enrollments.course_id;




