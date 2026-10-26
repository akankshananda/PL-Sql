CREATE OR REPLACE PROCEDURE department_analysis
AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('===== Department Performance =====');

    FOR dept IN (
        SELECT department,
               COUNT(*) AS total_students,
               ROUND(AVG(marks), 2) AS average_marks
        FROM students
        GROUP BY department
        ORDER BY department
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            dept.department || ' - Students: ' ||
            dept.total_students || ' - Average: ' ||
            dept.average_marks
        );
    END LOOP;
END;
/
BEGIN
    department_analysis;
END;
/