-- 中级 SQL
-- 4.2 视图
create view faculty as
    select ID,name,dept_name
    from instructor;

--- 4.2.2 在查询中用视图
--- Physics 系在2009年秋季学期开设的所有课程段，以及每个课程段在哪里上课
create view physics_fall_2009 as
    select course.course_id, sec_id, building, room_number
    from course,section
    where course.course_id = section.course_id
        and course.dept_name = 'Physics'
        and section.semester = 'Fall'
        and section.year = '2009';

--- 2009年秋季学期在 Waston 开设的 Physics 课程
select course_id
from physics_fall_2009
where building = 'Watson';


--- 每个系中所有教师的工资总和
create view departments_total_salary(dept_name, total_salary) as
    select dept_name, sum(salary)
    from instructor
    group by dept_name;

