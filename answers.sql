SET SERVEROUTPUT ON;

CREATE TABLE Employee (
    EmpID NUMBER(5),
    EmpName VARCHAR2(20),
    DeptID NUMBER(5)
);

CREATE OR REPLACE TRIGGER emp_insert_trigger
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('New employee record inserted successfully.');
END;
/

INSERT INTO Employee VALUES (101, 'Arun', 10);

COMMIT;
