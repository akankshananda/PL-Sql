CREATE OR REPLACE PROCEDURE update_student(
    p_id NUMBER,
    p_name VARCHAR2,
    p_department VARCHAR2,
    p_marks NUMBER
)
AS
BEGIN
    UPDATE students
    SET student_name = p_name,
        department = p_department,
        marks = p_marks
    WHERE student_id = p_id;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student updated successfully');
END;
/

CREATE OR REPLACE PROCEDURE delete_student(
    p_id NUMBER
)
AS
BEGIN
    DELETE FROM students
    WHERE student_id = p_id;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student deleted successfully');
END;
/
BEGIN
    update_student(101, 'Rahul Sharma', 'CSE', 90);
END;
/
SELECT * FROM students;
BEGIN
    delete_student(107);
END;
/
SELECT * FROM students;
