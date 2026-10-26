CREATE OR REPLACE TRIGGER check_student_marks
BEFORE INSERT OR UPDATE ON students
FOR EACH ROW
BEGIN
    IF :NEW.marks < 0 OR :NEW.marks > 100 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Marks must be between 0 and 100');
    END IF;
END;
/
INSERT INTO students
VALUES (107, 'Riya', 'IT', 79);

COMMIT;
INSERT INTO students
VALUES (108, 'Test', 'CSE', 120);