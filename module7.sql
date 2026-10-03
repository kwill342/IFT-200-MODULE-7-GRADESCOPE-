-- Q1
-- Q2
-- Q3
-- Q4
-- Q5
-- Q6
-- Q7
SELECT 
    student.student_number, 
    student.name, 
    course.course_name, 
    course.course_number, 
    course.credit_hours, 
    section.semester, 
    section.year, 
    grade_report.grade
FROM 
    student, course, section, grade_report
WHERE 
    student.class = 2 
    AND student.major = 'CS'
    AND student.student_number = grade_report.student_number
    AND grade_report.section_identifier = section.section_identifier
    AND section.course_number = course.course_number;
-- Q8
SELECT section.course_number
FROM section, grade_report
WHERE section.semester = 'Fall' 
  AND section.year = 08 
  AND grade_report.student_number = 8
  AND section.section_identifier = grade_report.section_identifier;
-- Q9
-- Q10
-- Q11
SELECT MAX(credit_hours)
FROM course;
-- Q12
SELECT SUM(credit_hours)
FROM course;
-- Q13
SELECT COUNT(*)
FROM course
WHERE credit_hours = 3;
-- Q14
SELECT course_name
FROM course, section
WHERE instructor = 'Anderson' AND section.course_number = course.course_number;
-- Q15
SELECT count (*) 
FROM grade_report, section
WHERE grade = A AND course_number = 'math2410' AND grade_report.section_identifier = section.section_indentifier;
