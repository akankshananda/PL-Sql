CREATE OR REPLACE PROCEDURE add_student(
    p_id NUMBER,
    p_name VARCHAR2,
    p_department VARCHAR2,
    p_marks NUMBER
)
AS
BEGIN
    INSERT INTO students
    VALUES (p_id, p_name, p_department, p_marks);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student added successfully');
END;
/
BEGIN
    add_student(106, 'Neha', 'CSE', 88);
END;
/
SELECT * FROM students;