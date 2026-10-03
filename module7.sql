-- Q1
SELECT name
FROM student
WHERE class = 4 AND major = 'CS';

-- Q2
SELECT course_number
FROM section
WHERE instructor = 'King' AND year IN (07,08);

-- Q3
SELECT grade
FROM grade_report
WHERE student_number = 8;

-- Q4
SELECT prerequisite_number
FROM prerequisite 
WHERE course_number = 'CS3380';

-- Q5
SELECT(*)
FROM course
WHERE department = 'CS';

-- Q6
SELECT course_number, semester, year
    SELECT COUNT(*) 
    FROM grade_report
    WHERE grade_report.section_identifier = section.section_identifier
FROM section 
WHERE instructor = 'King';

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
SELECT name
FROM student, grade_report, course, section 
WHERE grade = 'A' AND course_number = 'CS1310' AND grade_report.student_number = student.student_number AND grade_report.section_identifier = section.section_identifier AND section.course_number = course.course_number; 

-- Q10
SELECT COUNT(*)
FROM student;
    
-- Q11
SELECT MAX(credit_hours)
FROM course;

-- Q12
SELECT COUNT(*)
FROM course
WHERE credit_hours = 3;

-- Q13
SELECT course_number
FROM section
WHERE instructor = 'Anderson';

-- Q14
SELECT course_name
FROM course, section
WHERE instructor = 'Anderson' AND section.course_number = course.course_number;

-- Q15
SELECT count (*) 
FROM grade_report, section
WHERE grade = 'A' AND course_number = 'math2410' AND grade_report.section_identifier = section.section_identifier;
