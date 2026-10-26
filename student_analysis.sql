CREATE OR REPLACE PROCEDURE student_analysis
AS
    v_total NUMBER;
    v_average NUMBER;
    v_highest NUMBER;
    v_lowest NUMBER;
    v_passed NUMBER;
    v_percentage NUMBER;
BEGIN
    SELECT COUNT(*),
           AVG(marks),
           MAX(marks),
           MIN(marks)
    INTO v_total, v_average, v_highest, v_lowest
    FROM students;

    SELECT COUNT(*)
    INTO v_passed
    FROM students
    WHERE marks >= 50;

    v_percentage := (v_passed / v_total) * 100;

    DBMS_OUTPUT.PUT_LINE('===== DataX Student Analysis =====');
    DBMS_OUTPUT.PUT_LINE('Total Students: ' || v_total);
    DBMS_OUTPUT.PUT_LINE('Average Marks: ' || ROUND(v_average, 2));
    DBMS_OUTPUT.PUT_LINE('Highest Marks: ' || v_highest);
    DBMS_OUTPUT.PUT_LINE('Lowest Marks: ' || v_lowest);
    DBMS_OUTPUT.PUT_LINE('Passed Students: ' || v_passed);
    DBMS_OUTPUT.PUT_LINE('Pass Percentage: ' || ROUND(v_percentage, 2) || '%');
END;
/
BEGIN
    student_analysis;
END;
/