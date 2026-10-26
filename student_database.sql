CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    student_name VARCHAR2(50),
    department VARCHAR2(20),
    marks NUMBER(3)
);

INSERT INTO students VALUES (101, 'Rahul', 'CSE', 85);
INSERT INTO students VALUES (102, 'Simran', 'IT', 92);
INSERT INTO students VALUES (103, 'Aman', 'ECE', 68);
INSERT INTO students VALUES (104, 'Priya', 'CSE', 76);
INSERT INTO students VALUES (105, 'Karan', 'IT', 45);

COMMIT;

SELECT * FROM students;