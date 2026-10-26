CREATE OR REPLACE PROCEDURE find_student(
    p_id NUMBER
)
AS
    v_name students.student_name%TYPE;
    v_department students.department%TYPE;
    v_marks students.marks%TYPE;
BEGIN
    SELECT student_name, department, marks
    INTO v_name, v_department, v_marks
    FROM students
    WHERE student_id = p_id;

    DBMS_OUTPUT.PUT_LINE('Student Found');
    DBMS_OUTPUT.PUT_LINE('Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Department: ' || v_department);
    DBMS_OUTPUT.PUT_LINE('Marks: ' || v_marks);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Student not found');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred');
END;
/
BEGIN
    find_student(101);
END;
/
BEGIN
    find_student(999);
END;
/