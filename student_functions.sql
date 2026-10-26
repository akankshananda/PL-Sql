CREATE OR REPLACE FUNCTION get_grade(
    p_marks NUMBER
)
RETURN VARCHAR2
AS
BEGIN
    IF p_marks >= 90 THEN
        RETURN 'A+';
    ELSIF p_marks >= 80 THEN
        RETURN 'A';
    ELSIF p_marks >= 70 THEN
        RETURN 'B';
    ELSIF p_marks >= 50 THEN
        RETURN 'C';
    ELSE
        RETURN 'F';
    END IF;
END;
/
SELECT student_id,
       student_name,
       marks,
       get_grade(marks) AS grade
FROM students;