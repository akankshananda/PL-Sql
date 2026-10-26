DECLARE
    CURSOR student_cursor IS
        SELECT student_id, student_name, marks
        FROM students;

BEGIN
    FOR student IN student_cursor LOOP
        DBMS_OUTPUT.PUT_LINE(
            student.student_id || ' - ' ||
            student.student_name || ' - ' ||
            student.marks
        );
    END LOOP;
END;
/